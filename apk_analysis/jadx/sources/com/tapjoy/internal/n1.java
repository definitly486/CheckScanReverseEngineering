package com.tapjoy.internal;

import android.os.Build;
import com.tapjoy.TJDeviceInfo;
import com.tapjoy.TJStore;
import com.tapjoy.TJTracking;
import com.tapjoy.TapjoyConnectCore;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes4.dex */
public final class n1 {
    public final String a;
    public final String b;
    public final Boolean c;
    public final boolean d;
    public final String e;
    public final String f;
    public final String g;
    public final String h;
    public final String i;
    public final x0 j;

    public n1() {
        x0 x0Var = new x0();
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = false;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = x0Var;
        this.a = Locale.getDefault().getLanguage();
        TJStore tJStore = TJStore.INSTANCE;
        this.b = tJStore.getStore();
        this.c = Boolean.valueOf(tJStore.getStoreView());
        TJTracking tJTracking = TJTracking.INSTANCE;
        this.d = tJTracking.getAdTrackingEnableIfPresent();
        this.e = tJTracking.getAdvertisingIdIfAllowed();
        this.f = "android";
        this.g = Build.VERSION.RELEASE;
        this.h = TimeZone.getDefault().getID();
        this.i = TJDeviceInfo.INSTANCE.getTheme(TapjoyConnectCore.getInstance().getContext());
    }
}
