package com.google.android.gms.common.internal;

import android.content.Context;
import defpackage.ola;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final class zan implements Executor {
    public static volatile zan b;
    public static Context c;

    public static zan zaa(Context context) {
        zan zanVar;
        zan zanVar2 = b;
        if (zanVar2 != null) {
            return zanVar2;
        }
        synchronized (zan.class) {
            try {
                zanVar = b;
                if (zanVar == null) {
                    c = (Context) Preconditions.checkNotNull(context.getApplicationContext());
                    zanVar = new zan();
                    b = zanVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zanVar;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        ola.a.post(runnable);
    }
}
