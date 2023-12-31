﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Net;
using System.Net.Http;
using System.Threading;
using System.Threading.Tasks;
using Android.App;
using Android.Appwidget;
using Android.Content;
using Android.Util;
using Android.Widget;
using Newtonsoft.Json.Linq;

namespace HelloAppWidget
{
	[BroadcastReceiver(Label = "HellApp Widget")]
	[IntentFilter(new string[] { "android.appwidget.action.APPWIDGET_UPDATE" })]
	// The "Resource" file has to be all in lower caps
	[MetaData("android.appwidget.provider", Resource = "@xml/appwidgetprovider")]
	public class AppWidget : AppWidgetProvider
	{
		private static string AnnouncementClick = "AnnouncementClickTag";

		/// <summary>
		/// This method is called when the 'updatePeriodMillis' from the AppwidgetProvider passes,
		/// or the user manually refreshes/resizes.
		/// </summary>
		public override void OnUpdate(Context context, AppWidgetManager appWidgetManager, int[] appWidgetIds)
		{
			var me = new ComponentName(context, Java.Lang.Class.FromType(typeof(AppWidget)).Name);
			appWidgetManager.UpdateAppWidget(me, BuildRemoteViews(context, appWidgetIds));
		}

		private RemoteViews BuildRemoteViews(Context context, int[] appWidgetIds)
		{
			// Retrieve the widget layout. This is a RemoteViews, so we can't use 'FindViewById'
			var widgetView = new RemoteViews(context.PackageName, Resource.Layout.Widget);

			SetTextViewText(widgetView);
			RegisterClicks(context, appWidgetIds, widgetView);

			return widgetView;
		}

		private async Task<string> GetDataAsync()
        {
			var httpClient = new HttpClient();
			string text = await httpClient.GetStringAsync("https://www.hvakosterstrommen.no/api/v1/prices/2023/10-17_NO2.json");
			return text;
		}

		private string TestAsync()
        {
			var task = GetDataAsync();
			var result = task.Result;
			return result;
		}

		private string GetJSON(string zone)
        {
			zone = zone.ToUpper();
            var httpWebRequest = (HttpWebRequest)WebRequest.Create("https://www.hvakosterstrommen.no/api/v1/prices/"+DateTime.Now.Year+"/"+DateTime.Now.Month+"-"+DateTime.Now.Day+"_"+zone+".json");

            httpWebRequest.ContentType = "application/json";
            httpWebRequest.Method = "GET";
            httpWebRequest.UserAgent = "bolle";
            var httpResponse = (HttpWebResponse)httpWebRequest.GetResponse();

            using (var streamReader = new StreamReader(httpResponse.GetResponseStream()))
            {
                var result = streamReader.ReadToEnd();
                return result;
				//JObject jObj = JObject.Parse(result);
                //JToken data = jObj.SelectToken("properties.timeseries[0].data.instant.details");

                //double temp = data.Value<double>("air_temperature");//key name står i " " - getting key.value
            }
        }


        private void SetTextViewText(RemoteViews widgetView)
		{
			var data = GetJSON("no1");
			//var data = TestAsync();
			int test = data.Length;
			JArray ja=JArray.Parse(data);

			//foreach (JObject item in ja) // <-- Note that here we used JObject instead of usual JProperty
			//{
			//	string price = item.GetValue("NOK_per_kWh").ToString();
			//	//string url = item.GetValue("url").ToString();
			//	// ...
			//}
			//var value = ja[0].Values()
			JToken jt = ja[DateTime.Now.Hour];//hente et token, det vil si en time m prisinfo
			double pris= jt.Value<double>("NOK_per_kWh");
			pris=pris*1.24;
			pris=Math.Round(pris, 2);

			//foreach (var item in ja)
			//{
				
			//	var name = (string)item["NOK_per_kWh"];
			//}


			//try
			//{
			//	JObject jObj = JObject.Parse(data);//krasjer
			//}
			//catch(Exception ex)
			//         {

			//         }



			//JToken jt = jObj.SelectToken("6");

			//var httpWebRequest = (HttpWebRequest)WebRequest.Create("https://www.hvakosterstrommen.no/api/v1/prices/2023/10-17_NO2.json");

			//httpWebRequest.ContentType = "application/json";
			//httpWebRequest.Method = "GET";
			//httpWebRequest.UserAgent = "bolle";
			//var httpResponse = (HttpWebResponse)httpWebRequest.GetResponse();

			//using (var streamReader = new StreamReader(httpResponse.GetResponseStream()))
			//{
			//    var result = streamReader.ReadToEnd();
			//    JObject jObj = JObject.Parse(result);
			//    //JToken data = jObj.SelectToken("properties.timeseries[0].data.instant.details");

			//    //double temp = data.Value<double>("air_temperature");//key name står i " " - getting key.value
			//}




			widgetView.SetTextViewText(Resource.Id.widgetMedium, pris.ToString()); ;
			widgetView.SetTextViewText(Resource.Id.widgetSmall, string.Format("{0:H:mm:ss}", DateTime.Now));
			//widgetView.SetTextViewText(Resource.Id.widgetMedium, pris.ToString());
		}

		private void RegisterClicks(Context context, int[] appWidgetIds, RemoteViews widgetView)
		{
			var intent = new Intent(context, typeof(AppWidget));
			intent.SetAction(AppWidgetManager.ActionAppwidgetUpdate);
			intent.PutExtra(AppWidgetManager.ExtraAppwidgetIds, appWidgetIds);

			// Register click event for the Background
			var piBackground = PendingIntent.GetBroadcast(context, 0, intent, PendingIntentFlags.UpdateCurrent);
			widgetView.SetOnClickPendingIntent(Resource.Id.widgetBackground, piBackground);

			// Register click event for the Announcement-icon - removed the icon
			//widgetView.SetOnClickPendingIntent(Resource.Id.widgetAnnouncementIcon, GetPendingSelfIntent(context, AnnouncementClick));
		}

		private PendingIntent GetPendingSelfIntent(Context context, string action)
		{
			var intent = new Intent(context, typeof(AppWidget));
			intent.SetAction(action);
			return PendingIntent.GetBroadcast(context, 0, intent, 0);
		}

		/// <summary>
		/// This method is called when clicks are registered.
		/// </summary>
		public override void OnReceive(Context context, Intent intent)
		{
			base.OnReceive(context, intent);

			// Check if the click is from the "Announcement" button
			if (AnnouncementClick.Equals(intent.Action))
			{
				var pm = context.PackageManager;
				try
				{
					var packageName = "com.android.settings";
					var launchIntent = pm.GetLaunchIntentForPackage(packageName);
					context.StartActivity(launchIntent);
				}
				catch
				{
					// Something went wrong :)
				}
			}
		}
	}
}
