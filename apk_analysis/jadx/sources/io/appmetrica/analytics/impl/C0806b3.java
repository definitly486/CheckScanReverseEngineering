package io.appmetrica.analytics.impl;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.b3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0806b3 implements Bk {
    public final ArrayList a;
    public Intent b;
    public final Context c;
    public final R5 d;
    public final IHandlerExecutor e;

    public C0806b3(Context context, IHandlerExecutor iHandlerExecutor, int i) {
        this.a = new ArrayList();
        this.b = null;
        this.c = context;
        this.e = iHandlerExecutor;
        this.d = Q5.a(new I2(new C0780a3(this), iHandlerExecutor));
    }

    public final void a() {
        this.b = null;
        R5 r5 = this.d;
        Context context = this.c;
        synchronized (r5) {
            if (r5.b) {
                try {
                    context.unregisterReceiver(r5.a);
                    r5.b = false;
                } catch (Throwable unused) {
                }
            }
        }
    }

    @Override // io.appmetrica.analytics.impl.Bk
    public final synchronized void onCreate() {
        Intent intentA = this.d.a(this.c, new IntentFilter("android.intent.action.BATTERY_CHANGED"), this.e);
        this.b = intentA;
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((Consumer) it.next()).consume(intentA);
        }
    }

    @Override // io.appmetrica.analytics.impl.Bk
    public final synchronized void onDestroy() {
        this.b = null;
        a();
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((Consumer) it.next()).consume(null);
        }
    }

    public final synchronized Intent a(Consumer<Intent> consumer) {
        this.a.add(consumer);
        return this.b;
    }

    public C0806b3(Context context, IHandlerExecutor iHandlerExecutor) {
        this(context, iHandlerExecutor, 0);
    }
}
