package androidx.compose.animation;

import androidx.compose.animation.core.AnimationVector4D;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import defpackage.aa4;
import defpackage.gh4;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class BoundsAnimation {
    public static final int $stable = 8;
    private final MutableState animation$delegate;
    private FiniteAnimationSpec<Rect> animationSpec = BoundsAnimationKt.DefaultBoundsAnimation;
    private final MutableState animationState$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
    private final MutableState boundsTransform$delegate;
    private final ll3<Offset> momentumOffset;
    private final Transition<Boolean> transition;
    private final SharedTransitionScope transitionScope;

    /* JADX INFO: renamed from: androidx.compose.animation.BoundsAnimation$animate$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements nl3<Transition.Segment<Boolean>, FiniteAnimationSpec<Rect>> {
        public AnonymousClass1() {
            super(1);
        }

        @Override // defpackage.nl3
        public final FiniteAnimationSpec<Rect> invoke(Transition.Segment<Boolean> segment) {
            return BoundsAnimation.this.getAnimationSpec();
        }
    }

    public BoundsAnimation(SharedTransitionScope sharedTransitionScope, Transition<Boolean> transition, Transition<Boolean>.DeferredAnimation<Rect, AnimationVector4D> deferredAnimation, BoundsTransform boundsTransform, ll3<Offset> ll3Var) {
        this.transitionScope = sharedTransitionScope;
        this.transition = transition;
        this.momentumOffset = ll3Var;
        this.animation$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(deferredAnimation, null, 2, null);
        this.boundsTransform$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(boundsTransform, null, 2, null);
    }

    public static /* synthetic */ void animate$default(BoundsAnimation boundsAnimation, Rect rect, Rect rect2, BoundsTransform boundsTransform, int i, Object obj) {
        if ((i & 4) != 0) {
            boundsTransform = null;
        }
        boundsAnimation.animate(rect, rect2, boundsTransform);
    }

    private final BoundsTransform getBoundsTransform() {
        return (BoundsTransform) this.boundsTransform$delegate.getValue();
    }

    private final void setAnimation(Transition<Boolean>.DeferredAnimation<Rect, AnimationVector4D> deferredAnimation) {
        this.animation$delegate.setValue(deferredAnimation);
    }

    private final void setBoundsTransform(BoundsTransform boundsTransform) {
        this.boundsTransform$delegate.setValue(boundsTransform);
    }

    public final void animate(Rect rect, Rect rect2, BoundsTransform boundsTransform) {
        if (this.transitionScope.isTransitionActive()) {
            if (getAnimationState() == null) {
                if (boundsTransform == null) {
                    boundsTransform = getBoundsTransform();
                }
                this.animationSpec = boundsTransform.createAnimationSpec(rect, rect2);
            }
            setAnimationState(getAnimation().animate(new AnonymousClass1(), new AnonymousClass2(rect2, rect)));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Transition<Boolean>.DeferredAnimation<Rect, AnimationVector4D> getAnimation() {
        return (Transition.DeferredAnimation) this.animation$delegate.getValue();
    }

    public final FiniteAnimationSpec<Rect> getAnimationSpec() {
        return this.animationSpec;
    }

    public final State<Rect> getAnimationState() {
        return (State) this.animationState$delegate.getValue();
    }

    public final ll3<Offset> getMomentumOffset() {
        return this.momentumOffset;
    }

    public final boolean getTarget() {
        return this.transition.getTargetState().booleanValue();
    }

    public final Transition<Boolean> getTransition() {
        return this.transition;
    }

    public final SharedTransitionScope getTransitionScope() {
        return this.transitionScope;
    }

    public final Rect getValue() {
        State<Rect> animationState;
        Rect value;
        if (!this.transitionScope.isTransitionActive() || (animationState = getAnimationState()) == null || (value = animationState.getValue()) == null) {
            return null;
        }
        long jM5997unboximpl = this.momentumOffset.invoke().m5997unboximpl();
        return !Offset.m5984equalsimpl0(jM5997unboximpl, Offset.Companion.m6003getZeroF1C5BW0()) ? value.m6024translatek4lQ0M(jM5997unboximpl) : value;
    }

    public final boolean isRunning() {
        Transition parentTransition = this.transition;
        while (parentTransition.getParentTransition() != null) {
            parentTransition = parentTransition.getParentTransition();
            parentTransition.getClass();
        }
        return !aa4.e(parentTransition.getCurrentState(), parentTransition.getTargetState());
    }

    public final void setAnimationSpec(FiniteAnimationSpec<Rect> finiteAnimationSpec) {
        this.animationSpec = finiteAnimationSpec;
    }

    public final void setAnimationState(State<Rect> state) {
        this.animationState$delegate.setValue(state);
    }

    public final void updateAnimation(Transition<Boolean>.DeferredAnimation<Rect, AnimationVector4D> deferredAnimation, BoundsTransform boundsTransform) {
        if (!aa4.e(getAnimation(), deferredAnimation)) {
            setAnimation(deferredAnimation);
            setAnimationState(null);
            this.animationSpec = BoundsAnimationKt.DefaultBoundsAnimation;
        }
        setBoundsTransform(boundsTransform);
    }

    /* JADX INFO: renamed from: androidx.compose.animation.BoundsAnimation$animate$2, reason: invalid class name */
    public static final class AnonymousClass2 extends gh4 implements nl3<Boolean, Rect> {
        final /* synthetic */ Rect $currentBounds;
        final /* synthetic */ Rect $targetBounds;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Rect rect, Rect rect2) {
            super(1);
            this.$targetBounds = rect;
            this.$currentBounds = rect2;
        }

        public final Rect invoke(boolean z) {
            return z == BoundsAnimation.this.getTransition().getTargetState().booleanValue() ? this.$targetBounds : this.$currentBounds;
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ Rect invoke(Boolean bool) {
            return invoke(bool.booleanValue());
        }
    }
}
