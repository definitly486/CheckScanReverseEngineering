package androidx.compose.animation;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.av0;
import defpackage.bm3;
import defpackage.j59;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
final class SizeAnimationModifierNode extends LayoutModifierNodeWithPassThroughIntrinsics {
    private Alignment alignment;
    private final MutableState animData$delegate;
    private AnimationSpec<IntSize> animationSpec;
    private bm3<? super IntSize, ? super IntSize, j59> listener;
    private long lookaheadConstraints;
    private boolean lookaheadConstraintsAvailable;
    private long lookaheadSize;

    public SizeAnimationModifierNode(AnimationSpec<IntSize> animationSpec, Alignment alignment, bm3<? super IntSize, ? super IntSize, j59> bm3Var) {
        this.animationSpec = animationSpec;
        this.alignment = alignment;
        this.listener = bm3Var;
        this.lookaheadSize = AnimationModifierKt.getInvalidSize();
        this.lookaheadConstraints = ConstraintsKt.Constraints$default(0, 0, 0, 0, 15, null);
        this.animData$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
    }

    /* JADX INFO: renamed from: setLookaheadConstraints-BRTryo0, reason: not valid java name */
    private final void m1162setLookaheadConstraintsBRTryo0(long j) {
        this.lookaheadConstraints = j;
        this.lookaheadConstraintsAvailable = true;
    }

    /* JADX INFO: renamed from: targetConstraints-ZezNO4M, reason: not valid java name */
    private final long m1163targetConstraintsZezNO4M(long j) {
        return this.lookaheadConstraintsAvailable ? this.lookaheadConstraints : j;
    }

    /* JADX INFO: renamed from: animateTo-mzRDjE0, reason: not valid java name */
    public final long m1164animateTomzRDjE0(long j) {
        AnimData animData = getAnimData();
        jh2 jh2Var = null;
        if (animData != null) {
            boolean z = (IntSize.m9211equalsimpl0(j, animData.getAnim().getValue().m9217unboximpl()) || animData.getAnim().isRunning()) ? false : true;
            if (!IntSize.m9211equalsimpl0(j, animData.getAnim().getTargetValue().m9217unboximpl()) || z) {
                animData.m1169setStartSizeozmzZPI(animData.getAnim().getValue().m9217unboximpl());
                av0.c(getCoroutineScope(), null, null, new SizeAnimationModifierNode$animateTo$data$1$1(animData, j, this, null), 3);
            }
        } else {
            animData = new AnimData(new Animatable(IntSize.m9205boximpl(j), VectorConvertersKt.getVectorConverter(IntSize.Companion), IntSize.m9205boximpl(IntSize.m9208constructorimpl(InlineClassHelperKt.Uint64Low32)), null, 8, null), j, jh2Var);
        }
        setAnimData(animData);
        return animData.getAnim().getValue().m9217unboximpl();
    }

    public final Alignment getAlignment() {
        return this.alignment;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final AnimData getAnimData() {
        return (AnimData) this.animData$delegate.getValue();
    }

    public final AnimationSpec<IntSize> getAnimationSpec() {
        return this.animationSpec;
    }

    public final bm3<IntSize, IntSize, j59> getListener() {
        return this.listener;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1073measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        Placeable placeableMo7702measureBRTryo0;
        long jM9009constrain4WqzIAM;
        if (measureScope.isLookingAhead()) {
            m1162setLookaheadConstraintsBRTryo0(j);
            placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(j);
        } else {
            placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(m1163targetConstraintsZezNO4M(j));
        }
        Placeable placeable = placeableMo7702measureBRTryo0;
        long jM9208constructorimpl = IntSize.m9208constructorimpl((((long) placeable.getWidth()) << 32) | (((long) placeable.getHeight()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        if (measureScope.isLookingAhead()) {
            this.lookaheadSize = jM9208constructorimpl;
            jM9009constrain4WqzIAM = jM9208constructorimpl;
        } else {
            jM9009constrain4WqzIAM = ConstraintsKt.m9009constrain4WqzIAM(j, m1164animateTomzRDjE0(AnimationModifierKt.m1077isValidozmzZPI(this.lookaheadSize) ? this.lookaheadSize : jM9208constructorimpl));
        }
        int i = (int) (jM9009constrain4WqzIAM >> 32);
        int i2 = (int) (jM9009constrain4WqzIAM & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        return MeasureScope.layout$default(measureScope, i, i2, null, new SizeAnimationModifierNode$measure$2(this, jM9208constructorimpl, i, i2, measureScope, placeable), 4, null);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        super.onAttach();
        this.lookaheadSize = AnimationModifierKt.getInvalidSize();
        this.lookaheadConstraintsAvailable = false;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onReset() {
        super.onReset();
        setAnimData(null);
    }

    public final void setAlignment(Alignment alignment) {
        this.alignment = alignment;
    }

    public final void setAnimData(AnimData animData) {
        this.animData$delegate.setValue(animData);
    }

    public final void setAnimationSpec(AnimationSpec<IntSize> animationSpec) {
        this.animationSpec = animationSpec;
    }

    public final void setListener(bm3<? super IntSize, ? super IntSize, j59> bm3Var) {
        this.listener = bm3Var;
    }

    public static final class AnimData {
        public static final int $stable = 8;
        private final Animatable<IntSize, AnimationVector2D> anim;
        private long startSize;

        private AnimData(Animatable<IntSize, AnimationVector2D> animatable, long j) {
            this.anim = animatable;
            this.startSize = j;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX INFO: renamed from: copy-O0kMr_c$default, reason: not valid java name */
        public static /* synthetic */ AnimData m1165copyO0kMr_c$default(AnimData animData, Animatable animatable, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                animatable = animData.anim;
            }
            if ((i & 2) != 0) {
                j = animData.startSize;
            }
            return animData.m1167copyO0kMr_c(animatable, j);
        }

        public final Animatable<IntSize, AnimationVector2D> component1() {
            return this.anim;
        }

        /* JADX INFO: renamed from: component2-YbymL2g, reason: not valid java name */
        public final long m1166component2YbymL2g() {
            return this.startSize;
        }

        /* JADX INFO: renamed from: copy-O0kMr_c, reason: not valid java name */
        public final AnimData m1167copyO0kMr_c(Animatable<IntSize, AnimationVector2D> animatable, long j) {
            return new AnimData(animatable, j, null);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AnimData)) {
                return false;
            }
            AnimData animData = (AnimData) obj;
            return aa4.e(this.anim, animData.anim) && IntSize.m9211equalsimpl0(this.startSize, animData.startSize);
        }

        public final Animatable<IntSize, AnimationVector2D> getAnim() {
            return this.anim;
        }

        /* JADX INFO: renamed from: getStartSize-YbymL2g, reason: not valid java name */
        public final long m1168getStartSizeYbymL2g() {
            return this.startSize;
        }

        public int hashCode() {
            return IntSize.m9214hashCodeimpl(this.startSize) + (this.anim.hashCode() * 31);
        }

        /* JADX INFO: renamed from: setStartSize-ozmzZPI, reason: not valid java name */
        public final void m1169setStartSizeozmzZPI(long j) {
            this.startSize = j;
        }

        public String toString() {
            return "AnimData(anim=" + this.anim + ", startSize=" + ((Object) IntSize.m9216toStringimpl(this.startSize)) + ')';
        }

        public /* synthetic */ AnimData(Animatable animatable, long j, jh2 jh2Var) {
            this(animatable, j);
        }
    }

    public /* synthetic */ SizeAnimationModifierNode(AnimationSpec animationSpec, Alignment alignment, bm3 bm3Var, int i, jh2 jh2Var) {
        this(animationSpec, (i & 2) != 0 ? Alignment.Companion.getTopStart() : alignment, (i & 4) != 0 ? null : bm3Var);
    }
}
