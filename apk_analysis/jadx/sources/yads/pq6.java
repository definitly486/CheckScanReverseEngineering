package yads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes6.dex */
public final class pq6 extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        qq6 qq6Var;
        boolean z;
        if (intent.getAction().equals("android.intent.action.SCREEN_OFF")) {
            qq6Var = qq6.d;
            z = true;
            qq6Var.a(true, qq6Var.c);
        } else {
            if (!intent.getAction().equals("android.intent.action.SCREEN_ON")) {
                return;
            }
            qq6Var = qq6.d;
            z = false;
            qq6Var.a(false, qq6Var.c);
        }
        qq6Var.b = z;
    }
}
