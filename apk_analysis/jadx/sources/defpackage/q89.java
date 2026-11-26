package defpackage;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class q89 implements Runnable {
    public final /* synthetic */ r89 b;
    public final /* synthetic */ hz c;
    public final /* synthetic */ int d;
    public final /* synthetic */ Runnable e;

    public /* synthetic */ q89(r89 r89Var, hz hzVar, int i, Runnable runnable) {
        this.b = r89Var;
        this.c = hzVar;
        this.d = i;
        this.e = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        final hz hzVar = this.c;
        final int i = this.d;
        Runnable runnable = this.e;
        final r89 r89Var = this.b;
        eh8 eh8Var = r89Var.f;
        try {
            f13 f13Var = r89Var.c;
            Objects.requireNonNull(f13Var);
            eh8Var.a(new ef1(f13Var));
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) r89Var.a.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                eh8Var.a(new eh8.a() { // from class: n89
                    @Override // eh8.a
                    public final Object execute() {
                        r89Var.d.a(hzVar, i + 1);
                        return null;
                    }
                });
            } else {
                r89Var.a(hzVar, i);
            }
        } catch (SynchronizationException unused) {
            r89Var.d.a(hzVar, i + 1);
        } finally {
            runnable.run();
        }
    }
}
