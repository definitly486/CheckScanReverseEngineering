package com.tapjoy.internal;

import androidx.core.app.NotificationCompat;
import com.tapjoy.TJAppInfo;
import com.tapjoy.TJTracking;
import com.tapjoy.TJVerifier;
import com.tapjoy.TapjoyConstants;
import com.tapjoy.TapjoyLog;
import com.tapjoy.TapjoyPluginAPI;
import com.tapjoy.TapjoyRevision;

/* JADX INFO: loaded from: classes4.dex */
public final class u1 {
    public final String a;
    public final Boolean b;
    public final String c;
    public final Long d;
    public final String e;
    public final String f;
    public final String g;
    public final String h;
    public final String i;
    public final String j;
    public final v1 k;

    public u1(long j) {
        v1 v1Var = new v1();
        this.a = null;
        this.b = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = v1Var;
        this.c = NotificationCompat.CATEGORY_EVENT;
        this.b = Boolean.valueOf(TapjoyLog.INSTANCE.isLoggingEnabled());
        this.d = Long.valueOf(TJAppInfo.INSTANCE.getInstallTime());
        this.e = TapjoyPluginAPI.getPlugin();
        TJTracking tJTracking = TJTracking.INSTANCE;
        this.f = tJTracking.getTestID();
        this.g = tJTracking.getInstallID();
        this.h = "14.8.0";
        this.i = TapjoyRevision.GIT_REVISION;
        this.j = TapjoyConstants.TJC_BRIDGE_VERSION_NUMBER;
        this.a = TJVerifier.INSTANCE.getVerifier(j);
    }
}
