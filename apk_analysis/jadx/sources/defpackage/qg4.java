package defpackage;

import kotlin.KotlinNullPointerException;
import retrofit2.HttpException;

/* JADX INFO: loaded from: classes5.dex */
public final class qg4 {

    public static final class a implements nl3<Throwable, j59> {
        public final /* synthetic */ fy0<T> b;

        public a(fy0<T> fy0Var) {
            this.b = fy0Var;
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            this.b.cancel();
            return j59.a;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static final class b<T> implements sy0<T> {
        public final /* synthetic */ c31 a;

        public b(c31 c31Var) {
            this.a = c31Var;
        }

        @Override // defpackage.sy0
        public final void a(fy0<T> fy0Var, Throwable th) {
            th.getClass();
            this.a.resumeWith(new k57.a(th));
        }

        @Override // defpackage.sy0
        public final void b(fy0<T> fy0Var, a57<T> a57Var) {
            boolean zO = a57Var.a.o();
            c31 c31Var = this.a;
            if (!zO) {
                c31Var.resumeWith(new k57.a(new HttpException(a57Var)));
                return;
            }
            T t = a57Var.b;
            if (t != null) {
                c31Var.resumeWith(t);
                return;
            }
            b37 b37VarM = fy0Var.m();
            b37VarM.getClass();
            Object objCast = ga4.class.cast(b37VarM.e.get(ga4.class));
            objCast.getClass();
            ga4 ga4Var = (ga4) objCast;
            c31Var.resumeWith(new k57.a(new KotlinNullPointerException("Response from " + ga4Var.a.getName() + '.' + ga4Var.c.getName() + " was null but response body type was declared as non-null")));
        }
    }

    public static final class c implements nl3<Throwable, j59> {
        public final /* synthetic */ fy0<T> b;

        public c(fy0<T> fy0Var) {
            this.b = fy0Var;
        }

        @Override // defpackage.nl3
        public final j59 invoke(Throwable th) {
            this.b.cancel();
            return j59.a;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static final class d<T> implements sy0<T> {
        public final /* synthetic */ c31 a;

        public d(c31 c31Var) {
            this.a = c31Var;
        }

        @Override // defpackage.sy0
        public final void a(fy0<T> fy0Var, Throwable th) {
            th.getClass();
            this.a.resumeWith(new k57.a(th));
        }

        @Override // defpackage.sy0
        public final void b(fy0<T> fy0Var, a57<T> a57Var) {
            boolean zO = a57Var.a.o();
            c31 c31Var = this.a;
            if (zO) {
                c31Var.resumeWith(a57Var.b);
            } else {
                c31Var.resumeWith(new k57.a(new HttpException(a57Var)));
            }
        }
    }

    public static final <T> Object a(fy0<T> fy0Var, e02<? super T> e02Var) throws Throwable {
        c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        c31Var.n(new a(fy0Var));
        fy0Var.o(new b(c31Var));
        Object objS = c31Var.s();
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        return objS;
    }

    public static final <T> Object b(fy0<T> fy0Var, e02<? super T> e02Var) throws Throwable {
        c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        c31Var.n(new c(fy0Var));
        fy0Var.o(new d(c31Var));
        Object objS = c31Var.s();
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        return objS;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final a32 c(Throwable th, e02 e02Var) {
        tg4 tg4Var;
        if (e02Var instanceof tg4) {
            tg4Var = (tg4) e02Var;
            int i = tg4Var.m;
            if ((i & Integer.MIN_VALUE) != 0) {
                tg4Var.m = i - Integer.MIN_VALUE;
            } else {
                tg4Var = new tg4(e02Var);
            }
        } else {
            tg4Var = new tg4(e02Var);
        }
        Object obj = tg4Var.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = tg4Var.m;
        if (i2 == 0) {
            r57.b(obj);
            tg4Var.m = 1;
            qo2.a.dispatch(tg4Var.getContext(), new ug4(0, tg4Var, th));
            return a32Var;
        }
        if (i2 != 1) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        h8.d();
        return null;
    }
}
