package androidx.compose.animation.core;

import defpackage.aa4;
import defpackage.fg;
import defpackage.jh2;
import defpackage.ul2;

/* JADX INFO: loaded from: classes.dex */
public final class InfiniteRepeatableSpec<T> implements AnimationSpec<T> {
    public static final int $stable = 8;
    private final DurationBasedAnimationSpec<T> animation;
    private final long initialStartOffset;
    private final RepeatMode repeatMode;

    private InfiniteRepeatableSpec(DurationBasedAnimationSpec<T> durationBasedAnimationSpec, RepeatMode repeatMode, long j) {
        this.animation = durationBasedAnimationSpec;
        this.repeatMode = repeatMode;
        this.initialStartOffset = j;
        if (durationBasedAnimationSpec instanceof TweenSpec) {
            if (((TweenSpec) durationBasedAnimationSpec).getDurationMillis() != 0 || ((TweenSpec) durationBasedAnimationSpec).getDelay() != 0) {
                return;
            }
        } else if (durationBasedAnimationSpec instanceof SnapSpec) {
            if (((SnapSpec) durationBasedAnimationSpec).getDelay() != 0) {
                return;
            }
        } else if (durationBasedAnimationSpec instanceof KeyframesSpec) {
            if (((KeyframesSpec) durationBasedAnimationSpec).getConfig().getDurationMillis() != 0 || ((KeyframesSpec) durationBasedAnimationSpec).getConfig().getDelayMillis() != 0) {
                return;
            }
        } else if (durationBasedAnimationSpec instanceof KeyframesWithSplineSpec) {
            if (((KeyframesWithSplineSpec) durationBasedAnimationSpec).getConfig().getDurationMillis() != 0 || ((KeyframesWithSplineSpec) durationBasedAnimationSpec).getConfig().getDelayMillis() != 0) {
                return;
            }
        } else if (!(durationBasedAnimationSpec instanceof ArcAnimationSpec) || ((ArcAnimationSpec) durationBasedAnimationSpec).getDurationMillis() != 0 || ((ArcAnimationSpec) durationBasedAnimationSpec).getDelayMillis() != 0) {
            return;
        }
        fg.c("Animation to be infinitely repeated cannot have a 0-duration");
        throw null;
    }

    public boolean equals(Object obj) {
        if (obj instanceof InfiniteRepeatableSpec) {
            InfiniteRepeatableSpec infiniteRepeatableSpec = (InfiniteRepeatableSpec) obj;
            if (aa4.e(infiniteRepeatableSpec.animation, this.animation) && infiniteRepeatableSpec.repeatMode == this.repeatMode && StartOffset.m1233equalsimpl0(infiniteRepeatableSpec.initialStartOffset, this.initialStartOffset)) {
                return true;
            }
        }
        return false;
    }

    public final DurationBasedAnimationSpec<T> getAnimation() {
        return this.animation;
    }

    /* JADX INFO: renamed from: getInitialStartOffset-Rmkjzm4, reason: not valid java name */
    public final long m1213getInitialStartOffsetRmkjzm4() {
        return this.initialStartOffset;
    }

    public final RepeatMode getRepeatMode() {
        return this.repeatMode;
    }

    public int hashCode() {
        return StartOffset.m1236hashCodeimpl(this.initialStartOffset) + ((this.repeatMode.hashCode() + (this.animation.hashCode() * 31)) * 31);
    }

    @Override // androidx.compose.animation.core.AnimationSpec
    public <V extends AnimationVector> VectorizedAnimationSpec<V> vectorize(TwoWayConverter<T, V> twoWayConverter) {
        return new VectorizedInfiniteRepeatableSpec(this.animation.vectorize((TwoWayConverter) twoWayConverter), this.repeatMode, this.initialStartOffset, (jh2) null);
    }

    public /* synthetic */ InfiniteRepeatableSpec(DurationBasedAnimationSpec durationBasedAnimationSpec, RepeatMode repeatMode, long j, jh2 jh2Var) {
        this(durationBasedAnimationSpec, repeatMode, j);
    }

    public /* synthetic */ InfiniteRepeatableSpec(DurationBasedAnimationSpec durationBasedAnimationSpec, RepeatMode repeatMode, long j, int i, jh2 jh2Var) {
        this(durationBasedAnimationSpec, (i & 2) != 0 ? RepeatMode.Restart : repeatMode, (i & 4) != 0 ? StartOffset.m1231constructorimpl$default(0, 0, 2, null) : j, (jh2) null);
    }

    public /* synthetic */ InfiniteRepeatableSpec(DurationBasedAnimationSpec durationBasedAnimationSpec, RepeatMode repeatMode, int i, jh2 jh2Var) {
        this(durationBasedAnimationSpec, (i & 2) != 0 ? RepeatMode.Restart : repeatMode);
    }

    @ul2
    public /* synthetic */ InfiniteRepeatableSpec(DurationBasedAnimationSpec durationBasedAnimationSpec, RepeatMode repeatMode) {
        this(durationBasedAnimationSpec, repeatMode, StartOffset.m1231constructorimpl$default(0, 0, 2, null), (jh2) null);
    }
}
