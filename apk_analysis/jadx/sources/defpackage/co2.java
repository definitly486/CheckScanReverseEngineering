package defpackage;

import android.util.Log;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public final class co2 implements rn2 {
    public final File c;
    public ao2 e;
    public final tn2 d = new tn2();
    public final ub7 b = new ub7();

    @Deprecated
    public co2(File file) {
        this.c = file;
    }

    @Override // defpackage.rn2
    public final void a(kf4 kf4Var, q82 q82Var) {
        tn2.a aVar;
        String strA = this.b.a(kf4Var);
        tn2 tn2Var = this.d;
        synchronized (tn2Var) {
            aVar = (tn2.a) tn2Var.a.get(strA);
            if (aVar == null) {
                tn2.b bVar = tn2Var.b;
                synchronized (bVar.a) {
                    aVar = (tn2.a) bVar.a.poll();
                }
                if (aVar == null) {
                    aVar = new tn2.a();
                }
                tn2Var.a.put(strA, aVar);
            }
            aVar.b++;
        }
        aVar.a.lock();
        try {
            if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
                Log.v("DiskLruCacheWrapper", "Put: Obtained: " + strA + " for for Key: " + kf4Var);
            }
            try {
                ao2 ao2VarC = c();
                if (ao2VarC.m(strA) == null) {
                    ao2.c cVarF = ao2VarC.f(strA);
                    if (cVarF == null) {
                        throw new IllegalStateException("Had two simultaneous puts for: ".concat(strA));
                    }
                    try {
                        if (((vx2) q82Var.b).d(q82Var.a, cVarF.b(), (xz5) q82Var.c)) {
                            ao2.this.b(cVarF, true);
                            cVarF.c = true;
                        }
                        if (!cVarF.c) {
                            try {
                                cVarF.a();
                            } catch (IOException unused) {
                            }
                        }
                    } catch (Throwable th) {
                        if (!cVarF.c) {
                            try {
                                cVarF.a();
                            } catch (IOException unused2) {
                            }
                        }
                        throw th;
                    }
                }
            } catch (IOException e) {
                if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
                    Log.w("DiskLruCacheWrapper", "Unable to put to disk cache", e);
                }
            }
            this.d.a(strA);
        } catch (Throwable th2) {
            this.d.a(strA);
            throw th2;
        }
    }

    @Override // defpackage.rn2
    public final File b(kf4 kf4Var) {
        String strA = this.b.a(kf4Var);
        if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
            Log.v("DiskLruCacheWrapper", "Get: Obtained: " + strA + " for for Key: " + kf4Var);
        }
        try {
            ao2.e eVarM = c().m(strA);
            if (eVarM != null) {
                return eVarM.a[0];
            }
            return null;
        } catch (IOException e) {
            if (!Log.isLoggable("DiskLruCacheWrapper", 5)) {
                return null;
            }
            Log.w("DiskLruCacheWrapper", "Unable to get from disk cache", e);
            return null;
        }
    }

    public final synchronized ao2 c() {
        ao2 ao2VarO;
        ao2VarO = this.e;
        if (ao2VarO == null) {
            ao2VarO = ao2.o(this.c);
            this.e = ao2VarO;
        }
        return ao2VarO;
    }
}
