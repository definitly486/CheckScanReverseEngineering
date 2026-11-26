package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.saveable.ListSaverKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.layout.LayoutCoordinates;
import defpackage.a32;
import defpackage.e02;
import defpackage.gz5;
import defpackage.h67;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kx6;
import defpackage.qf;
import defpackage.sc3;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class SearchBarState {
    public static final int $stable = 0;
    private static final float Collapsed = 0.0f;
    public static final Companion Companion = new Companion(null);
    private static final float Expanded = 1.0f;
    private final Animatable<Float, AnimationVector1D> animatable;
    private final AnimationSpec<Float> animationSpecForCollapse;
    private final AnimationSpec<Float> animationSpecForExpand;
    private final MutableState collapsedCoords$delegate;
    private final State currentValue$delegate;

    private SearchBarState(Animatable<Float, AnimationVector1D> animatable, AnimationSpec<Float> animationSpec, AnimationSpec<Float> animationSpec2) {
        this.animatable = animatable;
        this.animationSpecForExpand = animationSpec;
        this.animationSpecForCollapse = animationSpec2;
        this.collapsedCoords$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.currentValue$delegate = SnapshotStateKt.derivedStateOf(new h67(this, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SearchBarValue currentValue_delegate$lambda$0(SearchBarState searchBarState) {
        return searchBarState.animatable.getValue().floatValue() == 0.0f ? SearchBarValue.Collapsed : SearchBarValue.Expanded;
    }

    public final Object animateToCollapsed(e02<? super j59> e02Var) {
        Object objAnimateTo$default = Animatable.animateTo$default(this.animatable, new Float(0.0f), this.animationSpecForCollapse, null, null, e02Var, 12, null);
        return objAnimateTo$default == a32.COROUTINE_SUSPENDED ? objAnimateTo$default : j59.a;
    }

    public final Object animateToExpanded(e02<? super j59> e02Var) {
        Object objAnimateTo$default = Animatable.animateTo$default(this.animatable, new Float(1.0f), this.animationSpecForExpand, null, null, e02Var, 12, null);
        return objAnimateTo$default == a32.COROUTINE_SUSPENDED ? objAnimateTo$default : j59.a;
    }

    public final LayoutCoordinates getCollapsedCoords() {
        return (LayoutCoordinates) this.collapsedCoords$delegate.getValue();
    }

    public final SearchBarValue getCurrentValue() {
        return (SearchBarValue) this.currentValue$delegate.getValue();
    }

    public final float getProgress() {
        return kx6.d(this.animatable.getValue().floatValue(), 0.0f, 1.0f);
    }

    public final SearchBarValue getTargetValue() {
        return this.animatable.getTargetValue().floatValue() == 1.0f ? SearchBarValue.Expanded : SearchBarValue.Collapsed;
    }

    public final boolean isAnimating() {
        return this.animatable.isRunning();
    }

    public final void setCollapsedCoords(LayoutCoordinates layoutCoordinates) {
        this.collapsedCoords$delegate.setValue(layoutCoordinates);
    }

    public final Object snapTo(float f, e02<? super j59> e02Var) {
        Object objSnapTo = this.animatable.snapTo(new Float(f), e02Var);
        return objSnapTo == a32.COROUTINE_SUSPENDED ? objSnapTo : j59.a;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final List Saver$lambda$0(SaverScope saverScope, SearchBarState searchBarState) {
            return u96.h(Float.valueOf(searchBarState.getProgress()));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final SearchBarState Saver$lambda$1(AnimationSpec animationSpec, AnimationSpec animationSpec2, List list) {
            return new SearchBarState(new Animatable(list.get(0), VectorConvertersKt.getVectorConverter(sc3.a), null, null, 12, null), animationSpec, animationSpec2, null);
        }

        public final Saver<SearchBarState, ?> Saver(AnimationSpec<Float> animationSpec, AnimationSpec<Float> animationSpec2) {
            return ListSaverKt.listSaver(new qf(2), new gz5(1, animationSpec, animationSpec2));
        }

        private Companion() {
        }
    }

    public /* synthetic */ SearchBarState(Animatable animatable, AnimationSpec animationSpec, AnimationSpec animationSpec2, jh2 jh2Var) {
        this((Animatable<Float, AnimationVector1D>) animatable, (AnimationSpec<Float>) animationSpec, (AnimationSpec<Float>) animationSpec2);
    }

    public SearchBarState(SearchBarValue searchBarValue, AnimationSpec<Float> animationSpec, AnimationSpec<Float> animationSpec2) {
        this((Animatable<Float, AnimationVector1D>) AnimatableKt.Animatable$default(searchBarValue == SearchBarValue.Expanded ? 1.0f : 0.0f, 0.0f, 2, null), animationSpec, animationSpec2);
    }
}
