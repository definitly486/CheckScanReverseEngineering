package androidx.tracing;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.r57;

/* JADX INFO: loaded from: classes3.dex */
public final class TraceKt {

    /* JADX INFO: renamed from: androidx.tracing.TraceKt$traceAsync$1, reason: invalid class name */
    @bd2(c = "androidx.tracing.TraceKt", f = "Trace.android.kt", l = {365}, m = "traceAsync")
    public static final class AnonymousClass1<T> extends f02 {
        int I$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TraceKt.traceAsync(null, 0, null, this);
        }
    }

    public static final <T> T trace(ll3<String> ll3Var, ll3<? extends T> ll3Var2) {
        ll3Var.getClass();
        ll3Var2.getClass();
        boolean zIsEnabled = Trace.isEnabled();
        if (zIsEnabled) {
            Trace.beginSection(ll3Var.invoke());
        }
        try {
            return ll3Var2.invoke();
        } finally {
            if (zIsEnabled) {
                Trace.endSection();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final <T> Object traceAsync(String str, int i, nl3<? super e02<? super T>, ? extends Object> nl3Var, e02<? super T> e02Var) throws Throwable {
        AnonymousClass1 anonymousClass1;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i2 = anonymousClass1.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i2 - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(e02Var);
        }
        Object objInvoke = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i3 = anonymousClass1.label;
        try {
            if (i3 == 0) {
                r57.b(objInvoke);
                Trace.beginAsyncSection(str, i);
                anonymousClass1.L$0 = str;
                anonymousClass1.I$0 = i;
                anonymousClass1.label = 1;
                objInvoke = nl3Var.invoke(anonymousClass1);
                if (objInvoke == a32Var) {
                    return a32Var;
                }
            } else {
                if (i3 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                i = anonymousClass1.I$0;
                str = (String) anonymousClass1.L$0;
                r57.b(objInvoke);
            }
            Trace.endAsyncSection(str, i);
            return objInvoke;
        } catch (Throwable th) {
            Trace.endAsyncSection(str, i);
            throw th;
        }
    }

    private static final <T> Object traceAsync$$forInline(String str, int i, nl3<? super e02<? super T>, ? extends Object> nl3Var, e02<? super T> e02Var) throws Throwable {
        Trace.beginAsyncSection(str, i);
        try {
            return nl3Var.invoke(e02Var);
        } finally {
            Trace.endAsyncSection(str, i);
        }
    }

    public static final <T> T trace(String str, ll3<? extends T> ll3Var) {
        str.getClass();
        ll3Var.getClass();
        Trace.beginSection(str);
        try {
            return ll3Var.invoke();
        } finally {
            Trace.endSection();
        }
    }

    public static final <T> T traceAsync(ll3<String> ll3Var, ll3<Integer> ll3Var2, ll3<? extends T> ll3Var3) throws Throwable {
        String strInvoke;
        int iIntValue;
        ll3Var.getClass();
        ll3Var2.getClass();
        ll3Var3.getClass();
        if (Trace.isEnabled()) {
            strInvoke = ll3Var.invoke();
            iIntValue = ll3Var2.invoke().intValue();
            Trace.beginAsyncSection(strInvoke, iIntValue);
        } else {
            strInvoke = null;
            iIntValue = 0;
        }
        try {
            return ll3Var3.invoke();
        } finally {
            if (strInvoke != null) {
                Trace.endAsyncSection(strInvoke, iIntValue);
            }
        }
    }
}
