package androidx.compose.material3;

import androidx.compose.foundation.gestures.AnchoredDraggableDefaults;
import androidx.compose.foundation.gestures.AnchoredDraggableKt;
import androidx.compose.foundation.gestures.AnchoredDraggableState;
import androidx.compose.material3.SwipeToDismissBoxState;
import androidx.compose.material3.SwipeToDismissBoxValue;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.unit.Density;
import defpackage.a32;
import defpackage.aa4;
import defpackage.aw4;
import defpackage.e02;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.ue;
import defpackage.ul2;
import defpackage.wg8;
import defpackage.xg8;

/* JADX INFO: loaded from: classes2.dex */
public final class SwipeToDismissBoxState {
    private final AnchoredDraggableState<SwipeToDismissBoxValue> anchoredDraggableState;
    public nl3<? super Float, Float> positionalThreshold;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;

    @ul2
    public SwipeToDismissBoxState(SwipeToDismissBoxValue swipeToDismissBoxValue, Density density, nl3<? super SwipeToDismissBoxValue, Boolean> nl3Var, nl3<? super Float, Float> nl3Var2) {
        AnchoredDraggableDefaults anchoredDraggableDefaults = AnchoredDraggableDefaults.INSTANCE;
        this.anchoredDraggableState = AnchoredDraggableKt.AnchoredDraggableState(swipeToDismissBoxValue, nl3Var2, new aw4(density, 4), anchoredDraggableDefaults.getSnapAnimationSpec(), anchoredDraggableDefaults.getDecayAnimationSpec(), nl3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean _init_$lambda$0(SwipeToDismissBoxValue swipeToDismissBoxValue) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float _init_$lambda$2(Density density) {
        return density.mo1434toPx0680j_4(SwipeToDismissBoxKt.DismissVelocityThreshold);
    }

    public static /* synthetic */ void getProgress$annotations() {
    }

    public final Object dismiss(SwipeToDismissBoxValue swipeToDismissBoxValue, e02<? super j59> e02Var) {
        Object objAnimateTo$default = AnchoredDraggableKt.animateTo$default(this.anchoredDraggableState, swipeToDismissBoxValue, null, e02Var, 2, null);
        return objAnimateTo$default == a32.COROUTINE_SUSPENDED ? objAnimateTo$default : j59.a;
    }

    public final AnchoredDraggableState<SwipeToDismissBoxValue> getAnchoredDraggableState$material3() {
        return this.anchoredDraggableState;
    }

    public final SwipeToDismissBoxValue getCurrentValue() {
        return this.anchoredDraggableState.getCurrentValue();
    }

    public final SwipeToDismissBoxValue getDismissDirection() {
        if (getOffset$material3() == 0.0f || Float.isNaN(getOffset$material3())) {
            return SwipeToDismissBoxValue.Settled;
        }
        return getOffset$material3() > 0.0f ? SwipeToDismissBoxValue.StartToEnd : SwipeToDismissBoxValue.EndToStart;
    }

    public final float getOffset$material3() {
        return this.anchoredDraggableState.getOffset();
    }

    public final nl3<Float, Float> getPositionalThreshold$material3() {
        nl3 nl3Var = this.positionalThreshold;
        if (nl3Var != null) {
            return nl3Var;
        }
        aa4.j("positionalThreshold");
        throw null;
    }

    public final float getProgress() {
        return this.anchoredDraggableState.getProgress();
    }

    public final SwipeToDismissBoxValue getSettledValue() {
        return this.anchoredDraggableState.getSettledValue();
    }

    public final SwipeToDismissBoxValue getTargetValue() {
        return this.anchoredDraggableState.getTargetValue();
    }

    public final boolean getUseFlingBehavior$material3() {
        return this.positionalThreshold != null;
    }

    public final float requireOffset() {
        return this.anchoredDraggableState.requireOffset();
    }

    public final Object reset(e02<? super j59> e02Var) {
        Object objAnimateTo$default = AnchoredDraggableKt.animateTo$default(this.anchoredDraggableState, SwipeToDismissBoxValue.Settled, null, e02Var, 2, null);
        return objAnimateTo$default == a32.COROUTINE_SUSPENDED ? objAnimateTo$default : j59.a;
    }

    public final void setPositionalThreshold$material3(nl3<? super Float, Float> nl3Var) {
        this.positionalThreshold = nl3Var;
    }

    public final Object snapTo(SwipeToDismissBoxValue swipeToDismissBoxValue, e02<? super j59> e02Var) {
        Object objSnapTo = AnchoredDraggableKt.snapTo(this.anchoredDraggableState, swipeToDismissBoxValue, e02Var);
        return objSnapTo == a32.COROUTINE_SUSPENDED ? objSnapTo : j59.a;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final SwipeToDismissBoxValue Saver$lambda$0(SaverScope saverScope, SwipeToDismissBoxState swipeToDismissBoxState) {
            return swipeToDismissBoxState.getCurrentValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final SwipeToDismissBoxState Saver$lambda$1(Density density, nl3 nl3Var, nl3 nl3Var2, SwipeToDismissBoxValue swipeToDismissBoxValue) {
            return new SwipeToDismissBoxState(swipeToDismissBoxValue, density, nl3Var, nl3Var2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final SwipeToDismissBoxValue Saver$lambda$2(SaverScope saverScope, SwipeToDismissBoxState swipeToDismissBoxState) {
            return swipeToDismissBoxState.getCurrentValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final SwipeToDismissBoxState Saver$lambda$3(nl3 nl3Var, SwipeToDismissBoxValue swipeToDismissBoxValue) {
            return new SwipeToDismissBoxState(swipeToDismissBoxValue, nl3Var);
        }

        @ul2
        public final Saver<SwipeToDismissBoxState, SwipeToDismissBoxValue> Saver(final nl3<? super SwipeToDismissBoxValue, Boolean> nl3Var, final nl3<? super Float, Float> nl3Var2, final Density density) {
            return SaverKt.Saver(new xg8(0), new nl3() { // from class: yg8
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return SwipeToDismissBoxState.Companion.Saver$lambda$1(density, nl3Var, nl3Var2, (SwipeToDismissBoxValue) obj);
                }
            });
        }

        private Companion() {
        }

        public final Saver<SwipeToDismissBoxState, SwipeToDismissBoxValue> Saver(nl3<? super Float, Float> nl3Var) {
            return SaverKt.Saver(new wg8(), new defpackage.w0(nl3Var, 2));
        }
    }

    public /* synthetic */ SwipeToDismissBoxState(SwipeToDismissBoxValue swipeToDismissBoxValue, Density density, nl3 nl3Var, nl3 nl3Var2, int i, jh2 jh2Var) {
        this(swipeToDismissBoxValue, density, (i & 4) != 0 ? new ue(2) : nl3Var, nl3Var2);
    }

    public SwipeToDismissBoxState(SwipeToDismissBoxValue swipeToDismissBoxValue, nl3<? super Float, Float> nl3Var) {
        this.anchoredDraggableState = new AnchoredDraggableState<>(swipeToDismissBoxValue);
        setPositionalThreshold$material3(nl3Var);
    }
}
