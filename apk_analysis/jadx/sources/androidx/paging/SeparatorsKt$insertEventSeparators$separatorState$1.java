package androidx.paging;

import defpackage.bd2;
import defpackage.dm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;

/* JADX INFO: Add missing generic type declarations: [R, T] */
/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.paging.SeparatorsKt$insertEventSeparators$separatorState$1", f = "Separators.kt", l = {616}, m = "invokeSuspend", v = 1)
public final class SeparatorsKt$insertEventSeparators$separatorState$1<R, T> extends pg8 implements dm3<T, T, e02<? super R>, Object> {
    final /* synthetic */ dm3<T, T, e02<? super R>, Object> $generator;
    /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SeparatorsKt$insertEventSeparators$separatorState$1(dm3<? super T, ? super T, ? super e02<? super R>, ? extends Object> dm3Var, e02<? super SeparatorsKt$insertEventSeparators$separatorState$1> e02Var) {
        super(3, e02Var);
        this.$generator = dm3Var;
    }

    @Override // defpackage.dm3
    public final Object invoke(T t, T t2, e02<? super R> e02Var) {
        SeparatorsKt$insertEventSeparators$separatorState$1 separatorsKt$insertEventSeparators$separatorState$1 = new SeparatorsKt$insertEventSeparators$separatorState$1(this.$generator, e02Var);
        separatorsKt$insertEventSeparators$separatorState$1.L$0 = t;
        separatorsKt$insertEventSeparators$separatorState$1.L$1 = t2;
        return separatorsKt$insertEventSeparators$separatorState$1.invokeSuspend(j59.a);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to androidx.paging.SeparatorsKt$insertEventSeparators$separatorState$1<R, T> for r5v2 'this'  java.lang.Object
        	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
        	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
        	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
        	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    @Override // defpackage.cd0
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r5.label
            r2 = 1
            if (r1 == 0) goto L14
            if (r1 != r2) goto Ld
            defpackage.r57.b(r6)
            return r6
        Ld:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r5)
            r5 = 0
            return r5
        L14:
            defpackage.r57.b(r6)
            java.lang.Object r6 = r5.L$0
            java.lang.Object r1 = r5.L$1
            dm3<T, T, e02<? super R>, java.lang.Object> r3 = r5.$generator
            r4 = 0
            r5.L$0 = r4
            r5.label = r2
            java.lang.Object r5 = r3.invoke(r6, r1, r5)
            if (r5 != r0) goto L29
            return r0
        L29:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.SeparatorsKt$insertEventSeparators$separatorState$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
