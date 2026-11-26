package defpackage;

import android.os.SystemClock;
import androidx.work.WorkRequest;
import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.measurement.internal.zzfy;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class q1 implements qu3, j5a, rxa {
    public static final e02[] b = new e02[0];
    public static final /* synthetic */ q1 c = new q1();

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object f(yt8 yt8Var, dm3 dm3Var, Throwable th, f02 f02Var) {
        ae3 ae3Var;
        if (f02Var instanceof ae3) {
            ae3Var = (ae3) f02Var;
            int i = ae3Var.n;
            if ((i & Integer.MIN_VALUE) != 0) {
                ae3Var.n = i - Integer.MIN_VALUE;
            } else {
                ae3Var = new ae3(f02Var);
            }
        } else {
            ae3Var = new ae3(f02Var);
        }
        Object obj = ae3Var.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = ae3Var.n;
        try {
            if (i2 == 0) {
                r57.b(obj);
                ae3Var.l = th;
                ae3Var.n = 1;
                if (dm3Var.invoke(yt8Var, th, ae3Var) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                th = ae3Var.l;
                r57.b(obj);
            }
            return j59.a;
        } catch (Throwable th2) {
            if (th != null && th != th2) {
                sj0.c(th2, th);
            }
            throw th2;
        }
    }

    @Override // defpackage.qu3
    public boolean a(t18 t18Var) {
        hn2 hn2Var = t18Var.a;
        if ((hn2Var instanceof hn2.a ? ((hn2.a) hn2Var).a : Integer.MAX_VALUE) <= 100) {
            return false;
        }
        hn2 hn2Var2 = t18Var.b;
        return (hn2Var2 instanceof hn2.a ? ((hn2.a) hn2Var2).a : Integer.MAX_VALUE) > 100;
    }

    @Override // defpackage.j5a
    public void b(pp9 pp9Var, int i, int i2, int i3, String str, String str2) {
    }

    @Override // defpackage.j5a
    public void c(z8a z8aVar, boolean z, r8a r8aVar) {
    }

    @Override // defpackage.j5a
    public void d(z8a z8aVar, int i, int i2, int i3, String str, String str2) {
    }

    @Override // defpackage.qu3
    public boolean e() {
        boolean z;
        synchronized (j93.a) {
            try {
                int i = j93.c;
                j93.c = i + 1;
                if (i >= 30 || SystemClock.uptimeMillis() > j93.d + WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS) {
                    j93.c = 0;
                    j93.d = SystemClock.uptimeMillis();
                    String[] list = j93.b.list();
                    if (list == null) {
                        list = new String[0];
                    }
                    j93.e = list.length < 800;
                }
                z = j93.e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        List list = zzfy.a;
        return Integer.valueOf((int) zzags.zzv());
    }
}
