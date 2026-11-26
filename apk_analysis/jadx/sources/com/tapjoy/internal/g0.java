package com.tapjoy.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Bundle;
import com.tapjoy.TapjoyLog;

/* JADX INFO: loaded from: classes4.dex */
public final class g0 {
    public final Context a;

    public g0(Context context) {
        this.a = context;
    }

    public final boolean a() {
        Context context = this.a;
        if (context == null) {
            return false;
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(this.a.getPackageName(), 128);
            applicationInfo.getClass();
            Bundle bundle = applicationInfo.metaData;
            if (bundle != null) {
                return bundle.getBoolean("tapjoy.TJC_OPTION_ENABLE_REGULATIONS", false);
            }
        } catch (Exception e) {
            TapjoyLog.e("Error reading regulations request flag from manifest: " + e.getMessage());
        }
        return false;
    }
}
