package defpackage;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.TaskStackBuilder;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import com.warefly.checkscan.R;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class vp5 {
    public final Context a;
    public final wj1 b;

    public vp5(Context context, wj1 wj1Var) {
        this.a = context;
        this.b = wj1Var;
    }

    public final void a(int i, String str, String str2, Bitmap bitmap, String str3, Map map, String str4) {
        Intent intentA;
        Context context = this.a;
        String string = context.getString(R.string.default_notification_channel_id);
        string.getClass();
        String string2 = context.getString(R.string.default_notification_channel_name);
        string2.getClass();
        String string3 = context.getString(R.string.default_notification_channel_description);
        string3.getClass();
        NotificationChannel notificationChannel = new NotificationChannel(string, string2, 3);
        notificationChannel.setDescription(string3);
        NotificationManager notificationManager = (NotificationManager) context.getSystemService(NotificationManager.class);
        if (notificationManager != null) {
            notificationManager.createNotificationChannel(notificationChannel);
        }
        NotificationManagerCompat notificationManagerCompatFrom = NotificationManagerCompat.from(context);
        String str5 = str4 == null ? "default" : str4;
        if (str4 == null) {
            str4 = "default";
        }
        if (str4.equals("default")) {
            new kd.u.a.C0292a(i, new b36("Open", Long.valueOf(System.currentTimeMillis()))).a();
        } else {
            new zd(i, new b36("Open", Long.valueOf(System.currentTimeMillis()))).a();
        }
        wj1 wj1Var = this.b;
        if (str3 == null) {
            intentA = wj1Var.a();
        } else {
            Intent intent = new Intent();
            intent.addFlags(67108864);
            intent.setAction("android.intent.action.VIEW");
            intent.setData(Uri.parse(str3));
            intentA = intent.resolveActivity(context.getPackageManager()) == null ? wj1Var.a() : intent;
        }
        intentA.setFlags(603979776);
        for (Map.Entry entry : map.entrySet()) {
            String str6 = (String) entry.getKey();
            String str7 = (String) entry.getValue();
            intentA.putExtra(str6, str7);
            String string4 = context.getString(R.string.tracking_link_base);
            string4.getClass();
            if (ta8.D(str7, string4, false)) {
                intentA.putExtra("tracking_link", "tracking_link");
            }
        }
        PendingIntent pendingIntent = TaskStackBuilder.create(context).addNextIntent(intentA).getPendingIntent((int) System.currentTimeMillis(), 201326592);
        pendingIntent.getClass();
        NotificationCompat.Builder autoCancel = new NotificationCompat.Builder(context, context.getString(R.string.default_notification_channel_id)).setSmallIcon(R.drawable.ic_notification).setContentTitle(str).setContentText(str2).setContentIntent(pendingIntent).setAutoCancel(true);
        if (bitmap != null) {
            autoCancel.setLargeIcon(bitmap).setStyle(new NotificationCompat.BigPictureStyle().bigPicture(bitmap));
        }
        Notification notificationBuild = autoCancel.build();
        notificationBuild.getClass();
        notificationManagerCompatFrom.notify(str5, i, notificationBuild);
    }
}
