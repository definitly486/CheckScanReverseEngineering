package androidx.core.content;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.k57;

/* JADX INFO: loaded from: classes2.dex */
final class ContinuationBroadcastReceiver extends BroadcastReceiver {
    private e02<?> continuation;
    private final bm3<BroadcastReceiver, Intent, j59> onReceiveChecked;

    /* JADX WARN: Multi-variable type inference failed */
    public ContinuationBroadcastReceiver(e02<?> e02Var, bm3<? super BroadcastReceiver, ? super Intent, j59> bm3Var) {
        this.onReceiveChecked = bm3Var;
        this.continuation = e02Var;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            this.onReceiveChecked.invoke(this, intent);
        } catch (Throwable th) {
            e02<?> e02Var = this.continuation;
            if (e02Var == null) {
                throw th;
            }
            e02Var.resumeWith(new k57.a(th));
            this.continuation = null;
        }
    }
}
