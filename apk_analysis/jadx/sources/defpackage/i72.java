package defpackage;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.widget.Toast;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.core.content.ContextCompat;
import androidx.webkit.internal.AssetHelper;
import com.warefly.checkscan.R;

/* JADX INFO: loaded from: classes.dex */
public final class i72 {

    public static class a extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            String dataString = intent.getDataString();
            ((ClipboardManager) context.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("Link", dataString));
            Toast.makeText(context, "Скопировано " + dataString, 0).show();
        }
    }

    public static CustomTabsIntent a(Context context, String str) {
        PendingIntent activity;
        CustomTabsIntent.Builder builder = new CustomTabsIntent.Builder();
        builder.enableUrlBarHiding();
        builder.setToolbarColor(ContextCompat.getColor(context, R.color.white));
        builder.setSecondaryToolbarColor(ContextCompat.getColor(context, R.color.white));
        builder.setCloseButtonIcon(BitmapFactory.decodeResource(context.getResources(), R.drawable.ic_close_blue));
        builder.setShowTitle(true);
        builder.setStartAnimations(context, R.anim.fade_in, R.anim.fade_out);
        builder.setExitAnimations(context, R.anim.fade_in, R.anim.fade_out);
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(context.getResources(), R.drawable.ic_share);
        Intent intent = new Intent("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.TEXT", str);
        intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
        intent.setPackage(context.getPackageName());
        int i = Build.VERSION.SDK_INT;
        if (i < 31) {
            activity = PendingIntent.getActivity(context, 0, intent, 0);
        } else {
            activity = i >= 31 ? PendingIntent.getActivity(context, 0, intent, 67108864) : PendingIntent.getActivity(context, 0, intent, 134217728);
        }
        builder.setActionButton(bitmapDecodeResource, "Поделиться", activity);
        builder.addDefaultShareMenuItem();
        Intent intent2 = new Intent(context, (Class<?>) a.class);
        intent2.setPackage(context.getPackageName());
        builder.addMenuItem("Скопировать", PendingIntent.getBroadcast(context, 0, intent2, 67108864));
        return builder.build();
    }

    public static void b(Context context, String str) {
        try {
            try {
                a(context, str).launchUrl(context, Uri.parse(str));
            } catch (Exception unused) {
                context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
            }
        } catch (Exception unused2) {
            Toast.makeText(context, context.getString(R.string.custom_tabs_no_activity_exception, str), 1).show();
        }
    }
}
