package com.tapjoy.internal;

import android.content.Context;
import android.os.Build;
import com.tapjoy.TJAppInfo;
import com.tapjoy.TJDeviceInfo;
import com.tapjoy.TJDeviceNetwork;
import com.tapjoy.TapjoyConnectCore;

/* JADX INFO: loaded from: classes4.dex */
public final class j1 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final Float f;
    public final Float g;
    public final Float h;
    public final Integer i;
    public final Integer j;
    public final Integer k;
    public final k1 l;
    public final f1 m;
    public final n1 n;

    public j1() {
        k1 k1Var = new k1();
        f1 f1Var = new f1();
        n1 n1Var = new n1();
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
        this.l = k1Var;
        this.m = f1Var;
        this.n = n1Var;
        this.a = TJAppInfo.INSTANCE.getManagedDeviceID();
        this.b = "android";
        TJDeviceNetwork tJDeviceNetwork = TJDeviceNetwork.INSTANCE;
        this.c = tJDeviceNetwork.getConnectionType();
        this.d = tJDeviceNetwork.getConnectionSubType();
        this.e = Build.MODEL;
        Context context = TapjoyConnectCore.getInstance().getContext();
        TJDeviceInfo tJDeviceInfo = TJDeviceInfo.INSTANCE;
        this.f = tJDeviceInfo.getVolume(context);
        this.g = tJDeviceInfo.getBatteryLevel(context);
        this.h = tJDeviceInfo.getBrightness(context);
        this.i = tJDeviceInfo.getScreenWidth(context);
        this.j = tJDeviceInfo.getScreenHeight(context);
        this.k = tJDeviceInfo.getScreenDPI(context);
    }
}
