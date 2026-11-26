package androidx.paging;

import androidx.compose.ui.spatial.RectListKt;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.tb7;
import defpackage.ud3;
import defpackage.y22;
import defpackage.z22;

/* JADX INFO: loaded from: classes3.dex */
public final class SimpleChannelFlowKt {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.paging.SimpleChannelFlowKt$simpleChannelFlow$1, reason: invalid class name */
    @bd2(c = "androidx.paging.SimpleChannelFlowKt$simpleChannelFlow$1", f = "SimpleChannelFlow.kt", l = {46}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1<T> extends pg8 implements bm3<id3<? super T>, e02<? super j59>, Object> {
        final /* synthetic */ bm3<SimpleProducerScope<T>, e02<? super j59>, Object> $block;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: androidx.paging.SimpleChannelFlowKt$simpleChannelFlow$1$1, reason: invalid class name and collision with other inner class name */
        @bd2(c = "androidx.paging.SimpleChannelFlowKt$simpleChannelFlow$1$1", f = "SimpleChannelFlow.kt", l = {RectListKt.BitOffsetForGesturable, 63}, m = "invokeSuspend", v = 1)
        public static final class C01071 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
            final /* synthetic */ id3<T> $$this$flow;
            final /* synthetic */ bm3<SimpleProducerScope<T>, e02<? super j59>, Object> $block;
            private /* synthetic */ Object L$0;
            Object L$1;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C01071(id3<? super T> id3Var, bm3<? super SimpleProducerScope<T>, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super C01071> e02Var) {
                super(2, e02Var);
                this.$$this$flow = id3Var;
                this.$block = bm3Var;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                C01071 c01071 = new C01071(this.$$this$flow, this.$block, e02Var);
                c01071.L$0 = obj;
                return c01071;
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                return ((C01071) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0074 -> B:7:0x0018). Please report as a decompilation issue!!! */
            /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
                jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type e02 to androidx.paging.SimpleChannelFlowKt$simpleChannelFlow$1$1 for r8v2 'this'  e02
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
                    r2 = 2
                    r3 = 1
                    r4 = 0
                    if (r1 == 0) goto L2d
                    if (r1 == r3) goto L21
                    if (r1 != r2) goto L1b
                    java.lang.Object r1 = r8.L$1
                    k91 r1 = (defpackage.k91) r1
                    java.lang.Object r5 = r8.L$0
                    mb4 r5 = (defpackage.mb4) r5
                    defpackage.r57.b(r9)
                L18:
                    r9 = r5
                    r5 = r1
                    goto L4b
                L1b:
                    java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                    defpackage.ah.f(r8)
                    return r4
                L21:
                    java.lang.Object r1 = r8.L$1
                    k91 r1 = (defpackage.k91) r1
                    java.lang.Object r5 = r8.L$0
                    mb4 r5 = (defpackage.mb4) r5
                    defpackage.r57.b(r9)
                    goto L5c
                L2d:
                    defpackage.r57.b(r9)
                    java.lang.Object r9 = r8.L$0
                    y22 r9 = (defpackage.y22) r9
                    r1 = 0
                    r5 = 6
                    mu0 r1 = defpackage.l91.a(r1, r4, r4, r5)
                    androidx.paging.SimpleChannelFlowKt$simpleChannelFlow$1$1$producer$1 r5 = new androidx.paging.SimpleChannelFlowKt$simpleChannelFlow$1$1$producer$1
                    bm3<androidx.paging.SimpleProducerScope<T>, e02<? super j59>, java.lang.Object> r6 = r8.$block
                    r5.<init>(r1, r6, r4)
                    r6 = 3
                    s68 r9 = defpackage.av0.c(r9, r4, r4, r5, r6)
                    mu0$a r5 = new mu0$a
                    r5.<init>()
                L4b:
                    r8.L$0 = r9
                    r8.L$1 = r5
                    r8.label = r3
                    java.lang.Object r1 = r5.b(r8)
                    if (r1 != r0) goto L58
                    goto L76
                L58:
                    r7 = r5
                    r5 = r9
                    r9 = r1
                    r1 = r7
                L5c:
                    java.lang.Boolean r9 = (java.lang.Boolean) r9
                    boolean r9 = r9.booleanValue()
                    if (r9 == 0) goto L77
                    java.lang.Object r9 = r1.next()
                    id3<T> r6 = r8.$$this$flow
                    r8.L$0 = r5
                    r8.L$1 = r1
                    r8.label = r2
                    java.lang.Object r9 = r6.emit(r9, r8)
                    if (r9 != r0) goto L18
                L76:
                    return r0
                L77:
                    r5.cancel(r4)
                    j59 r8 = defpackage.j59.a
                    return r8
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.paging.SimpleChannelFlowKt.AnonymousClass1.C01071.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(bm3<? super SimpleProducerScope<T>, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$block = bm3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$block, e02Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // defpackage.bm3
        public final Object invoke(id3<? super T> id3Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(id3Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                C01071 c01071 = new C01071((id3) this.L$0, this.$block, null);
                this.label = 1;
                if (z22.c(c01071, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            return j59.a;
        }
    }

    public static final <T> hd3<T> simpleChannelFlow(bm3<? super SimpleProducerScope<T>, ? super e02<? super j59>, ? extends Object> bm3Var) {
        bm3Var.getClass();
        return ud3.a(new tb7(new AnonymousClass1(bm3Var, null)), -2);
    }
}
