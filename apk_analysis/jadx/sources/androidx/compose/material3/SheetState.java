package androidx.compose.material3;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.material3.SheetState;
import androidx.compose.material3.SheetValue;
import androidx.compose.material3.internal.AnchoredDraggableKt;
import androidx.compose.material3.internal.AnchoredDraggableState;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.unit.Density;
import defpackage.a32;
import defpackage.a43;
import defpackage.ah;
import defpackage.ao3;
import defpackage.by0;
import defpackage.e02;
import defpackage.fg;
import defpackage.j59;
import defpackage.jh2;
import defpackage.jj5;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.r54;
import defpackage.rg0;
import defpackage.to;
import defpackage.ul2;
import defpackage.xn3;
import defpackage.zg0;

/* JADX INFO: loaded from: classes2.dex */
public final class SheetState {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);
    private AnimationSpec<Float> anchoredDraggableMotionSpec;
    private AnchoredDraggableState<SheetValue> anchoredDraggableState;
    private final nl3<SheetValue, Boolean> confirmValueChange;
    private FiniteAnimationSpec<Float> hideMotionSpec;
    private FiniteAnimationSpec<Float> showMotionSpec;
    private final boolean skipHiddenState;
    private final boolean skipPartiallyExpanded;

    /* JADX WARN: Multi-variable type inference failed */
    public SheetState(boolean z, ll3<Float> ll3Var, ll3<Float> ll3Var2, SheetValue sheetValue, nl3<? super SheetValue, Boolean> nl3Var, boolean z2) {
        this.skipPartiallyExpanded = z;
        this.confirmValueChange = nl3Var;
        this.skipHiddenState = z2;
        if (z && sheetValue == SheetValue.PartiallyExpanded) {
            fg.c("The initial value must not be set to PartiallyExpanded if skipPartiallyExpanded is set to true.");
            throw null;
        }
        if (z2 && sheetValue == SheetValue.Hidden) {
            fg.c("The initial value must not be set to Hidden if skipHiddenState is set to true.");
            throw null;
        }
        this.anchoredDraggableMotionSpec = SheetDefaultsKt.BottomSheetAnimationSpec;
        this.anchoredDraggableState = new AnchoredDraggableState<>(sheetValue, new by0(ll3Var, 1), ll3Var2, new rg0(this, 3), nl3Var);
        this.showMotionSpec = AnimationSpecKt.snap$default(0, 1, null);
        this.hideMotionSpec = AnimationSpecKt.snap$default(0, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean _init_$lambda$0(SheetValue sheetValue) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float _init_$lambda$11(Density density) {
        return density.mo1434toPx0680j_4(BottomSheetDefaults.INSTANCE.m3124getVelocityThresholdD9Ej5fM$material3());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean _init_$lambda$7(SheetValue sheetValue) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float _init_$lambda$9(Density density) {
        return density.mo1434toPx0680j_4(BottomSheetDefaults.INSTANCE.m3121getPositionalThresholdD9Ej5fM$material3());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float anchoredDraggableState$lambda$5(ll3 ll3Var, float f) {
        return ((Number) ll3Var.invoke()).floatValue();
    }

    public static /* synthetic */ Object animateTo$material3$default(SheetState sheetState, SheetValue sheetValue, FiniteAnimationSpec finiteAnimationSpec, float f, e02 e02Var, int i, Object obj) {
        if ((i & 4) != 0) {
            f = sheetState.anchoredDraggableState.getLastVelocity();
        }
        return sheetState.animateTo$material3(sheetValue, finiteAnimationSpec, f, e02Var);
    }

    public final Object animateTo$material3(SheetValue sheetValue, FiniteAnimationSpec<Float> finiteAnimationSpec, float f, e02<? super j59> e02Var) {
        Object objAnchoredDrag$default = AnchoredDraggableState.anchoredDrag$default(this.anchoredDraggableState, sheetValue, null, new SheetState$animateTo$2(this, f, finiteAnimationSpec, null), e02Var, 2, null);
        return objAnchoredDrag$default == a32.COROUTINE_SUSPENDED ? objAnchoredDrag$default : j59.a;
    }

    public final Object expand(e02<? super j59> e02Var) {
        Object objAnimateTo$material3$default;
        nl3<SheetValue, Boolean> nl3Var = this.confirmValueChange;
        SheetValue sheetValue = SheetValue.Expanded;
        return (nl3Var.invoke(sheetValue).booleanValue() && (objAnimateTo$material3$default = animateTo$material3$default(this, sheetValue, this.showMotionSpec, 0.0f, e02Var, 4, null)) == a32.COROUTINE_SUSPENDED) ? objAnimateTo$material3$default : j59.a;
    }

    public final AnimationSpec<Float> getAnchoredDraggableMotionSpec$material3() {
        return this.anchoredDraggableMotionSpec;
    }

    public final AnchoredDraggableState<SheetValue> getAnchoredDraggableState$material3() {
        return this.anchoredDraggableState;
    }

    public final nl3<SheetValue, Boolean> getConfirmValueChange$material3() {
        return this.confirmValueChange;
    }

    public final SheetValue getCurrentValue() {
        return this.anchoredDraggableState.getCurrentValue();
    }

    public final boolean getHasExpandedState() {
        return this.anchoredDraggableState.getAnchors().hasAnchorFor(SheetValue.Expanded);
    }

    public final boolean getHasPartiallyExpandedState() {
        return this.anchoredDraggableState.getAnchors().hasAnchorFor(SheetValue.PartiallyExpanded);
    }

    public final FiniteAnimationSpec<Float> getHideMotionSpec$material3() {
        return this.hideMotionSpec;
    }

    public final float getOffset$material3() {
        return this.anchoredDraggableState.getOffset();
    }

    public final FiniteAnimationSpec<Float> getShowMotionSpec$material3() {
        return this.showMotionSpec;
    }

    public final boolean getSkipHiddenState$material3() {
        return this.skipHiddenState;
    }

    public final boolean getSkipPartiallyExpanded$material3() {
        return this.skipPartiallyExpanded;
    }

    public final SheetValue getTargetValue() {
        return this.anchoredDraggableState.getTargetValue();
    }

    public final Object hide(e02<? super j59> e02Var) {
        Object objAnimateTo$material3$default;
        if (this.skipHiddenState) {
            ah.f("Attempted to animate to hidden when skipHiddenState was enabled. Set skipHiddenState to false to use this function.");
            return null;
        }
        nl3<SheetValue, Boolean> nl3Var = this.confirmValueChange;
        SheetValue sheetValue = SheetValue.Hidden;
        return (nl3Var.invoke(sheetValue).booleanValue() && (objAnimateTo$material3$default = animateTo$material3$default(this, sheetValue, this.hideMotionSpec, 0.0f, e02Var, 4, null)) == a32.COROUTINE_SUSPENDED) ? objAnimateTo$material3$default : j59.a;
    }

    public final boolean isAnimationRunning() {
        return this.anchoredDraggableState.isAnimationRunning();
    }

    public final boolean isVisible() {
        return this.anchoredDraggableState.getCurrentValue() != SheetValue.Hidden;
    }

    public final Object partialExpand(e02<? super j59> e02Var) {
        Object objAnimateTo$material3$default;
        if (this.skipPartiallyExpanded) {
            ah.f("Attempted to animate to partial expanded when skipPartiallyExpanded was enabled. Set skipPartiallyExpanded to false to use this function.");
            return null;
        }
        nl3<SheetValue, Boolean> nl3Var = this.confirmValueChange;
        SheetValue sheetValue = SheetValue.PartiallyExpanded;
        return (nl3Var.invoke(sheetValue).booleanValue() && (objAnimateTo$material3$default = animateTo$material3$default(this, sheetValue, this.hideMotionSpec, 0.0f, e02Var, 4, null)) == a32.COROUTINE_SUSPENDED) ? objAnimateTo$material3$default : j59.a;
    }

    public final float requireOffset() {
        return this.anchoredDraggableState.requireOffset();
    }

    public final void setAnchoredDraggableMotionSpec$material3(AnimationSpec<Float> animationSpec) {
        this.anchoredDraggableMotionSpec = animationSpec;
    }

    public final void setAnchoredDraggableState$material3(AnchoredDraggableState<SheetValue> anchoredDraggableState) {
        this.anchoredDraggableState = anchoredDraggableState;
    }

    public final void setHideMotionSpec$material3(FiniteAnimationSpec<Float> finiteAnimationSpec) {
        this.hideMotionSpec = finiteAnimationSpec;
    }

    public final void setShowMotionSpec$material3(FiniteAnimationSpec<Float> finiteAnimationSpec) {
        this.showMotionSpec = finiteAnimationSpec;
    }

    public final Object settle$material3(float f, e02<? super j59> e02Var) {
        Object obj = this.anchoredDraggableState.settle(f, e02Var);
        return obj == a32.COROUTINE_SUSPENDED ? obj : j59.a;
    }

    public final Object show(e02<? super j59> e02Var) {
        Object objAnimateTo$material3$default;
        SheetValue sheetValue = getHasPartiallyExpandedState() ? SheetValue.PartiallyExpanded : SheetValue.Expanded;
        return (this.confirmValueChange.invoke(sheetValue).booleanValue() && (objAnimateTo$material3$default = animateTo$material3$default(this, sheetValue, this.showMotionSpec, 0.0f, e02Var, 4, null)) == a32.COROUTINE_SUSPENDED) ? objAnimateTo$material3$default : j59.a;
    }

    public final Object snapTo$material3(SheetValue sheetValue, e02<? super j59> e02Var) {
        Object objSnapTo = AnchoredDraggableKt.snapTo(this.anchoredDraggableState, sheetValue, e02Var);
        return objSnapTo == a32.COROUTINE_SUSPENDED ? objSnapTo : j59.a;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final SheetValue Saver$lambda$0(SaverScope saverScope, SheetState sheetState) {
            return sheetState.getCurrentValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final SheetState Saver$lambda$1(boolean z, ll3 ll3Var, ll3 ll3Var2, nl3 nl3Var, boolean z2, SheetValue sheetValue) {
            return new SheetState(z, ll3Var, ll3Var2, sheetValue, nl3Var, z2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final float Saver$lambda$3(Density density) {
            return density.mo1434toPx0680j_4(BottomSheetDefaults.INSTANCE.m3121getPositionalThresholdD9Ej5fM$material3());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final float Saver$lambda$5(Density density) {
            return density.mo1434toPx0680j_4(BottomSheetDefaults.INSTANCE.m3124getVelocityThresholdD9Ej5fM$material3());
        }

        public final Saver<SheetState, SheetValue> Saver(final boolean z, final ll3<Float> ll3Var, final ll3<Float> ll3Var2, final nl3<? super SheetValue, Boolean> nl3Var, final boolean z2) {
            return SaverKt.Saver(new ao3(2), new nl3() { // from class: ju7
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return SheetState.Companion.Saver$lambda$1(z, ll3Var, ll3Var2, nl3Var, z2, (SheetValue) obj);
                }
            });
        }

        private Companion() {
        }

        @ul2
        public final /* synthetic */ Saver Saver(boolean z, nl3 nl3Var, Density density, boolean z2) {
            return Saver(z, new jj5(density, 3), new zg0(density, 5), nl3Var, z2);
        }
    }

    public /* synthetic */ SheetState(boolean z, ll3 ll3Var, ll3 ll3Var2, SheetValue sheetValue, nl3 nl3Var, boolean z2, int i, jh2 jh2Var) {
        this(z, ll3Var, ll3Var2, (i & 8) != 0 ? SheetValue.Hidden : sheetValue, (i & 16) != 0 ? new to(2) : nl3Var, (i & 32) != 0 ? false : z2);
    }

    public /* synthetic */ SheetState(boolean z, Density density, SheetValue sheetValue, nl3 nl3Var, boolean z2, int i, jh2 jh2Var) {
        this(z, density, (i & 4) != 0 ? SheetValue.Hidden : sheetValue, (i & 8) != 0 ? new xn3(2) : nl3Var, (i & 16) != 0 ? false : z2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @ul2
    public /* synthetic */ SheetState(boolean z, Density density, SheetValue sheetValue, nl3 nl3Var, boolean z2) {
        int i = 2;
        this(z, new r54(density, i), new a43(density, i), sheetValue, nl3Var, z2);
    }
}
