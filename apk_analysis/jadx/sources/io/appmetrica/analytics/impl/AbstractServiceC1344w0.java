package io.appmetrica.analytics.impl;

import android.app.Service;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.IBinder;
import defpackage.aa4;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.w0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractServiceC1344w0 extends Service {
    public C0779a2 a;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        C0779a2 c0779a2 = this.a;
        if (c0779a2 != null) {
            return c0779a2.a(intent);
        }
        aa4.j("serviceDelegate");
        throw null;
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        C0779a2 c0779a2 = this.a;
        if (c0779a2 != null) {
            c0779a2.a(configuration);
        } else {
            aa4.j("serviceDelegate");
            throw null;
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        C0779a2 c0779a2 = this.a;
        if (c0779a2 == null) {
            c0779a2 = new C0779a2(this, new C1369x0(this));
            this.a = c0779a2;
        }
        if (c0779a2 != null) {
            c0779a2.b();
        } else {
            aa4.j("serviceDelegate");
            throw null;
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        C0779a2 c0779a2 = this.a;
        if (c0779a2 != null) {
            c0779a2.c();
        } else {
            aa4.j("serviceDelegate");
            throw null;
        }
    }

    @Override // android.app.Service
    public void onRebind(Intent intent) {
        super.onRebind(intent);
        C0779a2 c0779a2 = this.a;
        if (c0779a2 != null) {
            c0779a2.b(intent);
        } else {
            aa4.j("serviceDelegate");
            throw null;
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        C0779a2 c0779a2 = this.a;
        if (c0779a2 != null) {
            return c0779a2.a(intent, i, i2);
        }
        aa4.j("serviceDelegate");
        throw null;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        C0779a2 c0779a2 = this.a;
        if (c0779a2 != null) {
            return c0779a2.c(intent);
        }
        aa4.j("serviceDelegate");
        throw null;
    }
}
