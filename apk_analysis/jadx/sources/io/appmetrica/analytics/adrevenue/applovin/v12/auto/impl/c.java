package io.appmetrica.analytics.adrevenue.applovin.v12.auto.impl;

import android.content.Context;
import com.applovin.communicator.AppLovinCommunicator;

/* JADX INFO: loaded from: classes5.dex */
public final class c {
    public final Context a;
    public final e b;
    public f c;

    public c(Context context, e eVar) {
        this.a = context;
        this.b = eVar;
    }

    public final boolean a() {
        synchronized (this) {
            boolean z = true;
            if (this.c != null) {
                return true;
            }
            f fVar = new f(new b(this.b));
            try {
                AppLovinCommunicator.getInstance(this.a).subscribe(fVar, "max_revenue_events");
                this.c = fVar;
            } catch (Throwable unused) {
                z = false;
            }
            return z;
        }
    }

    public final boolean b() {
        synchronized (this) {
            f fVar = this.c;
            boolean z = true;
            if (fVar == null) {
                return true;
            }
            try {
                AppLovinCommunicator.getInstance(this.a).unsubscribe(fVar, "max_revenue_events");
                this.c = null;
            } catch (Throwable unused) {
                z = false;
            }
            return z;
        }
    }
}
