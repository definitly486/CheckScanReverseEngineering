package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.geometry.Offset;
import androidx.media3.muxer.MuxerUtil;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import defpackage.z22;

/* JADX INFO: loaded from: classes.dex */
final class DefaultScrollable2DState implements Scrollable2DState {
    private final nl3<Offset, Offset> onDelta;
    private final Scroll2DScope scrollScope = new Scroll2DScope() { // from class: androidx.compose.foundation.gestures.DefaultScrollable2DState$scrollScope$1
        @Override // androidx.compose.foundation.gestures.Scroll2DScope
        /* JADX INFO: renamed from: scrollBy-MK-Hz9U, reason: not valid java name */
        public long mo1475scrollByMKHz9U(long j) {
            return (Float.isNaN(Float.intBitsToFloat((int) (j >> 32))) || Float.isNaN(Float.intBitsToFloat((int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & j)))) ? Offset.Companion.m6003getZeroF1C5BW0() : this.this$0.getOnDelta().invoke(Offset.m5976boximpl(j)).m5997unboximpl();
        }
    };
    private final MutatorMutex scrollMutex = new MutatorMutex();
    private final MutableState<Boolean> isScrollingState = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DefaultScrollable2DState$scroll$2, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.DefaultScrollable2DState$scroll$2", f = "Scrollable2DState.kt", l = {146}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ bm3<Scroll2DScope, e02<? super j59>, Object> $block;
        final /* synthetic */ MutatePriority $scrollPriority;
        int label;

        /* JADX INFO: renamed from: androidx.compose.foundation.gestures.DefaultScrollable2DState$scroll$2$1, reason: invalid class name */
        @bd2(c = "androidx.compose.foundation.gestures.DefaultScrollable2DState$scroll$2$1", f = "Scrollable2DState.kt", l = {149}, m = "invokeSuspend", v = 1)
        public static final class AnonymousClass1 extends pg8 implements bm3<Scroll2DScope, e02<? super j59>, Object> {
            final /* synthetic */ bm3<Scroll2DScope, e02<? super j59>, Object> $block;
            private /* synthetic */ Object L$0;
            int label;
            final /* synthetic */ DefaultScrollable2DState this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public AnonymousClass1(DefaultScrollable2DState defaultScrollable2DState, bm3<? super Scroll2DScope, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super AnonymousClass1> e02Var) {
                super(2, e02Var);
                this.this$0 = defaultScrollable2DState;
                this.$block = bm3Var;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$block, e02Var);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // defpackage.bm3
            public final Object invoke(Scroll2DScope scroll2DScope, e02<? super j59> e02Var) {
                return ((AnonymousClass1) create(scroll2DScope, e02Var)).invokeSuspend(j59.a);
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r4v6, types: [j59, java.lang.Object] */
            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                try {
                    if (i == 0) {
                        r57.b(obj);
                        Scroll2DScope scroll2DScope = (Scroll2DScope) this.L$0;
                        this.this$0.isScrollingState.setValue(Boolean.TRUE);
                        bm3<Scroll2DScope, e02<? super j59>, Object> bm3Var = this.$block;
                        this.label = 1;
                        if (bm3Var.invoke(scroll2DScope, this) == a32Var) {
                            return a32Var;
                        }
                    } else {
                        if (i != 1) {
                            ah.f("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        r57.b(obj);
                    }
                    this.this$0.isScrollingState.setValue(Boolean.FALSE);
                    this = j59.a;
                    return this;
                } catch (Throwable th) {
                    this.this$0.isScrollingState.setValue(Boolean.FALSE);
                    throw th;
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(MutatePriority mutatePriority, bm3<? super Scroll2DScope, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$scrollPriority = mutatePriority;
            this.$block = bm3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return DefaultScrollable2DState.this.new AnonymousClass2(this.$scrollPriority, this.$block, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                MutatorMutex mutatorMutex = DefaultScrollable2DState.this.scrollMutex;
                Scroll2DScope scroll2DScope = DefaultScrollable2DState.this.scrollScope;
                MutatePriority mutatePriority = this.$scrollPriority;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(DefaultScrollable2DState.this, this.$block, null);
                this.label = 1;
                if (mutatorMutex.mutateWith(scroll2DScope, mutatePriority, anonymousClass1, this) == a32Var) {
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

    /* JADX WARN: Multi-variable type inference failed */
    public DefaultScrollable2DState(nl3<? super Offset, Offset> nl3Var) {
        this.onDelta = nl3Var;
    }

    @Override // androidx.compose.foundation.gestures.Scrollable2DState
    /* JADX INFO: renamed from: canScroll-k-4lQ0M, reason: not valid java name */
    public boolean mo1473canScrollk4lQ0M(long j) {
        return true;
    }

    @Override // androidx.compose.foundation.gestures.Scrollable2DState
    /* JADX INFO: renamed from: dispatchRawDelta-MK-Hz9U, reason: not valid java name */
    public long mo1474dispatchRawDeltaMKHz9U(long j) {
        return this.onDelta.invoke(Offset.m5976boximpl(j)).m5997unboximpl();
    }

    public final nl3<Offset, Offset> getOnDelta() {
        return this.onDelta;
    }

    @Override // androidx.compose.foundation.gestures.Scrollable2DState
    public boolean isScrollInProgress() {
        return this.isScrollingState.getValue().booleanValue();
    }

    @Override // androidx.compose.foundation.gestures.Scrollable2DState
    public Object scroll(MutatePriority mutatePriority, bm3<? super Scroll2DScope, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super j59> e02Var) {
        Object objC = z22.c(new AnonymousClass2(mutatePriority, bm3Var, null), e02Var);
        return objC == a32.COROUTINE_SUSPENDED ? objC : j59.a;
    }
}
