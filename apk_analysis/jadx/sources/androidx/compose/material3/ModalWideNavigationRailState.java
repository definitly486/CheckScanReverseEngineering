package androidx.compose.material3;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.material3.internal.AnchoredDragScope;
import androidx.compose.material3.internal.AnchoredDraggableKt;
import androidx.compose.material3.internal.AnchoredDraggableState;
import androidx.compose.material3.internal.DraggableAnchors;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.media3.extractor.ts.PsExtractor;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.fm3;
import defpackage.gc5;
import defpackage.hc5;
import defpackage.j59;
import defpackage.ni;
import defpackage.o07;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes2.dex */
public final class ModalWideNavigationRailState implements WideNavigationRailState {
    public static final int $stable = 8;
    private final /* synthetic */ WideNavigationRailState $$delegate_0;
    private final AnchoredDraggableState<WideNavigationRailValue> anchoredDraggableState;
    private final AnimationSpec<Float> animationSpec;

    /* JADX INFO: renamed from: androidx.compose.material3.ModalWideNavigationRailState$animateTo$2, reason: invalid class name */
    @bd2(c = "androidx.compose.material3.ModalWideNavigationRailState$animateTo$2", f = "WideNavigationRailState.kt", l = {PsExtractor.VIDEO_STREAM_MASK}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends pg8 implements fm3<AnchoredDragScope, DraggableAnchors<WideNavigationRailValue>, WideNavigationRailValue, e02<? super j59>, Object> {
        final /* synthetic */ AnimationSpec<Float> $animationSpec;
        final /* synthetic */ float $velocity;
        private /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        /* synthetic */ Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(float f, AnimationSpec<Float> animationSpec, e02<? super AnonymousClass2> e02Var) {
            super(4, e02Var);
            this.$velocity = f;
            this.$animationSpec = animationSpec;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$0(AnchoredDragScope anchoredDragScope, o07 o07Var, float f, float f2) {
            anchoredDragScope.dragTo(f, f2);
            o07Var.b = f;
            return j59.a;
        }

        @Override // defpackage.fm3
        public final Object invoke(AnchoredDragScope anchoredDragScope, DraggableAnchors<WideNavigationRailValue> draggableAnchors, WideNavigationRailValue wideNavigationRailValue, e02<? super j59> e02Var) {
            AnonymousClass2 anonymousClass2 = ModalWideNavigationRailState.this.new AnonymousClass2(this.$velocity, this.$animationSpec, e02Var);
            anonymousClass2.L$0 = anchoredDragScope;
            anonymousClass2.L$1 = draggableAnchors;
            anonymousClass2.L$2 = wideNavigationRailValue;
            return anonymousClass2.invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                final AnchoredDragScope anchoredDragScope = (AnchoredDragScope) this.L$0;
                float fPositionOf = ((DraggableAnchors) this.L$1).positionOf((WideNavigationRailValue) this.L$2);
                if (!Float.isNaN(fPositionOf)) {
                    final o07 o07Var = new o07();
                    float currentOffset = Float.isNaN(ModalWideNavigationRailState.this.getCurrentOffset()) ? 0.0f : ModalWideNavigationRailState.this.getCurrentOffset();
                    o07Var.b = currentOffset;
                    float f = this.$velocity;
                    AnimationSpec<Float> animationSpec = this.$animationSpec;
                    bm3 bm3Var = new bm3() { // from class: androidx.compose.material3.r2
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj2, Object obj3) {
                            return ModalWideNavigationRailState.AnonymousClass2.invokeSuspend$lambda$0(anchoredDragScope, o07Var, ((Float) obj2).floatValue(), ((Float) obj3).floatValue());
                        }
                    };
                    this.L$0 = null;
                    this.L$1 = null;
                    this.label = 1;
                    if (SuspendAnimationKt.animate(currentOffset, fPositionOf, f, animationSpec, bm3Var, this) == a32Var) {
                        return a32Var;
                    }
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

    public ModalWideNavigationRailState(WideNavigationRailState wideNavigationRailState, Density density, AnimationSpec<Float> animationSpec) {
        this.$$delegate_0 = wideNavigationRailState;
        this.animationSpec = animationSpec;
        int i = 0;
        this.anchoredDraggableState = new AnchoredDraggableState<>(wideNavigationRailState.getTargetValue(), new ni(4), new gc5(density, i), new hc5(this, i), null, 16, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float anchoredDraggableState$lambda$0(float f) {
        return f * 0.5f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float anchoredDraggableState$lambda$2(Density density) {
        return density.mo1434toPx0680j_4(Dp.m9042constructorimpl(400.0f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object animateTo(WideNavigationRailValue wideNavigationRailValue, AnimationSpec<Float> animationSpec, float f, e02<? super j59> e02Var) {
        Object objAnchoredDrag$default = AnchoredDraggableState.anchoredDrag$default(this.anchoredDraggableState, wideNavigationRailValue, null, new AnonymousClass2(f, animationSpec, null), e02Var, 2, null);
        return objAnchoredDrag$default == a32.COROUTINE_SUSPENDED ? objAnchoredDrag$default : j59.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object animateTo$default(ModalWideNavigationRailState modalWideNavigationRailState, WideNavigationRailValue wideNavigationRailValue, AnimationSpec animationSpec, float f, e02 e02Var, int i, Object obj) {
        if ((i & 2) != 0) {
            animationSpec = modalWideNavigationRailState.animationSpec;
        }
        if ((i & 4) != 0) {
            f = modalWideNavigationRailState.anchoredDraggableState.getLastVelocity();
        }
        return modalWideNavigationRailState.animateTo(wideNavigationRailValue, animationSpec, f, e02Var);
    }

    @Override // androidx.compose.material3.WideNavigationRailState
    public Object collapse(e02<? super j59> e02Var) {
        Object objAnimateTo$default = animateTo$default(this, WideNavigationRailValue.Collapsed, null, 0.0f, e02Var, 6, null);
        return objAnimateTo$default == a32.COROUTINE_SUSPENDED ? objAnimateTo$default : j59.a;
    }

    @Override // androidx.compose.material3.WideNavigationRailState
    public Object expand(e02<? super j59> e02Var) {
        Object objAnimateTo$default = animateTo$default(this, WideNavigationRailValue.Expanded, null, 0.0f, e02Var, 6, null);
        return objAnimateTo$default == a32.COROUTINE_SUSPENDED ? objAnimateTo$default : j59.a;
    }

    public final AnchoredDraggableState<WideNavigationRailValue> getAnchoredDraggableState$material3() {
        return this.anchoredDraggableState;
    }

    public final AnimationSpec<Float> getAnimationSpec() {
        return this.animationSpec;
    }

    public final float getCurrentOffset() {
        return this.anchoredDraggableState.getOffset();
    }

    @Override // androidx.compose.material3.WideNavigationRailState
    public WideNavigationRailValue getCurrentValue() {
        return this.anchoredDraggableState.getCurrentValue();
    }

    @Override // androidx.compose.material3.WideNavigationRailState
    public WideNavigationRailValue getTargetValue() {
        return this.anchoredDraggableState.getTargetValue();
    }

    @Override // androidx.compose.material3.WideNavigationRailState
    public boolean isAnimating() {
        return this.anchoredDraggableState.isAnimationRunning();
    }

    public final Object settle$material3(float f, e02<? super j59> e02Var) {
        Object obj = this.anchoredDraggableState.settle(f, e02Var);
        return obj == a32.COROUTINE_SUSPENDED ? obj : j59.a;
    }

    @Override // androidx.compose.material3.WideNavigationRailState
    public Object snapTo(WideNavigationRailValue wideNavigationRailValue, e02<? super j59> e02Var) {
        Object objSnapTo = AnchoredDraggableKt.snapTo(this.anchoredDraggableState, wideNavigationRailValue, e02Var);
        return objSnapTo == a32.COROUTINE_SUSPENDED ? objSnapTo : j59.a;
    }

    @Override // androidx.compose.material3.WideNavigationRailState
    public Object toggle(e02<? super j59> e02Var) {
        Object objAnimateTo$default = animateTo$default(this, WideNavigationRailStateKt.not(getTargetValue()), null, 0.0f, e02Var, 6, null);
        return objAnimateTo$default == a32.COROUTINE_SUSPENDED ? objAnimateTo$default : j59.a;
    }
}
