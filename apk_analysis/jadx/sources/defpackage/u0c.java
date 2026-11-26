package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.UserManager;
import android.util.Log;
import com.google.android.gms.internal.measurement.zzky;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public final class u0c extends BroadcastReceiver {
    public final /* synthetic */ AtomicBoolean a;
    public final /* synthetic */ Context b;
    public final /* synthetic */ nr7 c;
    public final /* synthetic */ js d;
    public final /* synthetic */ Executor e;

    public u0c(AtomicBoolean atomicBoolean, Context context, nr7 nr7Var, js jsVar, Executor executor) {
        this.a = atomicBoolean;
        this.b = context;
        this.c = nr7Var;
        this.d = jsVar;
        this.e = executor;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (this.a.compareAndSet(false, true)) {
            Context context2 = this.b;
            UserManager userManager = zzky.a;
            try {
                context2.unregisterReceiver(this);
            } catch (IllegalArgumentException e) {
                Log.w("DirectBootUtils", "Failed to unregister receiver", e);
            }
            nr7 nr7Var = this.c;
            js jsVar = this.d;
            Executor executor = this.e;
            n39 n39Var = new n39();
            n39Var.j = new n39.a(jsVar);
            executor.execute(n39Var);
            nr7Var.n(n39Var);
        }
    }
}
