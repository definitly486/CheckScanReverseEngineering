package com.my.tracker.obfuscated;

import android.content.Context;
import com.huawei.hms.ads.identifier.AdvertisingIdClient;

/* JADX INFO: loaded from: classes4.dex */
public final class y0 {
    private x0 a = null;
    protected boolean b = false;

    private static x0 b(Context context) {
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context);
            String id = advertisingIdInfo.getId();
            b3.a("HuaweiAdInfoDataProvider: oaid: " + id);
            boolean zIsLimitAdTrackingEnabled = advertisingIdInfo.isLimitAdTrackingEnabled() ^ true;
            b3.a("HuaweiAdInfoDataProvider: oaid tracking enabled: " + zIsLimitAdTrackingEnabled);
            return new x0(id, zIsLimitAdTrackingEnabled);
        } catch (Throwable th) {
            b3.b("HuaweiAdInfoDataProvider: failed to get huawei AId", th);
            return null;
        }
    }

    public x0 a(Context context) {
        if (!this.b) {
            this.a = b(context);
            this.b = true;
        }
        return this.a;
    }
}
