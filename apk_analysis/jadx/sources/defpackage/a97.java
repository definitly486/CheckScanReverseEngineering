package defpackage;

import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "kotlinx.coroutines.rx2.RxConvertKt$asObservable$1$job$1", f = "RxConvert.kt", l = {113}, m = "invokeSuspend", v = 1)
public final class a97 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    public int l;
    public /* synthetic */ Object m;
    public final /* synthetic */ cf3 n;
    public final /* synthetic */ xq5.a o;

    public static final class a<T> implements id3 {
        public final /* synthetic */ xq5.a b;

        public a(xq5.a aVar) {
            this.b = aVar;
        }

        @Override // defpackage.id3
        public final Object emit(T t, e02<? super j59> e02Var) {
            this.b.onNext(t);
            return j59.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a97(cf3 cf3Var, xq5.a aVar, e02 e02Var) {
        super(2, e02Var);
        this.n = cf3Var;
        this.o = aVar;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        a97 a97Var = new a97(this.n, this.o, e02Var);
        a97Var.m = obj;
        return a97Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((a97) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        y22 y22Var = (y22) this.m;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.l;
        xq5.a aVar = this.o;
        try {
            if (i == 0) {
                r57.b(obj);
                cf3 cf3Var = this.n;
                a aVar2 = new a(aVar);
                this.m = y22Var;
                this.l = 1;
                if (cf3Var.collect(aVar2, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            aVar.a();
        } catch (Throwable th) {
            if (th instanceof CancellationException) {
                aVar.a();
            } else if (!aVar.b(th)) {
                uc5.b(y22Var.getCoroutineContext(), th);
            }
        }
        return j59.a;
    }
}
