package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.muxer.MuxerUtil;
import defpackage.jh2;
import defpackage.nl3;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class LazyGridMeasuredItem implements LazyGridItemInfo, LazyLayoutMeasuredItem {
    public static final int $stable = 8;
    private final int afterContentPadding;
    private final LazyLayoutItemAnimator<LazyGridMeasuredItem> animator;
    private final int beforeContentPadding;
    private int column;
    private final long constraints;
    private final Object contentType;
    private final int crossAxisSize;
    private final int index;
    private final boolean isVertical;
    private final Object key;
    private final int lane;
    private final LayoutDirection layoutDirection;
    private int mainAxisLayoutSize;
    private final int mainAxisSize;
    private final int mainAxisSizeWithSpacings;
    private int maxMainAxisOffset;
    private int minMainAxisOffset;
    private boolean nonScrollableItem;
    private long offset;
    private final List<Placeable> placeables;
    private final boolean reverseLayout;
    private int row;
    private final long size;
    private final int span;
    private final long visualOffset;

    /* JADX WARN: Multi-variable type inference failed */
    private LazyGridMeasuredItem(int i, Object obj, boolean z, int i2, int i3, boolean z2, LayoutDirection layoutDirection, int i4, int i5, List<? extends Placeable> list, long j, Object obj2, LazyLayoutItemAnimator<LazyGridMeasuredItem> lazyLayoutItemAnimator, long j2, int i6, int i7) {
        this.index = i;
        this.key = obj;
        this.isVertical = z;
        this.crossAxisSize = i2;
        this.reverseLayout = z2;
        this.layoutDirection = layoutDirection;
        this.beforeContentPadding = i4;
        this.afterContentPadding = i5;
        this.placeables = list;
        this.visualOffset = j;
        this.contentType = obj2;
        this.animator = lazyLayoutItemAnimator;
        this.constraints = j2;
        this.lane = i6;
        this.span = i7;
        this.mainAxisLayoutSize = Integer.MIN_VALUE;
        int size = list.size();
        int iMax = 0;
        for (int i8 = 0; i8 < size; i8++) {
            Placeable placeable = (Placeable) list.get(i8);
            iMax = Math.max(iMax, isVertical() ? placeable.getHeight() : placeable.getWidth());
        }
        this.mainAxisSize = iMax;
        int i9 = i3 + iMax;
        this.mainAxisSizeWithSpacings = i9 >= 0 ? i9 : 0;
        boolean zIsVertical = isVertical();
        int i10 = this.crossAxisSize;
        this.size = zIsVertical ? IntSize.m9208constructorimpl((((long) i10) << 32) | (((long) iMax) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) : IntSize.m9208constructorimpl((((long) i10) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) iMax) << 32));
        this.offset = IntOffset.Companion.m9181getZeronOccac();
        this.row = -1;
        this.column = -1;
    }

    /* JADX INFO: renamed from: copy-4Tuh3kE, reason: not valid java name */
    private final long m2189copy4Tuh3kE(long j, nl3<? super Integer, Integer> nl3Var) {
        return IntOffset.m9164constructorimpl((((long) (isVertical() ? IntOffset.m9170getXimpl(j) : nl3Var.invoke(Integer.valueOf(IntOffset.m9170getXimpl(j))).intValue())) << 32) | (((long) (isVertical() ? nl3Var.invoke(Integer.valueOf(IntOffset.m9171getYimpl(j))).intValue() : IntOffset.m9171getYimpl(j))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: getMainAxis--gyyYBs, reason: not valid java name */
    private final int m2190getMainAxisgyyYBs(long j) {
        return isVertical() ? IntOffset.m9171getYimpl(j) : IntOffset.m9170getXimpl(j);
    }

    private final int getMainAxisSize(Placeable placeable) {
        return isVertical() ? placeable.getHeight() : placeable.getWidth();
    }

    public final void applyScrollDelta(int i, boolean z) {
        if (getNonScrollableItem()) {
            return;
        }
        long jMo2184getOffsetnOccac = mo2184getOffsetnOccac();
        int iM9170getXimpl = isVertical() ? IntOffset.m9170getXimpl(jMo2184getOffsetnOccac) : IntOffset.m9170getXimpl(jMo2184getOffsetnOccac) + i;
        boolean zIsVertical = isVertical();
        int iM9171getYimpl = IntOffset.m9171getYimpl(jMo2184getOffsetnOccac);
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

    @Override // androidx.compose.foundation.lazy.grid.LazyGridItemInfo
    public int getColumn() {
        return this.column;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* JADX INFO: renamed from: getConstraints-msEJaDk */
    public long mo2163getConstraintsmsEJaDk() {
        return this.constraints;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridItemInfo
    public Object getContentType() {
        return this.contentType;
    }

    public final int getCrossAxisSize() {
        return this.crossAxisSize;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridItemInfo, androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public int getIndex() {
        return this.index;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridItemInfo, androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public Object getKey() {
        return this.key;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public int getLane() {
        return this.lane;
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
        return mo2184getOffsetnOccac();
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridItemInfo
    /* JADX INFO: renamed from: getOffset-nOcc-ac */
    public long mo2184getOffsetnOccac() {
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

    @Override // androidx.compose.foundation.lazy.grid.LazyGridItemInfo
    public int getRow() {
        return this.row;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridItemInfo
    /* JADX INFO: renamed from: getSize-YbymL2g */
    public long mo2185getSizeYbymL2g() {
        return this.size;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridItemInfo, androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public int getSpan() {
        return this.span;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public boolean isVertical() {
        return this.isVertical;
    }

    public final void place(Placeable.PlacementScope placementScope, boolean z) {
        GraphicsLayer layer;
        Placeable.PlacementScope placementScope2;
        int iM9170getXimpl;
        int iM9171getYimpl;
        int i = 0;
        if (!(this.mainAxisLayoutSize != Integer.MIN_VALUE)) {
            InlineClassHelperKt.throwIllegalArgumentException("position() should be called first");
        }
        int placeablesCount = getPlaceablesCount();
        while (i < placeablesCount) {
            Placeable placeable = this.placeables.get(i);
            int mainAxisSize = this.minMainAxisOffset - getMainAxisSize(placeable);
            int i2 = this.maxMainAxisOffset;
            long jMo2184getOffsetnOccac = mo2184getOffsetnOccac();
            LazyLayoutItemAnimation animation = this.animator.getAnimation(getKey(), i);
            if (animation != null) {
                if (z) {
                    animation.m2213setLookaheadOffsetgyyYBs(jMo2184getOffsetnOccac);
                } else {
                    long jM9174plusqkQi6aY = IntOffset.m9174plusqkQi6aY(!IntOffset.m9169equalsimpl0(animation.m2209getLookaheadOffsetnOccac(), LazyLayoutItemAnimation.Companion.m2215getNotInitializednOccac()) ? animation.m2209getLookaheadOffsetnOccac() : jMo2184getOffsetnOccac, animation.m2210getPlacementDeltanOccac());
                    if ((m2190getMainAxisgyyYBs(jMo2184getOffsetnOccac) <= mainAxisSize && m2190getMainAxisgyyYBs(jM9174plusqkQi6aY) <= mainAxisSize) || (m2190getMainAxisgyyYBs(jMo2184getOffsetnOccac) >= i2 && m2190getMainAxisgyyYBs(jM9174plusqkQi6aY) >= i2)) {
                        animation.cancelPlacementAnimation();
                    }
                    jMo2184getOffsetnOccac = jM9174plusqkQi6aY;
                }
                layer = animation.getLayer();
            } else {
                layer = null;
            }
            if (this.reverseLayout) {
                if (isVertical()) {
                    iM9170getXimpl = IntOffset.m9170getXimpl(jMo2184getOffsetnOccac);
                } else {
                    iM9170getXimpl = (this.mainAxisLayoutSize - IntOffset.m9170getXimpl(jMo2184getOffsetnOccac)) - getMainAxisSize(placeable);
                }
                if (isVertical()) {
                    iM9171getYimpl = (this.mainAxisLayoutSize - IntOffset.m9171getYimpl(jMo2184getOffsetnOccac)) - getMainAxisSize(placeable);
                } else {
                    iM9171getYimpl = IntOffset.m9171getYimpl(jMo2184getOffsetnOccac);
                }
                jMo2184getOffsetnOccac = IntOffset.m9164constructorimpl((((long) iM9171getYimpl) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) iM9170getXimpl) << 32));
            }
            long jM9174plusqkQi6aY2 = IntOffset.m9174plusqkQi6aY(jMo2184getOffsetnOccac, this.visualOffset);
            if (!z && animation != null) {
                animation.m2212setFinalOffsetgyyYBs(jM9174plusqkQi6aY2);
            }
            if (!isVertical()) {
                placementScope2 = placementScope;
                GraphicsLayer graphicsLayer = layer;
                if (graphicsLayer != null) {
                    Placeable.PlacementScope.m7771placeRelativeWithLayeraW9wM$default(placementScope2, placeable, jM9174plusqkQi6aY2, graphicsLayer, 0.0f, 4, (Object) null);
                } else {
                    Placeable.PlacementScope.m7770placeRelativeWithLayeraW9wM$default(placementScope2, placeable, jM9174plusqkQi6aY2, 0.0f, (nl3) null, 6, (Object) null);
                }
            } else if (layer != null) {
                placementScope2 = placementScope;
                Placeable.PlacementScope.m7773placeWithLayeraW9wM$default(placementScope2, placeable, jM9174plusqkQi6aY2, layer, 0.0f, 4, (Object) null);
            } else {
                placementScope2 = placementScope;
                Placeable.PlacementScope.m7772placeWithLayeraW9wM$default(placementScope2, placeable, jM9174plusqkQi6aY2, 0.0f, (nl3) null, 6, (Object) null);
            }
            i++;
            placementScope = placementScope2;
        }
    }

    public final void position(int i, int i2, int i3, int i4, int i5, int i6) {
        long jM9164constructorimpl;
        this.mainAxisLayoutSize = isVertical() ? i4 : i3;
        if (!isVertical()) {
            i3 = i4;
        }
        if (isVertical() && this.layoutDirection == LayoutDirection.Rtl) {
            i2 = (i3 - i2) - this.crossAxisSize;
        }
        if (isVertical()) {
            jM9164constructorimpl = IntOffset.m9164constructorimpl((((long) i2) << 32) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) i)));
        } else {
            jM9164constructorimpl = IntOffset.m9164constructorimpl((((long) i2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) i) << 32));
        }
        this.offset = jM9164constructorimpl;
        this.row = i5;
        this.column = i6;
        this.minMainAxisOffset = -this.beforeContentPadding;
        this.maxMainAxisOffset = this.mainAxisLayoutSize + this.afterContentPadding;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public void setNonScrollableItem(boolean z) {
        this.nonScrollableItem = z;
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
        position(i, i2, i3, i4, -1, -1);
    }

    public /* synthetic */ LazyGridMeasuredItem(int i, Object obj, boolean z, int i2, int i3, boolean z2, LayoutDirection layoutDirection, int i4, int i5, List list, long j, Object obj2, LazyLayoutItemAnimator lazyLayoutItemAnimator, long j2, int i6, int i7, jh2 jh2Var) {
        this(i, obj, z, i2, i3, z2, layoutDirection, i4, i5, list, j, obj2, lazyLayoutItemAnimator, j2, i6, i7);
    }
}
