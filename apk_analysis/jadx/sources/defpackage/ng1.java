package defpackage;

import com.google.gson.Gson;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes5.dex */
public final class ng1 implements hd3<p8> {
    public final /* synthetic */ hd3 b;

    public static final class a<T> implements id3 {
        public final /* synthetic */ id3 b;

        /* JADX INFO: renamed from: ng1$a$a, reason: collision with other inner class name */
        @bd2(c = "com.warefly.checkscan.domain.interactor.chequeRequestQueue.ChequeRequestQueueInteractor$getChequeByRequestId$$inlined$map$1$2", f = "ChequeRequestQueueInteractor.kt", l = {217}, m = "emit")
        public static final class C0304a extends f02 {
            public /* synthetic */ Object l;
            public int m;

            public C0304a(e02 e02Var) {
                super(e02Var);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                this.l = obj;
                this.m |= Integer.MIN_VALUE;
                return a.this.emit(null, this);
            }
        }

        public a(id3 id3Var) {
            this.b = id3Var;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override // defpackage.id3
        public final Object emit(Object obj, e02 e02Var) {
            C0304a c0304a;
            if (e02Var instanceof C0304a) {
                c0304a = (C0304a) e02Var;
                int i = c0304a.m;
                if ((i & Integer.MIN_VALUE) != 0) {
                    c0304a.m = i - Integer.MIN_VALUE;
                } else {
                    c0304a = new C0304a(e02Var);
                }
            } else {
                c0304a = new C0304a(e02Var);
            }
            Object obj2 = c0304a.l;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i2 = c0304a.m;
            iv6 iv6Var = null;
            if (i2 == 0) {
                r57.b(obj2);
                kg1 kg1Var = (kg1) obj;
                int i3 = (int) kg1Var.a;
                String str = kg1Var.d;
                Gson gsonC = ht3.c();
                og1 og1Var = new og1();
                gsonC.getClass();
                hv6 hv6Var = (hv6) gsonC.f(str, new x39<>(og1Var.b));
                String str2 = kg1Var.e;
                if (str2 != null) {
                    Gson gsonC2 = ht3.c();
                    Type type = new pg1().b;
                    type.getClass();
                    iv6Var = (iv6) ht3.a(gsonC2, str2, type);
                }
                p8 p8Var = new p8(i3, hv6Var, iv6Var, kg1Var.a());
                c0304a.m = 1;
                if (this.b.emit(p8Var, c0304a) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj2);
            }
            return j59.a;
        }
    }

    public ng1(hd3 hd3Var) {
        this.b = hd3Var;
    }

    @Override // defpackage.hd3
    public final Object collect(id3<? super p8> id3Var, e02 e02Var) {
        Object objCollect = this.b.collect(new a(id3Var), e02Var);
        return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
    }
}
