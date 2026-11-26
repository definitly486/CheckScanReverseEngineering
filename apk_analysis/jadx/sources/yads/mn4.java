package yads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes3.dex */
public final class mn4 extends BroadcastReceiver {
    public final /* synthetic */ nn4 a;

    public mn4(nn4 nn4Var) {
        this.a = nn4Var;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        int iB = nn4.b(context);
        if (u56.a < 31 || iB != 5) {
            this.a.a(iB);
        } else {
            kn4.a(context, this.a);
        }
    }
}
