package yads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes6.dex */
public final class p85 extends BroadcastReceiver {
    public final /* synthetic */ s85 a;

    public p85(s85 s85Var) {
        this.a = s85Var;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (isInitialStickyBroadcast()) {
            return;
        }
        this.a.a();
    }
}
