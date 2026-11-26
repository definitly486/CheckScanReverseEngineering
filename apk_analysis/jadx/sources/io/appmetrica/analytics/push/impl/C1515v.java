package io.appmetrica.analytics.push.impl;

import android.content.Context;
import io.appmetrica.analytics.push.settings.AutoTrackingConfiguration;
import io.appmetrica.analytics.push.settings.PassportUidProvider;

/* JADX INFO: renamed from: io.appmetrica.analytics.push.impl.v, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1515v {
    public final Object a = new Object();
    public volatile C1513u0 b;
    public volatile C1516v0 c;
    public volatile C1481j1 d;
    public volatile N e;
    public volatile C1512u f;
    public volatile AutoTrackingConfiguration g;
    public volatile L1 h;
    public volatile W1 i;
    public volatile C1529z1 j;
    public volatile C1488l1 k;
    public volatile C1473h1 l;
    public volatile Q1 m;
    public volatile K1 n;
    public PassportUidProvider o;
    public final Context p;
    public final r q;

    public C1515v(Context context, r rVar) {
        this.p = context;
        this.q = rVar;
    }

    public final AutoTrackingConfiguration a() {
        if (this.g == null) {
            synchronized (this.a) {
                try {
                    if (this.g == null) {
                        this.g = AutoTrackingConfiguration.newBuilder().build();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.g;
    }

    public final C1481j1 b() {
        if (this.d == null) {
            synchronized (this.a) {
                try {
                    if (this.d == null) {
                        this.d = new C1481j1();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.d;
    }

    public final L1 c() {
        if (this.h == null) {
            synchronized (this.a) {
                try {
                    if (this.h == null) {
                        this.h = new L1(this.p, ".STORAGE");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.h;
    }

    public final T0 d() {
        if (this.f == null) {
            synchronized (this.a) {
                try {
                    if (this.f == null) {
                        this.f = new C1512u(this.p, c());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f;
    }
}
