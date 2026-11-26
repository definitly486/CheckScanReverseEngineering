package androidx.lifecycle;

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
import defpackage.s0;
import defpackage.ug6;
import defpackage.y22;

/* JADX INFO: loaded from: classes3.dex */
public final class FlowExtKt {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.lifecycle.FlowExtKt$flowWithLifecycle$1, reason: invalid class name */
    @bd2(c = "androidx.lifecycle.FlowExtKt$flowWithLifecycle$1", f = "FlowExt.kt", l = {92}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1<T> extends pg8 implements bm3<ug6<? super T>, e02<? super j59>, Object> {
        final /* synthetic */ Lifecycle $lifecycle;
        final /* synthetic */ Lifecycle.State $minActiveState;
        final /* synthetic */ hd3<T> $this_flowWithLifecycle;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: renamed from: androidx.lifecycle.FlowExtKt$flowWithLifecycle$1$1, reason: invalid class name and collision with other inner class name */
        @bd2(c = "androidx.lifecycle.FlowExtKt$flowWithLifecycle$1$1", f = "FlowExt.kt", l = {92}, m = "invokeSuspend", v = 1)
        public static final class C00871 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
            final /* synthetic */ ug6<T> $$this$callbackFlow;
            final /* synthetic */ hd3<T> $this_flowWithLifecycle;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C00871(hd3<? extends T> hd3Var, ug6<? super T> ug6Var, e02<? super C00871> e02Var) {
                super(2, e02Var);
                this.$this_flowWithLifecycle = hd3Var;
                this.$$this$callbackFlow = ug6Var;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                return new C00871(this.$this_flowWithLifecycle, this.$$this$callbackFlow, e02Var);
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                return ((C00871) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i == 0) {
                    r57.b(obj);
                    hd3<T> hd3Var = this.$this_flowWithLifecycle;
                    final ug6<T> ug6Var = this.$$this$callbackFlow;
                    id3<? super T> id3Var = new id3() { // from class: androidx.lifecycle.FlowExtKt.flowWithLifecycle.1.1.1
                        @Override // defpackage.id3
                        public final Object emit(T t, e02<? super j59> e02Var) {
                            Object objSend = ug6Var.send(t, e02Var);
                            return objSend == a32.COROUTINE_SUSPENDED ? objSend : j59.a;
                        }
                    };
                    this.label = 1;
                    if (hd3Var.collect(id3Var, this) == a32Var) {
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

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(Lifecycle lifecycle, Lifecycle.State state, hd3<? extends T> hd3Var, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$lifecycle = lifecycle;
            this.$minActiveState = state;
            this.$this_flowWithLifecycle = hd3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$lifecycle, this.$minActiveState, this.$this_flowWithLifecycle, e02Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // defpackage.bm3
        public final Object invoke(ug6<? super T> ug6Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(ug6Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            ug6 ug6Var;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                ug6 ug6Var2 = (ug6) this.L$0;
                Lifecycle lifecycle = this.$lifecycle;
                Lifecycle.State state = this.$minActiveState;
                C00871 c00871 = new C00871(this.$this_flowWithLifecycle, ug6Var2, null);
                this.L$0 = ug6Var2;
                this.label = 1;
                if (RepeatOnLifecycleKt.repeatOnLifecycle(lifecycle, state, c00871, this) == a32Var) {
                    return a32Var;
                }
                ug6Var = ug6Var2;
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ug6Var = (ug6) this.L$0;
                r57.b(obj);
            }
            ug6Var.close(null);
            return j59.a;
        }
    }

    public static final <T> hd3<T> flowWithLifecycle(hd3<? extends T> hd3Var, Lifecycle lifecycle, Lifecycle.State state) {
        hd3Var.getClass();
        lifecycle.getClass();
        state.getClass();
        return s0.a(new AnonymousClass1(lifecycle, state, hd3Var, null));
    }

    public static /* synthetic */ hd3 flowWithLifecycle$default(hd3 hd3Var, Lifecycle lifecycle, Lifecycle.State state, int i, Object obj) {
        if ((i & 2) != 0) {
            state = Lifecycle.State.STARTED;
        }
        return flowWithLifecycle(hd3Var, lifecycle, state);
    }
}
