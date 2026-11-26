package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.material3.TabIndicatorOffsetNode;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.av0;
import defpackage.j59;
import defpackage.nl3;
import defpackage.wu2;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class TabIndicatorOffsetNode extends Modifier.Node implements LayoutModifierNode {
    public static final int $stable = 8;
    private FiniteAnimationSpec<Dp> animationSpec;
    private boolean followContentSize;
    private Dp initialOffset;
    private Dp initialWidth;
    private Animatable<Dp, AnimationVector1D> offsetAnimatable;
    private int selectedTabIndex;
    private State<? extends List<TabPosition>> tabPositionsState;
    private Animatable<Dp, AnimationVector1D> widthAnimatable;

    public TabIndicatorOffsetNode(State<? extends List<TabPosition>> state, int i, boolean z, FiniteAnimationSpec<Dp> finiteAnimationSpec) {
        this.tabPositionsState = state;
        this.selectedTabIndex = i;
        this.followContentSize = z;
        this.animationSpec = finiteAnimationSpec;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$0(Placeable.PlacementScope placementScope) {
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$3(Placeable placeable, MeasureScope measureScope, float f, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.place$default(placementScope, placeable, measureScope.mo1428roundToPx0680j_4(f), 0, 0.0f, 4, null);
        return j59.a;
    }

    public final FiniteAnimationSpec<Dp> getAnimationSpec() {
        return this.animationSpec;
    }

    public final boolean getFollowContentSize() {
        return this.followContentSize;
    }

    public final int getSelectedTabIndex() {
        return this.selectedTabIndex;
    }

    public final State<List<TabPosition>> getTabPositionsState() {
        return this.tabPositionsState;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1073measure3p2s80s(final MeasureScope measureScope, Measurable measurable, long j) {
        if (this.tabPositionsState.getValue().isEmpty()) {
            return MeasureScope.layout$default(measureScope, 0, 0, null, new wu2(6), 4, null);
        }
        boolean z = this.followContentSize;
        State<? extends List<TabPosition>> state = this.tabPositionsState;
        float fM3978getContentWidthD9Ej5fM = z ? state.getValue().get(this.selectedTabIndex).m3978getContentWidthD9Ej5fM() : state.getValue().get(this.selectedTabIndex).m3981getWidthD9Ej5fM();
        Dp dp = this.initialWidth;
        if (dp != null) {
            Animatable<Dp, AnimationVector1D> animatable = this.widthAnimatable;
            if (animatable == null) {
                animatable = new Animatable<>(dp, VectorConvertersKt.getVectorConverter(Dp.Companion), null, null, 12, null);
                this.widthAnimatable = animatable;
            }
            if (!Dp.m9047equalsimpl0(fM3978getContentWidthD9Ej5fM, animatable.getTargetValue().m9056unboximpl())) {
                av0.c(getCoroutineScope(), null, null, new TabIndicatorOffsetNode$measure$2(animatable, fM3978getContentWidthD9Ej5fM, this, null), 3);
            }
        } else {
            this.initialWidth = Dp.m9040boximpl(fM3978getContentWidthD9Ej5fM);
        }
        final float fM3979getLeftD9Ej5fM = this.tabPositionsState.getValue().get(this.selectedTabIndex).m3979getLeftD9Ej5fM();
        Dp dp2 = this.initialOffset;
        if (dp2 != null) {
            Animatable<Dp, AnimationVector1D> animatable2 = this.offsetAnimatable;
            if (animatable2 == null) {
                Animatable<Dp, AnimationVector1D> animatable3 = new Animatable<>(dp2, VectorConvertersKt.getVectorConverter(Dp.Companion), null, null, 12, null);
                this.offsetAnimatable = animatable3;
                animatable2 = animatable3;
            }
            if (!Dp.m9047equalsimpl0(fM3979getLeftD9Ej5fM, animatable2.getTargetValue().m9056unboximpl())) {
                av0.c(getCoroutineScope(), null, null, new TabIndicatorOffsetNode$measure$3(animatable2, fM3979getLeftD9Ej5fM, this, null), 3);
            }
        } else {
            this.initialOffset = Dp.m9040boximpl(fM3979getLeftD9Ej5fM);
        }
        LayoutDirection layoutDirection = measureScope.getLayoutDirection();
        LayoutDirection layoutDirection2 = LayoutDirection.Ltr;
        Animatable<Dp, AnimationVector1D> animatable4 = this.offsetAnimatable;
        if (layoutDirection != layoutDirection2) {
            if (animatable4 != null) {
                fM3979getLeftD9Ej5fM = animatable4.getValue().m9056unboximpl();
            }
            fM3979getLeftD9Ej5fM = Dp.m9042constructorimpl(-fM3979getLeftD9Ej5fM);
        } else if (animatable4 != null) {
            fM3979getLeftD9Ej5fM = animatable4.getValue().m9056unboximpl();
        }
        Animatable<Dp, AnimationVector1D> animatable5 = this.widthAnimatable;
        if (animatable5 != null) {
            fM3978getContentWidthD9Ej5fM = animatable5.getValue().m9056unboximpl();
        }
        final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(Constraints.m8985copyZbe2FdA$default(j, measureScope.mo1428roundToPx0680j_4(fM3978getContentWidthD9Ej5fM), measureScope.mo1428roundToPx0680j_4(fM3978getContentWidthD9Ej5fM), 0, 0, 12, null));
        return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo0.getWidth(), placeableMo7702measureBRTryo0.getHeight(), null, new nl3() { // from class: li8
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return TabIndicatorOffsetNode.measure_3p2s80s$lambda$3(placeableMo7702measureBRTryo0, measureScope, fM3979getLeftD9Ej5fM, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    public final void setAnimationSpec(FiniteAnimationSpec<Dp> finiteAnimationSpec) {
        this.animationSpec = finiteAnimationSpec;
    }

    public final void setFollowContentSize(boolean z) {
        this.followContentSize = z;
    }

    public final void setSelectedTabIndex(int i) {
        this.selectedTabIndex = i;
    }

    public final void setTabPositionsState(State<? extends List<TabPosition>> state) {
        this.tabPositionsState = state;
    }
}
