package androidx.compose.runtime;

import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.y22;

/* JADX INFO: loaded from: classes2.dex */
@bd2(c = "androidx.compose.runtime.SnapshotStateKt__ProduceStateKt$produceState$5$1", f = "ProduceState.kt", l = {204}, m = "invokeSuspend", v = 1)
public final class SnapshotStateKt__ProduceStateKt$produceState$5$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ bm3<ProduceStateScope<T>, e02<? super j59>, Object> $producer;
    final /* synthetic */ MutableState<T> $result;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SnapshotStateKt__ProduceStateKt$produceState$5$1(bm3<? super ProduceStateScope<T>, ? super e02<? super j59>, ? extends Object> bm3Var, MutableState<T> mutableState, e02<? super SnapshotStateKt__ProduceStateKt$produceState$5$1> e02Var) {
        super(2, e02Var);
        this.$producer = bm3Var;
        this.$result = mutableState;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        SnapshotStateKt__ProduceStateKt$produceState$5$1 snapshotStateKt__ProduceStateKt$produceState$5$1 = new SnapshotStateKt__ProduceStateKt$produceState$5$1(this.$producer, this.$result, e02Var);
        snapshotStateKt__ProduceStateKt$produceState$5$1.L$0 = obj;
        return snapshotStateKt__ProduceStateKt$produceState$5$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((SnapshotStateKt__ProduceStateKt$produceState$5$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to androidx.compose.runtime.SnapshotStateKt__ProduceStateKt$produceState$5$1 for r5v3 'this'  java.lang.Object
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
            goto L31
        Ld:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r5)
            r5 = 0
            return r5
        L14:
            defpackage.r57.b(r6)
            java.lang.Object r6 = r5.L$0
            y22 r6 = (defpackage.y22) r6
            bm3<androidx.compose.runtime.ProduceStateScope<T>, e02<? super j59>, java.lang.Object> r1 = r5.$producer
            androidx.compose.runtime.ProduceStateScopeImpl r3 = new androidx.compose.runtime.ProduceStateScopeImpl
            androidx.compose.runtime.MutableState<T> r4 = r5.$result
            o22 r6 = r6.getCoroutineContext()
            r3.<init>(r4, r6)
            r5.label = r2
            java.lang.Object r5 = r1.invoke(r3, r5)
            if (r5 != r0) goto L31
            return r0
        L31:
            j59 r5 = defpackage.j59.a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.SnapshotStateKt__ProduceStateKt$produceState$5$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
