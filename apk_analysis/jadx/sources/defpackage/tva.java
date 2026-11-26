package defpackage;

import android.os.Handler;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzcl;

/* JADX INFO: loaded from: classes4.dex */
public abstract class tva {
    public static volatile zzcl d;
    public final pvb a;
    public final pva b;
    public volatile long c;

    public tva(pvb pvbVar) {
        Preconditions.checkNotNull(pvbVar);
        this.a = pvbVar;
        this.b = new pva(this, pvbVar);
    }

    public abstract void a();

    public final void b(long j) {
        c();
        if (j >= 0) {
            pvb pvbVar = this.a;
            this.c = pvbVar.zzba().currentTimeMillis();
            if (d().postDelayed(this.b, j)) {
                return;
            }
            pvbVar.zzaW().zzb().zzb("Failed to schedule delayed post. time", Long.valueOf(j));
        }
    }

    public final void c() {
        this.c = 0L;
        d().removeCallbacks(this.b);
    }

    public final Handler d() {
        zzcl zzclVar;
        if (d != null) {
            return d;
        }
        synchronized (tva.class) {
            try {
                if (d == null) {
                    d = new zzcl(this.a.zzaZ().getMainLooper());
                }
                zzclVar = d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzclVar;
    }
}
