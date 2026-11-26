package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.saveable.SaverScope;
import defpackage.a32;
import defpackage.e02;
import defpackage.h67;
import defpackage.j59;
import defpackage.jh2;
import defpackage.qf;
import defpackage.rf;
import defpackage.sc3;

/* JADX INFO: loaded from: classes2.dex */
public final class WideNavigationRailStateImpl implements WideNavigationRailState {
    private static final float Collapsed = 0.0f;
    private static final float Expanded = 1.0f;
    private final State<WideNavigationRailValue> _currentVal;
    private final AnimationSpec<Float> animationSpec;
    private WideNavigationRailValue initialValue;
    private final Animatable<Float, AnimationVector1D> internalState;
    private final float internalValue;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;

    public WideNavigationRailStateImpl(WideNavigationRailValue wideNavigationRailValue, AnimationSpec<Float> animationSpec) {
        this.initialValue = wideNavigationRailValue;
        this.animationSpec = animationSpec;
        float f = WideNavigationRailStateKt.isExpanded(wideNavigationRailValue) ? 1.0f : 0.0f;
        this.internalValue = f;
        this.internalState = new Animatable<>(Float.valueOf(f), VectorConvertersKt.getVectorConverter(sc3.a), null, null, 12, null);
        this._currentVal = SnapshotStateKt.derivedStateOf(new h67(this, 3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WideNavigationRailValue _currentVal$lambda$0(WideNavigationRailStateImpl wideNavigationRailStateImpl) {
        return wideNavigationRailStateImpl.internalState.getValue().floatValue() == 1.0f ? WideNavigationRailValue.Expanded : WideNavigationRailValue.Collapsed;
    }

    @Override // androidx.compose.material3.WideNavigationRailState
    public Object collapse(e02<? super j59> e02Var) {
        Object objAnimateTo$default = Animatable.animateTo$default(this.internalState, new Float(0.0f), this.animationSpec, null, null, e02Var, 12, null);
        return objAnimateTo$default == a32.COROUTINE_SUSPENDED ? objAnimateTo$default : j59.a;
    }

    @Override // androidx.compose.material3.WideNavigationRailState
    public Object expand(e02<? super j59> e02Var) {
        Object objAnimateTo$default = Animatable.animateTo$default(this.internalState, new Float(1.0f), this.animationSpec, null, null, e02Var, 12, null);
        return objAnimateTo$default == a32.COROUTINE_SUSPENDED ? objAnimateTo$default : j59.a;
    }

    @Override // androidx.compose.material3.WideNavigationRailState
    public WideNavigationRailValue getCurrentValue() {
        return this._currentVal.getValue();
    }

    public final WideNavigationRailValue getInitialValue() {
        return this.initialValue;
    }

    @Override // androidx.compose.material3.WideNavigationRailState
    public WideNavigationRailValue getTargetValue() {
        return this.internalState.getTargetValue().floatValue() == 1.0f ? WideNavigationRailValue.Expanded : WideNavigationRailValue.Collapsed;
    }

    @Override // androidx.compose.material3.WideNavigationRailState
    public boolean isAnimating() {
        return this.internalState.isRunning();
    }

    public final void setInitialValue(WideNavigationRailValue wideNavigationRailValue) {
        this.initialValue = wideNavigationRailValue;
    }

    @Override // androidx.compose.material3.WideNavigationRailState
    public Object snapTo(WideNavigationRailValue wideNavigationRailValue, e02<? super j59> e02Var) {
        Object objSnapTo = this.internalState.snapTo(new Float(WideNavigationRailStateKt.isExpanded(wideNavigationRailValue) ? 1.0f : 0.0f), e02Var);
        return objSnapTo == a32.COROUTINE_SUSPENDED ? objSnapTo : j59.a;
    }

    @Override // androidx.compose.material3.WideNavigationRailState
    public Object toggle(e02<? super j59> e02Var) {
        Object objAnimateTo$default = Animatable.animateTo$default(this.internalState, new Float(WideNavigationRailStateKt.isExpanded(getTargetValue()) ? 0.0f : 1.0f), this.animationSpec, null, null, e02Var, 12, null);
        return objAnimateTo$default == a32.COROUTINE_SUSPENDED ? objAnimateTo$default : j59.a;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final WideNavigationRailValue Saver$lambda$0(SaverScope saverScope, WideNavigationRailState wideNavigationRailState) {
            return wideNavigationRailState.getTargetValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final WideNavigationRailState Saver$lambda$1(AnimationSpec animationSpec, WideNavigationRailValue wideNavigationRailValue) {
            return new WideNavigationRailStateImpl(wideNavigationRailValue, animationSpec);
        }

        public final Saver<WideNavigationRailState, WideNavigationRailValue> Saver(AnimationSpec<Float> animationSpec) {
            return SaverKt.Saver(new qf(3), new rf(animationSpec, 2));
        }

        private Companion() {
        }
    }
}
