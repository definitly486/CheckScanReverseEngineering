package yads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes6.dex */
public final class hs5 extends BroadcastReceiver {
    public final /* synthetic */ is5 a;

    public hs5(is5 is5Var) {
        this.a = is5Var;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        is5 is5Var = this.a;
        is5Var.b.post(new defpackage.om(is5Var, 3));
    }
}
