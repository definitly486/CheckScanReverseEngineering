package defpackage;

import androidx.tracing.Trace;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class be3 implements hd3<Object> {
    public final /* synthetic */ hd3 b;
    public final /* synthetic */ dm3 c;

    @bd2(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1", f = "Emitters.kt", l = {113, 120, Trace.MAX_TRACE_LABEL_LENGTH}, m = "collect", v = 1)
    public static final class a extends f02 {
        public /* synthetic */ Object l;
        public int m;
        public id3 o;
        public Serializable p;
        public int q;

        public a(e02 e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.l = obj;
            this.m |= Integer.MIN_VALUE;
            return be3.this.collect(null, this);
        }
    }

    public be3(hd3 hd3Var, dm3 dm3Var) {
        this.b = hd3Var;
        this.c = dm3Var;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x007c  */
    /* JADX WARN: Code duplicated, block: B:55:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // defpackage.hd3
    public final Object collect(id3<? super Object> id3Var, e02<? super j59> e02Var) throws Throwable {
        a aVar;
        int i;
        int i2;
        yt8 yt8Var;
        pb7 pb7Var;
        pb7 pb7Var2;
        if (e02Var instanceof a) {
            aVar = (a) e02Var;
            int i3 = aVar.m;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                aVar.m = i3 - Integer.MIN_VALUE;
            } else {
                aVar = new a(e02Var);
            }
        } else {
            aVar = new a(e02Var);
        }
        Object obj = aVar.l;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i4 = aVar.m;
        dm3 dm3Var = this.c;
        if (i4 == 0) {
            r57.b(obj);
            i = 0;
            try {
                hd3 hd3Var = this.b;
                aVar.o = id3Var;
                aVar.q = 0;
                aVar.m = 1;
                if (hd3Var.collect(id3Var, aVar) != a32Var) {
                    i2 = 0;
                    pb7Var = new pb7(id3Var, aVar.getContext());
                    aVar.o = null;
                    aVar.p = pb7Var;
                    aVar.q = i2;
                    aVar.m = 3;
                    if (dm3Var.invoke(pb7Var, null, aVar) != a32Var) {
                        pb7Var2 = pb7Var;
                        pb7Var2.releaseIntercepted();
                        return j59.a;
                    }
                }
            } catch (Throwable th) {
                th = th;
                yt8Var = new yt8(th);
                aVar.o = null;
                aVar.p = th;
                aVar.q = i;
                aVar.m = 2;
                if (q1.f(yt8Var, dm3Var, th, aVar) == a32Var) {
                    throw th;
                }
            }
            return a32Var;
        }
        if (i4 != 1) {
            if (i4 == 2) {
                Throwable th2 = (Throwable) aVar.p;
                r57.b(obj);
                throw th2;
            }
            if (i4 != 3) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            pb7Var2 = (pb7) aVar.p;
            try {
                r57.b(obj);
                pb7Var2.releaseIntercepted();
                return j59.a;
            } catch (Throwable th3) {
                th = th3;
                pb7Var2.releaseIntercepted();
                throw th;
            }
        }
        i2 = aVar.q;
        id3Var = aVar.o;
        try {
            r57.b(obj);
            pb7Var = new pb7(id3Var, aVar.getContext());
            try {
                aVar.o = null;
                aVar.p = pb7Var;
                aVar.q = i2;
                aVar.m = 3;
                if (dm3Var.invoke(pb7Var, null, aVar) != a32Var) {
                    pb7Var2 = pb7Var;
                    pb7Var2.releaseIntercepted();
                    return j59.a;
                }
            } catch (Throwable th4) {
                th = th4;
                pb7Var2 = pb7Var;
                pb7Var2.releaseIntercepted();
                throw th;
            }
        } catch (Throwable th5) {
            i = i2;
            th = th5;
            yt8Var = new yt8(th);
            aVar.o = null;
            aVar.p = th;
            aVar.q = i;
            aVar.m = 2;
            if (q1.f(yt8Var, dm3Var, th, aVar) == a32Var) {
                throw th;
            }
        }
        return a32Var;
    }
}
