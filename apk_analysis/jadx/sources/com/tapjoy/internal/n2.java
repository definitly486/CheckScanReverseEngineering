package com.tapjoy.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes4.dex */
public final class n2 extends BroadcastReceiver {
    public final /* synthetic */ o2 a;

    public n2(o2 o2Var) {
        this.a = o2Var;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        p2 p2Var = this.a.e;
        p2Var.a.lock();
        try {
            p2Var.g = 1000L;
            p2Var.b.signal();
        } finally {
            p2Var.a.unlock();
        }
    }
}
