package androidx.activity;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.r57;

/* JADX INFO: loaded from: classes.dex */
public final class FullyDrawnReporterKt {

    /* JADX INFO: renamed from: androidx.activity.FullyDrawnReporterKt$reportWhenComplete$1, reason: invalid class name */
    @bd2(c = "androidx.activity.FullyDrawnReporterKt", f = "FullyDrawnReporter.kt", l = {173}, m = "reportWhenComplete", v = 1)
    public static final class AnonymousClass1 extends f02 {
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
            return FullyDrawnReporterKt.reportWhenComplete(null, null, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4, types: [j59, java.lang.Object] */
    public static final Object reportWhenComplete(FullyDrawnReporter fullyDrawnReporter, nl3<? super e02<? super j59>, ? extends Object> nl3Var, e02<? super j59> e02Var) {
        AnonymousClass1 anonymousClass1;
        FullyDrawnReporter fullyDrawnReporter2;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(e02Var);
        }
        Object obj = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        try {
            if (i2 == 0) {
                r57.b(obj);
                fullyDrawnReporter.addReporter();
                if (fullyDrawnReporter.isFullyDrawnReported()) {
                    return j59.a;
                }
                anonymousClass1.L$0 = fullyDrawnReporter;
                anonymousClass1.label = 1;
                fullyDrawnReporter2 = fullyDrawnReporter;
                if (nl3Var.invoke(anonymousClass1) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                FullyDrawnReporter fullyDrawnReporter3 = (FullyDrawnReporter) anonymousClass1.L$0;
                r57.b(obj);
                fullyDrawnReporter2 = fullyDrawnReporter3;
            }
            fullyDrawnReporter2.removeReporter();
            fullyDrawnReporter = j59.a;
            return fullyDrawnReporter;
        } catch (Throwable th) {
            fullyDrawnReporter.removeReporter();
            throw th;
        }
    }

    private static final Object reportWhenComplete$$forInline(FullyDrawnReporter fullyDrawnReporter, nl3<? super e02<? super j59>, ? extends Object> nl3Var, e02<? super j59> e02Var) {
        fullyDrawnReporter.addReporter();
        if (fullyDrawnReporter.isFullyDrawnReported()) {
            return j59.a;
        }
        try {
            nl3Var.invoke(e02Var);
            return j59.a;
        } finally {
            fullyDrawnReporter.removeReporter();
        }
    }
}
