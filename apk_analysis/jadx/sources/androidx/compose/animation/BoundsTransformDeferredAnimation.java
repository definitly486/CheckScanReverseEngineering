package androidx.compose.animation;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationVector4D;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.LookaheadScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.c32;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class BoundsTransformDeferredAnimation {
    public static final int $stable = 8;
    private long additionalOffset;
    private Animatable<Rect, AnimationVector4D> animatable;
    private final MutableState animatedValue$delegate;
    private long currentPosition;
    private long currentSize;
    private List<LayoutCoordinates> directManipulationParents;
    private boolean isPending;
    private LookaheadAnimationVisualDebugHelper lookaheadAnimationVisualDebugHelper;
    private long targetOffset;
    private long targetSize;

    /* JADX INFO: renamed from: androidx.compose.animation.BoundsTransformDeferredAnimation$animate$1, reason: invalid class name */
    @bd2(c = "androidx.compose.animation.BoundsTransformDeferredAnimation$animate$1", f = "AnimateBoundsModifier.kt", l = {537}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ Animatable<Rect, AnimationVector4D> $anim;
        final /* synthetic */ BoundsTransform $boundsTransform;
        final /* synthetic */ Rect $target;
        int label;
        final /* synthetic */ BoundsTransformDeferredAnimation this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Animatable<Rect, AnimationVector4D> animatable, Rect rect, BoundsTransform boundsTransform, BoundsTransformDeferredAnimation boundsTransformDeferredAnimation, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$anim = animatable;
            this.$target = rect;
            this.$boundsTransform = boundsTransform;
            this.this$0 = boundsTransformDeferredAnimation;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass1(this.$anim, this.$target, this.$boundsTransform, this.this$0, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                Animatable<Rect, AnimationVector4D> animatable = this.$anim;
                Rect rect = this.$target;
                BoundsTransform boundsTransform = this.$boundsTransform;
                Rect currentBounds = this.this$0.getCurrentBounds();
                currentBounds.getClass();
                FiniteAnimationSpec<Rect> finiteAnimationSpecCreateAnimationSpec = boundsTransform.createAnimationSpec(currentBounds, this.$target);
                this.label = 1;
                if (Animatable.animateTo$default(animatable, rect, finiteAnimationSpecCreateAnimationSpec, null, null, this, 12, null) == a32Var) {
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

    public BoundsTransformDeferredAnimation() {
        Size.Companion companion = Size.Companion;
        this.targetSize = companion.m6064getUnspecifiedNHjbRc();
        Offset.Companion companion2 = Offset.Companion;
        this.targetOffset = companion2.m6002getUnspecifiedF1C5BW0();
        this.currentPosition = companion2.m6002getUnspecifiedF1C5BW0();
        this.currentSize = companion.m6064getUnspecifiedNHjbRc();
        this.animatedValue$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.additionalOffset = companion2.m6003getZeroF1C5BW0();
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0070  */
    private final Rect animate(y22 y22Var, BoundsTransform boundsTransform) {
        BoundsTransformDeferredAnimation boundsTransformDeferredAnimation;
        Rect value;
        LookaheadAnimationVisualDebugHelper lookaheadAnimationVisualDebugHelper;
        long j = this.targetOffset;
        if ((9223372034707292159L & j) != InlineClassHelperKt.UnspecifiedPackedFloats) {
            long j2 = this.targetSize;
            if (j2 != InlineClassHelperKt.UnspecifiedPackedFloats) {
                Rect rectM6027Recttz77jQw = RectKt.m6027Recttz77jQw(j, j2);
                Animatable<Rect, AnimationVector4D> animatable = this.animatable;
                if (animatable == null) {
                    animatable = new Animatable<>(rectM6027Recttz77jQw, VectorConvertersKt.getVectorConverter(Rect.Companion), null, null, 12, null);
                }
                this.animatable = animatable;
                if (this.isPending) {
                    this.isPending = false;
                    if (IsLookaheadAnimationVisualDebuggingEnabledKt.isLookaheadAnimationVisualDebuggingEnabled() && (lookaheadAnimationVisualDebugHelper = this.lookaheadAnimationVisualDebugHelper) != null) {
                        Rect currentBounds = getCurrentBounds();
                        currentBounds.getClass();
                        FiniteAnimationSpec<Rect> finiteAnimationSpecCreateAnimationSpec = boundsTransform.createAnimationSpec(currentBounds, rectM6027Recttz77jQw);
                        Rect currentBounds2 = getCurrentBounds();
                        currentBounds2.getClass();
                        lookaheadAnimationVisualDebugHelper.calculatePath$animation(finiteAnimationSpecCreateAnimationSpec, currentBounds2, rectM6027Recttz77jQw, animatable.getVelocity());
                    }
                    boundsTransformDeferredAnimation = this;
                    av0.c(y22Var, null, c32.UNDISPATCHED, new AnonymousClass1(animatable, rectM6027Recttz77jQw, boundsTransform, boundsTransformDeferredAnimation, null), 1);
                } else {
                    boundsTransformDeferredAnimation = this;
                }
            } else {
                boundsTransformDeferredAnimation = this;
            }
        } else {
            boundsTransformDeferredAnimation = this;
        }
        Animatable<Rect, AnimationVector4D> animatable2 = boundsTransformDeferredAnimation.animatable;
        return (animatable2 == null || (value = animatable2.getValue()) == null) ? Rect.Companion.getZero() : value;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Rect getAnimatedValue() {
        return (Rect) this.animatedValue$delegate.getValue();
    }

    private final void setAnimatedValue(Rect rect) {
        this.animatedValue$delegate.setValue(rect);
    }

    /* JADX INFO: renamed from: updateTargetOffset-k-4lQ0M, reason: not valid java name */
    private final void m1080updateTargetOffsetk4lQ0M(long j) {
        if ((this.targetOffset & 9223372034707292159L) != InlineClassHelperKt.UnspecifiedPackedFloats && !IntOffset.m9169equalsimpl0(IntOffsetKt.m9187roundk4lQ0M(j), IntOffsetKt.m9187roundk4lQ0M(this.targetOffset))) {
            this.isPending = true;
        }
        this.targetOffset = j;
        if ((this.currentPosition & 9223372034707292159L) == InlineClassHelperKt.UnspecifiedPackedFloats) {
            this.currentPosition = j;
        }
    }

    public final Rect getCurrentBounds() {
        long j = this.currentSize;
        long j2 = this.currentPosition;
        if ((9223372034707292159L & j2) == InlineClassHelperKt.UnspecifiedPackedFloats || j == InlineClassHelperKt.UnspecifiedPackedFloats) {
            return null;
        }
        return RectKt.m6027Recttz77jQw(j2, j);
    }

    /* JADX INFO: renamed from: getCurrentSize-NH-jbRc, reason: not valid java name */
    public final long m1081getCurrentSizeNHjbRc() {
        return this.currentSize;
    }

    public final LookaheadAnimationVisualDebugHelper getLookaheadAnimationVisualDebugHelper() {
        return this.lookaheadAnimationVisualDebugHelper;
    }

    /* JADX INFO: renamed from: getTargetOffset-F1C5BW0, reason: not valid java name */
    public final long m1082getTargetOffsetF1C5BW0() {
        return this.targetOffset;
    }

    /* JADX INFO: renamed from: getTargetSize-NH-jbRc, reason: not valid java name */
    public final long m1083getTargetSizeNHjbRc() {
        return this.targetSize;
    }

    public final Rect getValue() {
        if (isIdle()) {
            return null;
        }
        return getAnimatedValue();
    }

    public final boolean isIdle() {
        if (this.isPending) {
            return false;
        }
        Animatable<Rect, AnimationVector4D> animatable = this.animatable;
        return animatable == null || !animatable.isRunning();
    }

    /* JADX INFO: renamed from: setCurrentSize-uvyYCjk, reason: not valid java name */
    public final void m1084setCurrentSizeuvyYCjk(long j) {
        this.currentSize = j;
    }

    public final void setLookaheadAnimationVisualDebugHelper(LookaheadAnimationVisualDebugHelper lookaheadAnimationVisualDebugHelper) {
        this.lookaheadAnimationVisualDebugHelper = lookaheadAnimationVisualDebugHelper;
    }

    /* JADX INFO: renamed from: updateCurrentBounds-tz77jQw, reason: not valid java name */
    public final void m1085updateCurrentBoundstz77jQw(long j, long j2) {
        this.currentPosition = j;
        this.currentSize = j2;
    }

    public final void updateTargetOffsetAndAnimate(LookaheadScope lookaheadScope, Placeable.PlacementScope placementScope, y22 y22Var, boolean z, boolean z2, BoundsTransform boundsTransform) {
        LayoutCoordinates coordinates = placementScope.getCoordinates();
        if (coordinates != null) {
            LayoutCoordinates lookaheadScopeCoordinates = lookaheadScope.getLookaheadScopeCoordinates(placementScope);
            long jM6003getZeroF1C5BW0 = Offset.Companion.m6003getZeroF1C5BW0();
            if (!z2 && z) {
                List<LayoutCoordinates> arrayList = this.directManipulationParents;
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                int i = 0;
                LayoutCoordinates parentCoordinates = coordinates;
                while (!aa4.e(lookaheadScope.toLookaheadCoordinates(parentCoordinates), lookaheadScopeCoordinates)) {
                    if (parentCoordinates.getIntroducesMotionFrameOfReference()) {
                        if (arrayList.size() == i) {
                            arrayList.add(parentCoordinates);
                            jM6003getZeroF1C5BW0 = Offset.m5992plusMKHz9U(jM6003getZeroF1C5BW0, LayoutCoordinatesKt.positionInParent(parentCoordinates));
                        } else if (!aa4.e(arrayList.get(i), parentCoordinates)) {
                            long jM5991minusMKHz9U = Offset.m5991minusMKHz9U(jM6003getZeroF1C5BW0, LayoutCoordinatesKt.positionInParent(arrayList.get(i)));
                            arrayList.set(i, parentCoordinates);
                            jM6003getZeroF1C5BW0 = Offset.m5992plusMKHz9U(jM5991minusMKHz9U, LayoutCoordinatesKt.positionInParent(parentCoordinates));
                        }
                        i++;
                    }
                    parentCoordinates = parentCoordinates.getParentCoordinates();
                    if (parentCoordinates == null) {
                        break;
                    }
                }
                int size = arrayList.size() - 1;
                if (i <= size) {
                    while (true) {
                        jM6003getZeroF1C5BW0 = Offset.m5991minusMKHz9U(jM6003getZeroF1C5BW0, LayoutCoordinatesKt.positionInParent(arrayList.get(size)));
                        arrayList.remove(arrayList.size() - 1);
                        if (size == i) {
                            break;
                        } else {
                            size--;
                        }
                    }
                }
                this.directManipulationParents = arrayList;
            }
            this.additionalOffset = Offset.m5992plusMKHz9U(this.additionalOffset, jM6003getZeroF1C5BW0);
            m1080updateTargetOffsetk4lQ0M(Offset.m5992plusMKHz9U(LookaheadScope.m7732localLookaheadPositionOfauaQtc$default(lookaheadScope, lookaheadScopeCoordinates, coordinates, 0L, z2, 2, null), this.additionalOffset));
            setAnimatedValue(animate(y22Var, boundsTransform).m6024translatek4lQ0M(Offset.m5979constructorimpl(this.additionalOffset ^ (-9223372034707292160L))));
        }
    }

    /* JADX INFO: renamed from: updateTargetSize-uvyYCjk, reason: not valid java name */
    public final void m1086updateTargetSizeuvyYCjk(long j) {
        if (this.targetSize != InlineClassHelperKt.UnspecifiedPackedFloats && !IntSize.m9211equalsimpl0(IntSizeKt.m9221roundToIntSizeuvyYCjk(j), IntSizeKt.m9221roundToIntSizeuvyYCjk(this.targetSize))) {
            this.isPending = true;
        }
        this.targetSize = j;
        if (this.currentSize == InlineClassHelperKt.UnspecifiedPackedFloats) {
            this.currentSize = j;
        }
    }
}
