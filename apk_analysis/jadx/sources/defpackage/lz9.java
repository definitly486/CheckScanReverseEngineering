package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class lz9 extends y14 {
    public HashMap o;

    public static void V(Context context, HashMap map) {
        String id;
        ContentResolver contentResolver;
        y14.r(null, "GoogleAIdDataProvider: Send google AId");
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context);
            id = advertisingIdInfo.getId();
            try {
                y14.r(null, "GoogleAIdDataProvider: Google AId - " + id);
                boolean zIsLimitAdTrackingEnabled = advertisingIdInfo.isLimitAdTrackingEnabled();
                int i = !zIsLimitAdTrackingEnabled ? 1 : 0;
                y14.r(null, "GoogleAIdDataProvider: Ad tracking enabled - " + zIsLimitAdTrackingEnabled);
                map.put("advertising_id", id);
                map.put("advertising_tracking_enabled", i + "");
            } catch (Throwable th) {
                th = th;
                fg.e(null, new StringBuilder("GoogleAIdDataProvider: Failed to send google AId - "), th);
            }
        } catch (Throwable th2) {
            th = th2;
            id = null;
        }
        if (((id == null || id.length() == 0) ? false : !id.matches("^[0]+(-[0]+)+$")) || (contentResolver = context.getContentResolver()) == null) {
            return;
        }
        String string = Settings.Secure.getString(contentResolver, "android_id");
        if (TextUtils.isEmpty(string)) {
            return;
        }
        map.put("android_id", string);
    }

    public final synchronized Map U(Context context) {
        if (w4a.b()) {
            y14.r(null, "GoogleAIdDataProvider: You must not call collectData method from main thread");
            return new HashMap();
        }
        if (this.o == null) {
            HashMap map = new HashMap();
            this.o = map;
            V(context, map);
        }
        return new HashMap(this.o);
    }
}
