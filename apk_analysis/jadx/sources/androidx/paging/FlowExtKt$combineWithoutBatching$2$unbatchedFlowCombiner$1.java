package androidx.paging;

import defpackage.bd2;
import defpackage.e02;
import defpackage.fm3;
import defpackage.j59;
import defpackage.pg8;

/* JADX INFO: Add missing generic type declarations: [T1, T2] */
/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.paging.FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1", f = "FlowExt.kt", l = {126, 126}, m = "invokeSuspend", v = 1)
public final class FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1<T1, T2> extends pg8 implements fm3<T1, T2, CombineSource, e02<? super j59>, Object> {
    final /* synthetic */ SimpleProducerScope<R> $$this$simpleChannelFlow;
    final /* synthetic */ fm3<T1, T2, CombineSource, e02<? super R>, Object> $transform;
    /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    /* synthetic */ Object L$2;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1(SimpleProducerScope<R> simpleProducerScope, fm3<? super T1, ? super T2, ? super CombineSource, ? super e02<? super R>, ? extends Object> fm3Var, e02<? super FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1> e02Var) {
        super(4, e02Var);
        this.$$this$simpleChannelFlow = simpleProducerScope;
        this.$transform = fm3Var;
    }

    @Override // defpackage.fm3
    public final Object invoke(T1 t1, T2 t2, CombineSource combineSource, e02<? super j59> e02Var) {
        FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1 flowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1 = new FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1(this.$$this$simpleChannelFlow, this.$transform, e02Var);
        flowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1.L$0 = t1;
        flowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1.L$1 = t2;
        flowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1.L$2 = combineSource;
        return flowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1.invokeSuspend(j59.a);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to androidx.paging.FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1<T1, T2> for r8v3 'this'  java.lang.Object
        	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
        	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
        	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
        	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    @Override // defpackage.cd0
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
            int r1 = r8.label
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L20
            if (r1 == r4) goto L18
            if (r1 != r3) goto L11
            defpackage.r57.b(r9)
            goto L48
        L11:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.ah.f(r8)
            r8 = 0
            return r8
        L18:
            java.lang.Object r1 = r8.L$0
            androidx.paging.SimpleProducerScope r1 = (androidx.paging.SimpleProducerScope) r1
            defpackage.r57.b(r9)
            goto L3d
        L20:
            defpackage.r57.b(r9)
            java.lang.Object r9 = r8.L$0
            java.lang.Object r1 = r8.L$1
            java.lang.Object r5 = r8.L$2
            androidx.paging.CombineSource r5 = (androidx.paging.CombineSource) r5
            androidx.paging.SimpleProducerScope<R> r6 = r8.$$this$simpleChannelFlow
            fm3<T1, T2, androidx.paging.CombineSource, e02<? super R>, java.lang.Object> r7 = r8.$transform
            r8.L$0 = r6
            r8.L$1 = r2
            r8.label = r4
            java.lang.Object r9 = r7.invoke(r9, r1, r5, r8)
            if (r9 != r0) goto L3c
            goto L47
        L3c:
            r1 = r6
        L3d:
            r8.L$0 = r2
            r8.label = r3
            java.lang.Object r8 = r1.send(r9, r8)
            if (r8 != r0) goto L48
        L47:
            return r0
        L48:
            j59 r8 = defpackage.j59.a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to androidx.paging.FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1<T1, T2> for r4v2 'this'  java.lang.Object
        	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
        	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
        	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
        	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    public final java.lang.Object invokeSuspend$$forInline(java.lang.Object r5) {
        /*
            r4 = this;
            java.lang.Object r5 = r4.L$0
            java.lang.Object r0 = r4.L$1
            java.lang.Object r1 = r4.L$2
            androidx.paging.CombineSource r1 = (androidx.paging.CombineSource) r1
            androidx.paging.SimpleProducerScope<R> r2 = r4.$$this$simpleChannelFlow
            fm3<T1, T2, androidx.paging.CombineSource, e02<? super R>, java.lang.Object> r3 = r4.$transform
            java.lang.Object r5 = r3.invoke(r5, r0, r1, r4)
            r2.send(r5, r4)
            j59 r4 = defpackage.j59.a
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1.invokeSuspend$$forInline(java.lang.Object):java.lang.Object");
    }
}
