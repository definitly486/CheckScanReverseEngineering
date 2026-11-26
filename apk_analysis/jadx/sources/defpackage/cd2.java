package defpackage;

import com.google.android.gms.internal.measurement.zzagy;
import java.time.Instant;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class cd2 implements pv8, rxa {
    public static final /* synthetic */ cd2 b = new cd2();

    public static final String a(Object obj) {
        return Integer.toHexString(System.identityHashCode(obj));
    }

    public static final String c(e02 e02Var) {
        Object aVar;
        if (e02Var instanceof fo2) {
            return ((fo2) e02Var).toString();
        }
        try {
            aVar = e02Var + '@' + a(e02Var);
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (k57.a(aVar) != null) {
            aVar = e02Var.getClass().getName() + '@' + a(e02Var);
        }
        return (String) aVar;
    }

    @Override // defpackage.pv8
    public long b() {
        Instant instantNow = Instant.now();
        return xv4.c(TimeUnit.SECONDS.toNanos(instantNow.getEpochSecond()), instantNow.getNano());
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        return new Boolean(zzagy.zzb());
    }
}
