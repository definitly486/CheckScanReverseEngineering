package androidx.compose.material3;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.gestures.AnchoredDragScope;
import androidx.compose.foundation.gestures.AnchoredDraggableDefaults;
import androidx.compose.foundation.gestures.AnchoredDraggableKt;
import androidx.compose.foundation.gestures.AnchoredDraggableState;
import androidx.compose.foundation.gestures.DraggableAnchors;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.unit.Density;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.fm3;
import defpackage.h8;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.o07;
import defpackage.pg8;
import defpackage.r57;
import defpackage.uf0;
import defpackage.uj;
import defpackage.ul2;
import defpackage.us2;
import defpackage.vs2;
import defpackage.ws2;

/* JADX INFO: loaded from: classes2.dex */
public final class DrawerState {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);
    private FiniteAnimationSpec<Float> anchoredDraggableMotionSpec;
    private final AnchoredDraggableState<DrawerValue> anchoredDraggableState;
    private FiniteAnimationSpec<Float> closeDrawerMotionSpec;
    private final nl3<DrawerValue, Boolean> confirmStateChange;
    private final MutableState density$delegate;
    private final State<Float> offset;
    private FiniteAnimationSpec<Float> openDrawerMotionSpec;

    /* JADX INFO: renamed from: androidx.compose.material3.DrawerState$animateTo$3, reason: invalid class name */
    @bd2(c = "androidx.compose.material3.DrawerState$animateTo$3", f = "NavigationDrawer.kt", l = {274}, m = "invokeSuspend")
    public static final class AnonymousClass3 extends pg8 implements fm3<AnchoredDragScope, DraggableAnchors<DrawerValue>, DrawerValue, e02<? super j59>, Object> {
        final /* synthetic */ AnimationSpec<Float> $animationSpec;
        final /* synthetic */ float $velocity;
        private /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        /* synthetic */ Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(float f, AnimationSpec<Float> animationSpec, e02<? super AnonymousClass3> e02Var) {
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
        public final Object invoke(AnchoredDragScope anchoredDragScope, DraggableAnchors<DrawerValue> draggableAnchors, DrawerValue drawerValue, e02<? super j59> e02Var) {
            AnonymousClass3 anonymousClass3 = DrawerState.this.new AnonymousClass3(this.$velocity, this.$animationSpec, e02Var);
            anonymousClass3.L$0 = anchoredDragScope;
            anonymousClass3.L$1 = draggableAnchors;
            anonymousClass3.L$2 = drawerValue;
            return anonymousClass3.invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                final AnchoredDragScope anchoredDragScope = (AnchoredDragScope) this.L$0;
                float fPositionOf = ((DraggableAnchors) this.L$1).positionOf((DrawerValue) this.L$2);
                if (!Float.isNaN(fPositionOf)) {
                    final o07 o07Var = new o07();
                    float currentOffset = Float.isNaN(DrawerState.this.getCurrentOffset()) ? 0.0f : DrawerState.this.getCurrentOffset();
                    o07Var.b = currentOffset;
                    float f = this.$velocity;
                    AnimationSpec<Float> animationSpec = this.$animationSpec;
                    bm3 bm3Var = new bm3() { // from class: androidx.compose.material3.h1
                        @Override // defpackage.bm3
                        public final Object invoke(Object obj2, Object obj3) {
                            return DrawerState.AnonymousClass3.invokeSuspend$lambda$0(anchoredDragScope, o07Var, ((Float) obj2).floatValue(), ((Float) obj3).floatValue());
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

    /* JADX WARN: Multi-variable type inference failed */
    public DrawerState(DrawerValue drawerValue, nl3<? super DrawerValue, Boolean> nl3Var) {
        this.confirmStateChange = nl3Var;
        TweenSpec tweenSpec = NavigationDrawerKt.AnchoredDraggableDefaultAnimationSpec;
        this.anchoredDraggableMotionSpec = tweenSpec;
        this.anchoredDraggableState = AnchoredDraggableKt.AnchoredDraggableState(drawerValue, new uf0(1), new uj(this, 3), tweenSpec, AnchoredDraggableDefaults.INSTANCE.getDecayAnimationSpec(), nl3Var);
        this.offset = new State<Float>() { // from class: androidx.compose.material3.DrawerState$offset$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.compose.runtime.State
            public Float getValue() {
                return Float.valueOf(this.this$0.getAnchoredDraggableState$material3().getOffset());
            }
        };
        this.density$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.openDrawerMotionSpec = AnimationSpecKt.snap$default(0, 1, null);
        this.closeDrawerMotionSpec = AnimationSpecKt.snap$default(0, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean _init_$lambda$0(DrawerValue drawerValue) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float anchoredDraggableState$lambda$1(float f) {
        return NavigationDrawerKt.DrawerPositionalThreshold * f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float anchoredDraggableState$lambda$3(DrawerState drawerState) {
        return drawerState.requireDensity().mo1434toPx0680j_4(NavigationDrawerKt.DrawerVelocityThreshold);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object animateTo(DrawerValue drawerValue, AnimationSpec<Float> animationSpec, float f, e02<? super j59> e02Var) {
        Object objAnchoredDrag$default = AnchoredDraggableState.anchoredDrag$default(this.anchoredDraggableState, drawerValue, null, new AnonymousClass3(f, animationSpec, null), e02Var, 2, null);
        return objAnchoredDrag$default == a32.COROUTINE_SUSPENDED ? objAnchoredDrag$default : j59.a;
    }

    public static /* synthetic */ Object animateTo$default(DrawerState drawerState, DrawerValue drawerValue, AnimationSpec animationSpec, float f, e02 e02Var, int i, Object obj) {
        if ((i & 4) != 0) {
            f = drawerState.anchoredDraggableState.getLastVelocity();
        }
        return drawerState.animateTo(drawerValue, animationSpec, f, e02Var);
    }

    public static /* synthetic */ void getAnchoredDraggableState$material3$annotations() {
    }

    @ul2
    public static /* synthetic */ void getOffset$annotations() {
    }

    private final Density requireDensity() {
        Density density$material3 = getDensity$material3();
        if (density$material3 != null) {
            return density$material3;
        }
        h8.f(this, "The density on DrawerState (", ") was not set. Did you use DrawerState with the ModalNavigationDrawer or DismissibleNavigationDrawer composables?");
        return null;
    }

    public final Object close(e02<? super j59> e02Var) {
        Object objAnimateTo$default = animateTo$default(this, DrawerValue.Closed, this.closeDrawerMotionSpec, 0.0f, e02Var, 4, null);
        return objAnimateTo$default == a32.COROUTINE_SUSPENDED ? objAnimateTo$default : j59.a;
    }

    public final FiniteAnimationSpec<Float> getAnchoredDraggableMotionSpec$material3() {
        return this.anchoredDraggableMotionSpec;
    }

    public final AnchoredDraggableState<DrawerValue> getAnchoredDraggableState$material3() {
        return this.anchoredDraggableState;
    }

    public final FiniteAnimationSpec<Float> getCloseDrawerMotionSpec$material3() {
        return this.closeDrawerMotionSpec;
    }

    public final nl3<DrawerValue, Boolean> getConfirmStateChange$material3() {
        return this.confirmStateChange;
    }

    public final float getCurrentOffset() {
        return this.anchoredDraggableState.getOffset();
    }

    public final DrawerValue getCurrentValue() {
        return this.anchoredDraggableState.getSettledValue();
    }

    public final Density getDensity$material3() {
        return (Density) this.density$delegate.getValue();
    }

    public final State<Float> getOffset() {
        return this.offset;
    }

    public final FiniteAnimationSpec<Float> getOpenDrawerMotionSpec$material3() {
        return this.openDrawerMotionSpec;
    }

    public final DrawerValue getTargetValue() {
        return this.anchoredDraggableState.getTargetValue();
    }

    public final boolean isAnimationRunning() {
        return this.anchoredDraggableState.isAnimationRunning();
    }

    public final boolean isClosed() {
        return getCurrentValue() == DrawerValue.Closed;
    }

    public final boolean isOpen() {
        return getCurrentValue() == DrawerValue.Open;
    }

    public final Object open(e02<? super j59> e02Var) {
        Object objAnimateTo$default = animateTo$default(this, DrawerValue.Open, this.openDrawerMotionSpec, 0.0f, e02Var, 4, null);
        return objAnimateTo$default == a32.COROUTINE_SUSPENDED ? objAnimateTo$default : j59.a;
    }

    public final float requireOffset$material3() {
        return this.anchoredDraggableState.requireOffset();
    }

    public final void setAnchoredDraggableMotionSpec$material3(FiniteAnimationSpec<Float> finiteAnimationSpec) {
        this.anchoredDraggableMotionSpec = finiteAnimationSpec;
    }

    public final void setCloseDrawerMotionSpec$material3(FiniteAnimationSpec<Float> finiteAnimationSpec) {
        this.closeDrawerMotionSpec = finiteAnimationSpec;
    }

    public final void setDensity$material3(Density density) {
        this.density$delegate.setValue(density);
    }

    public final void setOpenDrawerMotionSpec$material3(FiniteAnimationSpec<Float> finiteAnimationSpec) {
        this.openDrawerMotionSpec = finiteAnimationSpec;
    }

    public final Object snapTo(DrawerValue drawerValue, e02<? super j59> e02Var) {
        Object objSnapTo = AnchoredDraggableKt.snapTo(this.anchoredDraggableState, drawerValue, e02Var);
        return objSnapTo == a32.COROUTINE_SUSPENDED ? objSnapTo : j59.a;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final DrawerValue Saver$lambda$0(SaverScope saverScope, DrawerState drawerState) {
            return drawerState.getCurrentValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final DrawerState Saver$lambda$1(nl3 nl3Var, DrawerValue drawerValue) {
            return new DrawerState(drawerValue, nl3Var);
        }

        public final Saver<DrawerState, DrawerValue> Saver(nl3<? super DrawerValue, Boolean> nl3Var) {
            return SaverKt.Saver(new vs2(), new ws2(nl3Var, 0));
        }

        private Companion() {
        }
    }

    @ul2
    public final Object animateTo(DrawerValue drawerValue, AnimationSpec<Float> animationSpec, e02<? super j59> e02Var) {
        Object objAnimateTo$default = animateTo$default(this, drawerValue, animationSpec, 0.0f, e02Var, 4, null);
        return objAnimateTo$default == a32.COROUTINE_SUSPENDED ? objAnimateTo$default : j59.a;
    }

    public /* synthetic */ DrawerState(DrawerValue drawerValue, nl3 nl3Var, int i, jh2 jh2Var) {
        this(drawerValue, (i & 2) != 0 ? new us2(0) : nl3Var);
    }
}
