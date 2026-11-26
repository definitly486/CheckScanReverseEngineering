package com.tapjoy.internal;

import android.os.Build;
import com.tapjoy.TJAppInfo;
import com.tapjoy.TJDeviceInfo;
import com.tapjoy.TJDeviceUtils;
import com.tapjoy.TJTracking;
import com.tapjoy.TapjoyConnectCore;

/* JADX INFO: loaded from: classes4.dex */
public final class x0 {
    public final Integer a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;
    public final Boolean h;
    public final Boolean i;
    public final Boolean j;
    public final String k;
    public final Long l;
    public final Long m;
    public final Boolean n;
    public final Boolean o;
    public final Integer p;
    public final Integer q;

    public x0() {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = null;
        this.n = null;
        this.o = null;
        this.p = null;
        this.q = null;
        this.a = TJDeviceInfo.INSTANCE.getDeviceScreenLayoutSize(TapjoyConnectCore.getInstance().getContext());
        TJAppInfo tJAppInfo = TJAppInfo.INSTANCE;
        this.b = tJAppInfo.getInstaller();
        TJTracking tJTracking = TJTracking.INSTANCE;
        this.c = tJTracking.getAppSetID();
        this.d = tJTracking.getAndroidIDIfAllowed();
        this.e = Build.MANUFACTURER;
        Long deviceGpsVersion = tJTracking.getDeviceGpsVersion();
        this.f = deviceGpsVersion != null ? deviceGpsVersion.toString() : null;
        Integer packagedGpsVersion = tJTracking.getPackagedGpsVersion();
        this.g = packagedGpsVersion != null ? packagedGpsVersion.toString() : null;
        this.h = Boolean.valueOf(!tJTracking.isAdvertisingIdAllowed());
        this.i = Boolean.valueOf(tJTracking.getAdIdCheckDisabled());
        this.j = Boolean.valueOf(tJTracking.getLegacyIdFallbackAllowed());
        this.k = tJAppInfo.getPkgSign();
        TJDeviceUtils tJDeviceUtils = TJDeviceUtils.INSTANCE;
        this.l = Long.valueOf(tJDeviceUtils.getAvailableDiskSpace());
        this.m = Long.valueOf(tJDeviceUtils.getTotalDiskSpace());
        this.q = tJAppInfo.getTargetSdkVersion();
        this.p = tJAppInfo.getMinSdkVersion();
        this.n = tJAppInfo.getAdUnitThemeChanged();
        this.o = tJAppInfo.getWebThemeChanged();
    }
}
