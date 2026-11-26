package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.muxer.MuxerUtil;
import defpackage.jh2;
import defpackage.nl3;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class LazyStaggeredGridMeasuredItem implements LazyStaggeredGridItemInfo, LazyLayoutMeasuredItem {
    public static final int $stable = 8;
    private final int afterContentPadding;
    private final LazyLayoutItemAnimator<LazyStaggeredGridMeasuredItem> animator;
    private final int beforeContentPadding;
    private final long constraints;
    private final Object contentType;
    private final int crossAxisSize;
    private final int index;
    private final boolean isVertical;
    private boolean isVisible;
    private final Object key;
    private final int lane;
    private int mainAxisLayoutSize;
    private final int mainAxisSize;
    private final int mainAxisSizeWithSpacings;
    private int maxMainAxisOffset;
    private int minMainAxisOffset;
    private boolean nonScrollableItem;
    private long offset;
    private final List<Placeable> placeables;
    private final long size;
    private final int span;

    /* JADX WARN: Multi-variable type inference failed */
    private LazyStaggeredGridMeasuredItem(int i, Object obj, List<? extends Placeable> list, boolean z, int i2, int i3, int i4, int i5, int i6, Object obj2, LazyLayoutItemAnimator<LazyStaggeredGridMeasuredItem> lazyLayoutItemAnimator, long j) {
        int height;
        this.index = i;
        this.key = obj;
        this.placeables = list;
        this.isVertical = z;
        this.lane = i3;
        this.span = i4;
        this.beforeContentPadding = i5;
        this.afterContentPadding = i6;
        this.contentType = obj2;
        this.animator = lazyLayoutItemAnimator;
        this.constraints = j;
        int i7 = 1;
        this.isVisible = true;
        int i8 = 0;
        if (!list.isEmpty()) {
            Placeable placeable = (Placeable) list.get(0);
            height = isVertical() ? placeable.getHeight() : placeable.getWidth();
            int size = list.size() - 1;
            if (1 <= size) {
                int i9 = 1;
                while (true) {
                    Placeable placeable2 = (Placeable) list.get(i9);
                    int height2 = isVertical() ? placeable2.getHeight() : placeable2.getWidth();
                    height = height2 > height ? height2 : height;
                    if (i9 == size) {
                        break;
                    } else {
                        i9++;
                    }
                }
            }
        } else {
            height = 0;
        }
        this.mainAxisSize = height;
        int i10 = height + i2;
        this.mainAxisSizeWithSpacings = i10 < 0 ? 0 : i10;
        List<Placeable> list2 = this.placeables;
        if (!list2.isEmpty()) {
            Placeable placeable3 = list2.get(0);
            int width = isVertical() ? placeable3.getWidth() : placeable3.getHeight();
            int size2 = list2.size() - 1;
            if (1 <= size2) {
                while (true) {
                    Placeable placeable4 = list2.get(i7);
                    int width2 = isVertical() ? placeable4.getWidth() : placeable4.getHeight();
                    width = width2 > width ? width2 : width;
                    if (i7 == size2) {
                        break;
                    } else {
                        i7++;
                    }
                }
            }
            i8 = width;
        }
        this.crossAxisSize = i8;
        this.mainAxisLayoutSize = Integer.MIN_VALUE;
        boolean zIsVertical = isVertical();
        int i11 = this.mainAxisSize;
        this.size = zIsVertical ? IntSize.m9208constructorimpl((((long) i11) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) i8) << 32)) : IntSize.m9208constructorimpl((((long) i11) << 32) | (((long) i8) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        this.offset = IntOffset.Companion.m9181getZeronOccac();
    }

    /* JADX INFO: renamed from: copy-4Tuh3kE, reason: not valid java name */
    private final long m2273copy4Tuh3kE(long j, nl3<? super Integer, Integer> nl3Var) {
        return IntOffset.m9164constructorimpl((((long) (isVertical() ? IntOffset.m9170getXimpl(j) : nl3Var.invoke(Integer.valueOf(IntOffset.m9170getXimpl(j))).intValue())) << 32) | (((long) (isVertical() ? nl3Var.invoke(Integer.valueOf(IntOffset.m9171getYimpl(j))).intValue() : IntOffset.m9171getYimpl(j))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: getMainAxis--gyyYBs, reason: not valid java name */
    private final int m2274getMainAxisgyyYBs(long j) {
        return isVertical() ? IntOffset.m9171getYimpl(j) : IntOffset.m9170getXimpl(j);
    }

    private final int getMainAxisSize(Placeable placeable) {
        return isVertical() ? placeable.getHeight() : placeable.getWidth();
    }

    public final void applyScrollDelta(int i, boolean z) {
        if (getNonScrollableItem()) {
            return;
        }
        long jMo2257getOffsetnOccac = mo2257getOffsetnOccac();
        int iM9170getXimpl = isVertical() ? IntOffset.m9170getXimpl(jMo2257getOffsetnOccac) : IntOffset.m9170getXimpl(jMo2257getOffsetnOccac) + i;
        boolean zIsVertical = isVertical();
        int iM9171getYimpl = IntOffset.m9171getYimpl(jMo2257getOffsetnOccac);
        if (zIsVertical) {
            iM9171getYimpl += i;
        }
        this.offset = IntOffset.m9164constructorimpl((((long) iM9170getXimpl) << 32) | (((long) iM9171getYimpl) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        if (z) {
            int placeablesCount = getPlaceablesCount();
            for (int i2 = 0; i2 < placeablesCount; i2++) {
                LazyLayoutItemAnimation animation = this.animator.getAnimation(getKey(), i2);
                if (animation != null) {
                    long jM2211getRawOffsetnOccac = animation.m2211getRawOffsetnOccac();
                    int iM9170getXimpl2 = isVertical() ? IntOffset.m9170getXimpl(jM2211getRawOffsetnOccac) : Integer.valueOf(IntOffset.m9170getXimpl(jM2211getRawOffsetnOccac) + i).intValue();
                    boolean zIsVertical2 = isVertical();
                    int iM9171getYimpl2 = IntOffset.m9171getYimpl(jM2211getRawOffsetnOccac);
                    if (zIsVertical2) {
                        iM9171getYimpl2 = Integer.valueOf(iM9171getYimpl2 + i).intValue();
                    }
                    animation.m2214setRawOffsetgyyYBs(IntOffset.m9164constructorimpl((((long) iM9171getYimpl2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) iM9170getXimpl2) << 32)));
                }
            }
        }
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* JADX INFO: renamed from: getConstraints-msEJaDk */
    public long mo2163getConstraintsmsEJaDk() {
        return this.constraints;
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemInfo
    public Object getContentType() {
        return this.contentType;
    }

    public final int getCrossAxisSize() {
        return this.crossAxisSize;
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemInfo, androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public int getIndex() {
        return this.index;
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemInfo, androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public Object getKey() {
        return this.key;
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemInfo, androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public int getLane() {
        return this.lane;
    }

    public final int getMainAxisOffset() {
        return !isVertical() ? IntOffset.m9170getXimpl(mo2257getOffsetnOccac()) : IntOffset.m9171getYimpl(mo2257getOffsetnOccac());
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public int getMainAxisSizeWithSpacings() {
        return this.mainAxisSizeWithSpacings;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public boolean getNonScrollableItem() {
        return this.nonScrollableItem;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* JADX INFO: renamed from: getOffset-Bjo55l4 */
    public long mo2164getOffsetBjo55l4(int i) {
        return mo2257getOffsetnOccac();
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemInfo
    /* JADX INFO: renamed from: getOffset-nOcc-ac */
    public long mo2257getOffsetnOccac() {
        return this.offset;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public Object getParentData(int i) {
        return this.placeables.get(i).getParentData();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public int getPlaceablesCount() {
        return this.placeables.size();
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemInfo
    /* JADX INFO: renamed from: getSize-YbymL2g */
    public long mo2258getSizeYbymL2g() {
        return this.size;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public int getSpan() {
        return this.span;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public boolean isVertical() {
        return this.isVertical;
    }

    public final boolean isVisible() {
        return this.isVisible;
    }

    /* JADX INFO: renamed from: place-GMOY1bU, reason: not valid java name */
    public final void m2275placeGMOY1bU(Placeable.PlacementScope placementScope, boolean z, long j, boolean z2) {
        GraphicsLayer layer;
        if (!(this.mainAxisLayoutSize != Integer.MIN_VALUE)) {
            InlineClassHelperKt.throwIllegalArgumentException("position() should be called first");
        }
        List<Placeable> list = this.placeables;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Placeable placeable = list.get(i);
            int height = this.minMainAxisOffset - (isVertical() ? placeable.getHeight() : placeable.getWidth());
            int i2 = this.maxMainAxisOffset;
            long jMo2257getOffsetnOccac = mo2257getOffsetnOccac();
            LazyLayoutItemAnimation animation = this.animator.getAnimation(getKey(), i);
            if (animation != null) {
                if (z2) {
                    animation.m2213setLookaheadOffsetgyyYBs(jMo2257getOffsetnOccac);
                } else {
                    long jM9174plusqkQi6aY = IntOffset.m9174plusqkQi6aY(!IntOffset.m9169equalsimpl0(animation.m2209getLookaheadOffsetnOccac(), LazyLayoutItemAnimation.Companion.m2215getNotInitializednOccac()) ? animation.m2209getLookaheadOffsetnOccac() : jMo2257getOffsetnOccac, animation.m2210getPlacementDeltanOccac());
                    if ((m2274getMainAxisgyyYBs(jMo2257getOffsetnOccac) <= height && m2274getMainAxisgyyYBs(jM9174plusqkQi6aY) <= height) || (m2274getMainAxisgyyYBs(jMo2257getOffsetnOccac) >= i2 && m2274getMainAxisgyyYBs(jM9174plusqkQi6aY) >= i2)) {
                        animation.cancelPlacementAnimation();
                    }
                    jMo2257getOffsetnOccac = jM9174plusqkQi6aY;
                }
                layer = animation.getLayer();
            } else {
                layer = null;
            }
            if (z) {
                int iM9170getXimpl = isVertical() ? IntOffset.m9170getXimpl(jMo2257getOffsetnOccac) : (this.mainAxisLayoutSize - IntOffset.m9170getXimpl(jMo2257getOffsetnOccac)) - (isVertical() ? placeable.getHeight() : placeable.getWidth());
                jMo2257getOffsetnOccac = IntOffset.m9164constructorimpl((((long) (isVertical() ? (this.mainAxisLayoutSize - IntOffset.m9171getYimpl(jMo2257getOffsetnOccac)) - (isVertical() ? placeable.getHeight() : placeable.getWidth()) : IntOffset.m9171getYimpl(jMo2257getOffsetnOccac))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) iM9170getXimpl) << 32));
            }
            long jM9174plusqkQi6aY2 = IntOffset.m9174plusqkQi6aY(jMo2257getOffsetnOccac, j);
            if (!z2 && animation != null) {
                animation.m2212setFinalOffsetgyyYBs(jM9174plusqkQi6aY2);
            }
            if (layer != null) {
                Placeable.PlacementScope.m7771placeRelativeWithLayeraW9wM$default(placementScope, placeable, jM9174plusqkQi6aY2, layer, 0.0f, 4, (Object) null);
            } else {
                Placeable.PlacementScope.m7770placeRelativeWithLayeraW9wM$default(placementScope, placeable, jM9174plusqkQi6aY2, 0.0f, (nl3) null, 6, (Object) null);
            }
        }
    }

    public final void position(int i, int i2, int i3) {
        long jM9164constructorimpl;
        this.mainAxisLayoutSize = i3;
        this.minMainAxisOffset = -this.beforeContentPadding;
        this.maxMainAxisOffset = i3 + this.afterContentPadding;
        if (isVertical()) {
            jM9164constructorimpl = IntOffset.m9164constructorimpl((((long) i2) << 32) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) i)));
        } else {
            jM9164constructorimpl = IntOffset.m9164constructorimpl((((long) i2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) i) << 32));
        }
        this.offset = jM9164constructorimpl;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public void setNonScrollableItem(boolean z) {
        this.nonScrollableItem = z;
    }

    public final void setVisible(boolean z) {
        this.isVisible = z;
    }

    public String toString() {
        return super.toString();
    }

    public final void updateMainAxisLayoutSize(int i) {
        this.mainAxisLayoutSize = i;
        this.maxMainAxisOffset = i + this.afterContentPadding;
    }

    public final int getMainAxisSize() {
        return this.mainAxisSize;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public void position(int i, int i2, int i3, int i4) {
        if (isVertical()) {
            i3 = i4;
        }
        position(i, i2, i3);
    }

    public /* synthetic */ LazyStaggeredGridMeasuredItem(int i, Object obj, List list, boolean z, int i2, int i3, int i4, int i5, int i6, Object obj2, LazyLayoutItemAnimator lazyLayoutItemAnimator, long j, jh2 jh2Var) {
        this(i, obj, list, z, i2, i3, i4, i5, i6, obj2, lazyLayoutItemAnimator, j);
    }
}
