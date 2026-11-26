package com.tapjoy;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.tapjoy.internal.p1;
import defpackage.eu3;
import defpackage.h11;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes4.dex */
public class TJCorePlacement {
    public Context b;
    public TJPlacementData c;
    public final TJCurrencyParameters d;
    public final String e;
    public final String f;
    public final String g;
    public final boolean h;
    public final TJAdUnit j;
    public final HashMap a = new HashMap();
    public final ExecutorService i = Executors.newSingleThreadExecutor();
    public volatile boolean k = false;
    public volatile boolean l = false;
    public volatile boolean m = false;
    public volatile boolean n = false;

    public TJCorePlacement(String str, String str2, boolean z) {
        this.f = str;
        this.g = str2;
        this.h = z;
        Context context = com.tapjoy.internal.i.a;
        if (context == null) {
            WeakReference weakReference = com.tapjoy.internal.i.c.a;
            context = (Context) (weakReference != null ? weakReference.get() : null);
        }
        this.b = context;
        if (context == null) {
            TapjoyLog.d("context is NULL.");
        }
        TJCurrencyParameters tJCurrencyParameters = new TJCurrencyParameters();
        this.d = tJCurrencyParameters;
        tJCurrencyParameters.fetchCurrencyParams(this.b);
        this.e = UUID.randomUUID().toString();
        TJAdUnit tJAdUnit = new TJAdUnit();
        this.j = tJAdUnit;
        tJAdUnit.setWebViewListener(new z(this));
    }

    public final void a() {
        if (this.l) {
            return;
        }
        this.n = true;
        TapjoyLog.i("Content is ready for placement " + this.f);
        TJPlacement tJPlacementA = a("REQUEST");
        if (tJPlacementA == null || tJPlacementA.getListener() == null) {
            return;
        }
        tJPlacementA.getListener().onContentReady(tJPlacementA);
        this.l = true;
    }

    public final synchronized void b() {
        if (this.k) {
            TapjoyLog.i("Placement " + this.f + " is already requesting content");
            return;
        }
        this.j.resetContentLoadState();
        this.k = false;
        this.l = false;
        this.m = false;
        this.n = false;
        this.k = true;
        this.i.submit(new h11(1, this, a("REQUEST")));
    }

    public final void c(TJPlacement tJPlacement) {
        if (TapjoyConnectCore.getInstance().isViewOpen()) {
            TapjoyLog.w("Only one view can be presented at a time.");
            return;
        }
        a("SHOW", tJPlacement);
        TJMemoryDataStorage.getInstance().put(this.f, this.c);
        Intent intent = new Intent(this.b, (Class<?>) TJAdUnitActivity.class);
        intent.putExtra(TJAdUnitConstants.EXTRA_TJ_PLACEMENT_NAME, this.f);
        intent.setFlags(268435456);
        TapjoyLog.i("Content shown for placement " + this.f);
        TJPlacement tJPlacementA = a("SHOW");
        if (tJPlacementA != null && tJPlacementA.getListener() != null) {
            tJPlacementA.getListener().onContentShow(tJPlacementA);
        }
        if (this.j.getSdkBeacon() != null) {
            com.tapjoy.internal.l0 sdkBeacon = this.j.getSdkBeacon();
            if (!TextUtils.isEmpty(sdkBeacon.c) && !sdkBeacon.f) {
                sdkBeacon.f = true;
                new com.tapjoy.internal.j0(sdkBeacon, new HashMap(sdkBeacon.b)).start();
            }
        }
        TapjoyUtil.runOnMainThread(new eu3(2, this, intent));
        TJPlacementData tJPlacementData = this.c;
        if (tJPlacementData != null) {
            tJPlacementData.setRequestExpiration(0L);
        }
        this.m = false;
        this.n = false;
    }

    public TJAdUnit getAdUnit() {
        return this.j;
    }

    public Context getContext() {
        return this.b;
    }

    public boolean isContentAvailable() {
        return this.m;
    }

    public boolean isContentReady() {
        return this.n;
    }

    public void setContext(Context context) {
        this.b = context;
    }

    public final void a(String str, TJPlacement tJPlacement) {
        synchronized (this.a) {
            this.a.put(str, tJPlacement);
            TapjoyLog.d("Setting " + str + " placement: " + tJPlacement.getGUID());
        }
    }

    public final TJPlacement a(String str) {
        TJPlacement tJPlacement;
        synchronized (this.a) {
            try {
                tJPlacement = (TJPlacement) this.a.get(str);
                if (tJPlacement != null) {
                    TapjoyLog.d("Returning " + str + " placement: " + tJPlacement.getGUID());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return tJPlacement;
    }

    public final void a(TJPlacement tJPlacement) {
        if (tJPlacement == null || tJPlacement.getListener() == null) {
            return;
        }
        TapjoyLog.i("Content request delivered successfully for placement " + this.f + ", contentAvailable: " + isContentAvailable());
        tJPlacement.getListener().onRequestSuccess(tJPlacement);
    }

    public final void a(TJPlacement tJPlacement, TJError tJError) {
        TapjoyLog.e("Content request failed for placement " + this.f + "; Reason= " + tJError.message);
        if (tJPlacement == null || tJPlacement.getListener() == null) {
            return;
        }
        tJPlacement.getListener().onRequestFailure(tJPlacement, tJError);
    }

    public final /* synthetic */ void a(Intent intent) {
        this.b.startActivity(intent);
    }

    public final /* synthetic */ void b(TJPlacement tJPlacement) {
        new p1().a(this.g, this.f, this.h, tJPlacement.getEntryPoint() != null ? tJPlacement.getEntryPoint().getValue() : null, this.d.getCurrencyMap(), new a0(this, tJPlacement));
        this.k = false;
    }
}
