package com.tapjoy.internal;

import com.tapjoy.TJApiDecoded;
import com.tapjoy.TJAppInfo;
import com.tapjoy.TJTracking;

/* JADX INFO: loaded from: classes4.dex */
public final class z0 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;
    public final String h;
    public final String i;
    public final q1 j;

    public z0() {
        q1 q1Var = new q1();
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = q1Var;
        this.a = TJApiDecoded.INSTANCE.getAppID();
        TJTracking tJTracking = TJTracking.INSTANCE;
        this.b = tJTracking.getUnityAdsIdfi();
        this.c = tJTracking.getLevelPlayAuid();
        TJAppInfo tJAppInfo = TJAppInfo.INSTANCE;
        this.d = tJAppInfo.getAppVersion();
        this.e = tJAppInfo.getPkgId();
        this.f = tJAppInfo.getPkgVer();
        Integer pkgRev = tJAppInfo.getPkgRev();
        this.g = pkgRev != null ? pkgRev.toString() : null;
        this.h = tJAppInfo.getAppGroupId();
        this.i = tJAppInfo.getAppCategory();
    }
}
