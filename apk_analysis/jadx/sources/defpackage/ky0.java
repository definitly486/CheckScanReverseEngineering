package defpackage;

import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import java.io.Closeable;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes3.dex */
public final class ky0 implements gm5 {
    public final OkHttpClient a;

    public /* synthetic */ ky0(OkHttpClient okHttpClient) {
        this.a = okHttpClient;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object b(OkHttpClient okHttpClient, tm5 tm5Var, bm3 bm3Var, f02 f02Var) throws Throwable {
        jy0 jy0Var;
        bm3 bm3Var2;
        Closeable closeable;
        Throwable th;
        Closeable closeable2;
        if (f02Var instanceof jy0) {
            jy0Var = (jy0) f02Var;
            int i = jy0Var.o;
            if ((i & Integer.MIN_VALUE) != 0) {
                jy0Var.o = i - Integer.MIN_VALUE;
            } else {
                jy0Var = new jy0(f02Var);
            }
        } else {
            jy0Var = new jy0(f02Var);
        }
        Object objC = jy0Var.n;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = jy0Var.o;
        if (i2 == 0) {
            r57.b(objC);
            jy0Var.l = bm3Var;
            jy0Var.m = okHttpClient;
            jy0Var.o = 1;
            objC = ny0.c(tm5Var, jy0Var);
            if (objC != a32Var) {
            }
            return a32Var;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                closeable2 = (Closeable) jy0Var.l;
                try {
                    r57.b(objC);
                    m96.c(closeable2, null);
                    return objC;
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        throw th;
                    } catch (Throwable th3) {
                        m96.c(closeable2, th);
                        throw th3;
                    }
                }
            }
            bm3Var2 = (bm3) jy0Var.l;
            r57.b(objC);
            closeable = (Closeable) objC;
            try {
                vm5 vm5VarB = ny0.b((z47) closeable);
                jy0Var.l = closeable;
                jy0Var.o = 3;
                objC = bm3Var2.invoke(vm5VarB, jy0Var);
                if (objC != a32Var) {
                    closeable2 = closeable;
                    m96.c(closeable2, null);
                    return objC;
                }
                return a32Var;
            } catch (Throwable th4) {
                th = th4;
                closeable2 = closeable;
                throw th;
            }
        }
        okHttpClient = jy0Var.m;
        bm3Var = (bm3) jy0Var.l;
        r57.b(objC);
        jy6 jy6VarB = okHttpClient.b((b37) objC);
        jy0Var.l = bm3Var;
        jy0Var.m = null;
        jy0Var.o = 2;
        c31 c31Var = new c31(1, zya.b(jy0Var));
        c31Var.u();
        c31Var.n(new yy0(jy6VarB));
        FirebasePerfOkHttpClient.enqueue(jy6VarB, new zy0(c31Var));
        objC = c31Var.s();
        if (objC != a32Var) {
            bm3Var2 = bm3Var;
            closeable = (Closeable) objC;
            vm5 vm5VarB2 = ny0.b((z47) closeable);
            jy0Var.l = closeable;
            jy0Var.o = 3;
            objC = bm3Var2.invoke(vm5VarB2, jy0Var);
            if (objC != a32Var) {
                closeable2 = closeable;
                m96.c(closeable2, null);
                return objC;
            }
        }
        return a32Var;
    }

    @Override // defpackage.gm5
    public final Object a(tm5 tm5Var, bm3 bm3Var, km5.b bVar) {
        return b(this.a, tm5Var, bm3Var, bVar);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ky0) {
            return this.a == ((ky0) obj).a;
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "CallFactoryNetworkClient(callFactory=" + this.a + ")";
    }
}
