package androidx.paging;

import androidx.constraintlayout.widget.ConstraintLayout;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.x81;
import defpackage.y22;
import defpackage.z22;

/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.paging.SimpleChannelFlowKt$simpleChannelFlow$1$1$producer$1", f = "SimpleChannelFlow.kt", l = {52}, m = "invokeSuspend", v = 1)
public final class SimpleChannelFlowKt$simpleChannelFlow$1$1$producer$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ bm3<SimpleProducerScope<T>, e02<? super j59>, Object> $block;
    final /* synthetic */ x81<T> $channel;
    int label;

    /* JADX INFO: renamed from: androidx.paging.SimpleChannelFlowKt$simpleChannelFlow$1$1$producer$1$1, reason: invalid class name */
    @bd2(c = "androidx.paging.SimpleChannelFlowKt$simpleChannelFlow$1$1$producer$1$1", f = "SimpleChannelFlow.kt", l = {ConstraintLayout.LayoutParams.Table.LAYOUT_GONE_MARGIN_BASELINE}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ bm3<SimpleProducerScope<T>, e02<? super j59>, Object> $block;
        final /* synthetic */ x81<T> $channel;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(x81<T> x81Var, bm3<? super SimpleProducerScope<T>, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$channel = x81Var;
            this.$block = bm3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$channel, this.$block, e02Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to androidx.paging.SimpleChannelFlowKt$simpleChannelFlow$1$1$producer$1$1 for r4v3 'this'  java.lang.Object
            	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
            	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
            	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
            	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
            	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
            */
        @Override // defpackage.cd0
        public final java.lang.Object invokeSuspend(java.lang.Object r5) {
            /*
                r4 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r4.label
                r2 = 1
                if (r1 == 0) goto L14
                if (r1 != r2) goto Ld
                defpackage.r57.b(r5)
                goto L2d
            Ld:
                java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r4)
                r4 = 0
                return r4
            L14:
                defpackage.r57.b(r5)
                java.lang.Object r5 = r4.L$0
                y22 r5 = (defpackage.y22) r5
                androidx.paging.SimpleProducerScopeImpl r1 = new androidx.paging.SimpleProducerScopeImpl
                x81<T> r3 = r4.$channel
                r1.<init>(r5, r3)
                bm3<androidx.paging.SimpleProducerScope<T>, e02<? super j59>, java.lang.Object> r5 = r4.$block
                r4.label = r2
                java.lang.Object r4 = r5.invoke(r1, r4)
                if (r4 != r0) goto L2d
                return r0
            L2d:
                j59 r4 = defpackage.j59.a
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.SimpleChannelFlowKt$simpleChannelFlow$1$1$producer$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SimpleChannelFlowKt$simpleChannelFlow$1$1$producer$1(x81<T> x81Var, bm3<? super SimpleProducerScope<T>, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super SimpleChannelFlowKt$simpleChannelFlow$1$1$producer$1> e02Var) {
        super(2, e02Var);
        this.$channel = x81Var;
        this.$block = bm3Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new SimpleChannelFlowKt$simpleChannelFlow$1$1$producer$1(this.$channel, this.$block, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((SimpleChannelFlowKt$simpleChannelFlow$1$1$producer$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        try {
            if (i == 0) {
                r57.b(obj);
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$channel, this.$block, null);
                this.label = 1;
                if (z22.c(anonymousClass1, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            this.$channel.close(null);
        } catch (Throwable th) {
            this.$channel.close(th);
        }
        return j59.a;
    }
}
