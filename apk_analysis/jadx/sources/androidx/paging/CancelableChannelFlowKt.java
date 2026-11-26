package androidx.paging;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.hd3;
import defpackage.j59;
import defpackage.mb4;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes3.dex */
public final class CancelableChannelFlowKt {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.paging.CancelableChannelFlowKt$cancelableChannelFlow$1, reason: invalid class name */
    @bd2(c = "androidx.paging.CancelableChannelFlowKt$cancelableChannelFlow$1", f = "CancelableChannelFlow.kt", l = {31}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1<T> extends pg8 implements bm3<SimpleProducerScope<T>, e02<? super j59>, Object> {
        final /* synthetic */ bm3<SimpleProducerScope<T>, e02<? super j59>, Object> $block;
        final /* synthetic */ mb4 $controller;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(mb4 mb4Var, bm3<? super SimpleProducerScope<T>, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$controller = mb4Var;
            this.$block = bm3Var;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$0(SimpleProducerScope simpleProducerScope, Throwable th) {
            simpleProducerScope.close(null);
            return j59.a;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$controller, this.$block, e02Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // defpackage.bm3
        public final Object invoke(SimpleProducerScope<T> simpleProducerScope, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(simpleProducerScope, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                final SimpleProducerScope<T> simpleProducerScope = (SimpleProducerScope) this.L$0;
                this.$controller.g(new nl3() { // from class: androidx.paging.b
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj2) {
                        return CancelableChannelFlowKt.AnonymousClass1.invokeSuspend$lambda$0(simpleProducerScope, (Throwable) obj2);
                    }
                });
                bm3<SimpleProducerScope<T>, e02<? super j59>, Object> bm3Var = this.$block;
                this.label = 1;
                if (bm3Var.invoke(simpleProducerScope, this) == a32Var) {
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

    public static final <T> hd3<T> cancelableChannelFlow(mb4 mb4Var, bm3<? super SimpleProducerScope<T>, ? super e02<? super j59>, ? extends Object> bm3Var) {
        mb4Var.getClass();
        bm3Var.getClass();
        return SimpleChannelFlowKt.simpleChannelFlow(new AnonymousClass1(mb4Var, bm3Var, null));
    }
}
