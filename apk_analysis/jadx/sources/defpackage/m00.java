package defpackage;

import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.measurement.internal.zzfy;
import com.warefly.checkscan.CheckScanApplication;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
import org.koin.core.error.KoinApplicationAlreadyStartedException;

/* JADX INFO: loaded from: classes5.dex */
public final class m00 implements rxa, efb {
    public static final /* synthetic */ m00 c = new m00(4);
    public static final /* synthetic */ m00 d = new m00(5);
    public final /* synthetic */ int b;

    public m00(fu9 fu9Var) {
        this.b = 3;
    }

    public static long c(AtomicLong atomicLong, long j) {
        long j2;
        do {
            j2 = atomicLong.get();
            if (j2 == Long.MAX_VALUE) {
                return Long.MAX_VALUE;
            }
        } while (!atomicLong.compareAndSet(j2, d(j2, j)));
        return j2;
    }

    public static long d(long j, long j2) {
        long j3 = j + j2;
        if (j3 < 0) {
            return Long.MAX_VALUE;
        }
        return j3;
    }

    public static void e(AtomicLong atomicLong, long j) {
        long j2;
        long j3;
        do {
            j2 = atomicLong.get();
            if (j2 == Long.MAX_VALUE) {
                return;
            }
            j3 = j2 - j;
            if (j3 < 0) {
                d97.b(new IllegalStateException(r01.c(j3, "More produced than requested: ")));
                j3 = 0;
            }
        } while (!atomicLong.compareAndSet(j2, j3));
    }

    public static final void f(CheckScanApplication.b bVar) {
        synchronized (c.c) {
            ig4 ig4Var = new ig4();
            if (c.d != null) {
                throw new KoinApplicationAlreadyStartedException("A Koin Application has already been started");
            }
            c.d = ig4Var.a;
            bVar.invoke(ig4Var);
            ig4Var.a.a();
        }
    }

    public static final void g(tc5 tc5Var) {
        tc5Var.getClass();
        synchronized (c.c) {
            hg4 hg4Var = c.d;
            if (hg4Var == null) {
                throw new IllegalStateException("KoinApplication has not been started");
            }
            hg4Var.c(u96.h(tc5Var));
            j59 j59Var = j59.a;
        }
    }

    @Override // defpackage.efb
    public zeb a(Class cls) {
        throw new IllegalStateException("This should never be called.");
    }

    @Override // defpackage.efb
    public boolean b(Class cls) {
        return false;
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        switch (this.b) {
            case 4:
                List list = zzfy.a;
                return Integer.valueOf((int) zzags.zzQ());
            default:
                List list2 = zzfy.a;
                return Long.valueOf(zzags.zzaf());
        }
    }

    public /* synthetic */ m00(int i) {
        this.b = i;
    }
}
