package androidx.compose.foundation.lazy;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.muxer.MuxerUtil;
import defpackage.jh2;
import defpackage.ng;
import defpackage.nl3;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class LazyListMeasuredItem implements LazyListItemInfo, LazyLayoutMeasuredItem {
    public static final int $stable = 8;
    private final int afterContentPadding;
    private final LazyLayoutItemAnimator<LazyListMeasuredItem> animator;
    private final int beforeContentPadding;
    private final long constraints;
    private final Object contentType;
    private final int crossAxisSize;
    private final Alignment.Horizontal horizontalAlignment;
    private final int index;
    private final boolean isVertical;
    private final Object key;
    private final int lane;
    private final LayoutDirection layoutDirection;
    private int mainAxisLayoutSize;
    private final int mainAxisSizeWithSpacings;
    private int maxMainAxisOffset;
    private int minMainAxisOffset;
    private boolean nonScrollableItem;
    private int offset;
    private final int[] placeableOffsets;
    private final List<Placeable> placeables;
    private final boolean reverseLayout;
    private final int size;
    private final int spacing;
    private final int span;
    private final Alignment.Vertical verticalAlignment;
    private final long visualOffset;

    /* JADX WARN: Multi-variable type inference failed */
    private LazyListMeasuredItem(int i, List<? extends Placeable> list, boolean z, Alignment.Horizontal horizontal, Alignment.Vertical vertical, LayoutDirection layoutDirection, boolean z2, int i2, int i3, int i4, long j, Object obj, Object obj2, LazyLayoutItemAnimator<LazyListMeasuredItem> lazyLayoutItemAnimator, long j2) {
        this.index = i;
        this.placeables = list;
        this.isVertical = z;
        this.horizontalAlignment = horizontal;
        this.verticalAlignment = vertical;
        this.layoutDirection = layoutDirection;
        this.reverseLayout = z2;
        this.beforeContentPadding = i2;
        this.afterContentPadding = i3;
        this.spacing = i4;
        this.visualOffset = j;
        this.key = obj;
        this.contentType = obj2;
        this.animator = lazyLayoutItemAnimator;
        this.constraints = j2;
        this.span = 1;
        this.mainAxisLayoutSize = Integer.MIN_VALUE;
        int size = list.size();
        int height = 0;
        int iMax = 0;
        for (int i5 = 0; i5 < size; i5++) {
            Placeable placeable = (Placeable) list.get(i5);
            height += isVertical() ? placeable.getHeight() : placeable.getWidth();
            iMax = Math.max(iMax, !isVertical() ? placeable.getHeight() : placeable.getWidth());
        }
        this.size = height;
        int size2 = getSize() + this.spacing;
        this.mainAxisSizeWithSpacings = size2 >= 0 ? size2 : 0;
        this.crossAxisSize = iMax;
        this.placeableOffsets = new int[this.placeables.size() * 2];
    }

    /* JADX INFO: renamed from: copy-4Tuh3kE, reason: not valid java name */
    private final long m2161copy4Tuh3kE(long j, nl3<? super Integer, Integer> nl3Var) {
        int iIntValue;
        int iM9171getYimpl;
        if (isVertical()) {
            iIntValue = IntOffset.m9170getXimpl(j);
            iM9171getYimpl = nl3Var.invoke(Integer.valueOf(IntOffset.m9171getYimpl(j))).intValue();
        } else {
            iIntValue = nl3Var.invoke(Integer.valueOf(IntOffset.m9170getXimpl(j))).intValue();
            iM9171getYimpl = IntOffset.m9171getYimpl(j);
        }
        return IntOffset.m9164constructorimpl((((long) iM9171getYimpl) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) iIntValue) << 32));
    }

    /* JADX INFO: renamed from: getMainAxis--gyyYBs, reason: not valid java name */
    private final int m2162getMainAxisgyyYBs(long j) {
        return isVertical() ? IntOffset.m9171getYimpl(j) : IntOffset.m9170getXimpl(j);
    }

    private final int getMainAxisSize(Placeable placeable) {
        return isVertical() ? placeable.getHeight() : placeable.getWidth();
    }

    public final void applyScrollDelta(int i, boolean z) {
        int iIntValue;
        int iM9171getYimpl;
        if (getNonScrollableItem()) {
            return;
        }
        this.offset = getOffset() + i;
        int length = this.placeableOffsets.length;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 & 1;
            if ((isVertical() && i3 != 0) || (!isVertical() && i3 == 0)) {
                int[] iArr = this.placeableOffsets;
                iArr[i2] = iArr[i2] + i;
            }
        }
        if (z) {
            int placeablesCount = getPlaceablesCount();
            for (int i4 = 0; i4 < placeablesCount; i4++) {
                LazyLayoutItemAnimation animation = this.animator.getAnimation(getKey(), i4);
                if (animation != null) {
                    long jM2211getRawOffsetnOccac = animation.m2211getRawOffsetnOccac();
                    if (isVertical()) {
                        iIntValue = IntOffset.m9170getXimpl(jM2211getRawOffsetnOccac);
                        iM9171getYimpl = Integer.valueOf(IntOffset.m9171getYimpl(jM2211getRawOffsetnOccac) + i).intValue();
                    } else {
                        iIntValue = Integer.valueOf(IntOffset.m9170getXimpl(jM2211getRawOffsetnOccac) + i).intValue();
                        iM9171getYimpl = IntOffset.m9171getYimpl(jM2211getRawOffsetnOccac);
                    }
                    animation.m2214setRawOffsetgyyYBs(IntOffset.m9164constructorimpl((((long) iIntValue) << 32) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) iM9171getYimpl))));
                }
            }
        }
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* JADX INFO: renamed from: getConstraints-msEJaDk, reason: not valid java name */
    public long mo2163getConstraintsmsEJaDk() {
        return this.constraints;
    }

    @Override // androidx.compose.foundation.lazy.LazyListItemInfo
    public Object getContentType() {
        return this.contentType;
    }

    public final int getCrossAxisSize() {
        return this.crossAxisSize;
    }

    @Override // androidx.compose.foundation.lazy.LazyListItemInfo, androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public int getIndex() {
        return this.index;
    }

    @Override // androidx.compose.foundation.lazy.LazyListItemInfo, androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
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

    @Override // androidx.compose.foundation.lazy.LazyListItemInfo
    public int getOffset() {
        return this.offset;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    /* JADX INFO: renamed from: getOffset-Bjo55l4, reason: not valid java name */
    public long mo2164getOffsetBjo55l4(int i) {
        if (i == 0 && getPlaceablesCount() == 0) {
            boolean zIsVertical = isVertical();
            int offset = getOffset();
            return zIsVertical ? IntOffset.m9164constructorimpl(((long) offset) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) : IntOffset.m9164constructorimpl(((long) offset) << 32);
        }
        int[] iArr = this.placeableOffsets;
        int i2 = i * 2;
        return IntOffset.m9164constructorimpl((((long) iArr[i2 + 1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) iArr[i2]) << 32));
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public Object getParentData(int i) {
        return this.placeables.get(i).getParentData();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public int getPlaceablesCount() {
        return this.placeables.size();
    }

    @Override // androidx.compose.foundation.lazy.LazyListItemInfo
    public int getSize() {
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

    public final void place(Placeable.PlacementScope placementScope, boolean z) {
        GraphicsLayer layer;
        Placeable.PlacementScope placementScope2;
        long jM9170getXimpl;
        int i = 0;
        if (!(this.mainAxisLayoutSize != Integer.MIN_VALUE)) {
            InlineClassHelperKt.throwIllegalArgumentException("position() should be called first");
        }
        int placeablesCount = getPlaceablesCount();
        while (i < placeablesCount) {
            Placeable placeable = this.placeables.get(i);
            int mainAxisSize = this.minMainAxisOffset - getMainAxisSize(placeable);
            int i2 = this.maxMainAxisOffset;
            long jMo2164getOffsetBjo55l4 = mo2164getOffsetBjo55l4(i);
            LazyLayoutItemAnimation animation = this.animator.getAnimation(getKey(), i);
            if (animation != null) {
                if (z) {
                    animation.m2213setLookaheadOffsetgyyYBs(jMo2164getOffsetBjo55l4);
                } else {
                    if (!IntOffset.m9169equalsimpl0(animation.m2209getLookaheadOffsetnOccac(), LazyLayoutItemAnimation.Companion.m2215getNotInitializednOccac())) {
                        jMo2164getOffsetBjo55l4 = animation.m2209getLookaheadOffsetnOccac();
                    }
                    long jM9174plusqkQi6aY = IntOffset.m9174plusqkQi6aY(jMo2164getOffsetBjo55l4, animation.m2210getPlacementDeltanOccac());
                    if ((m2162getMainAxisgyyYBs(jMo2164getOffsetBjo55l4) <= mainAxisSize && m2162getMainAxisgyyYBs(jM9174plusqkQi6aY) <= mainAxisSize) || (m2162getMainAxisgyyYBs(jMo2164getOffsetBjo55l4) >= i2 && m2162getMainAxisgyyYBs(jM9174plusqkQi6aY) >= i2)) {
                        animation.cancelPlacementAnimation();
                    }
                    jMo2164getOffsetBjo55l4 = jM9174plusqkQi6aY;
                }
                layer = animation.getLayer();
            } else {
                layer = null;
            }
            if (this.reverseLayout) {
                if (isVertical()) {
                    jM9170getXimpl = (((long) ((this.mainAxisLayoutSize - IntOffset.m9171getYimpl(jMo2164getOffsetBjo55l4)) - getMainAxisSize(placeable))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) IntOffset.m9170getXimpl(jMo2164getOffsetBjo55l4)) << 32);
                } else {
                    jM9170getXimpl = (((long) ((this.mainAxisLayoutSize - IntOffset.m9170getXimpl(jMo2164getOffsetBjo55l4)) - getMainAxisSize(placeable))) << 32) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) IntOffset.m9171getYimpl(jMo2164getOffsetBjo55l4)));
                }
                jMo2164getOffsetBjo55l4 = IntOffset.m9164constructorimpl(jM9170getXimpl);
            }
            long jM9174plusqkQi6aY2 = IntOffset.m9174plusqkQi6aY(jMo2164getOffsetBjo55l4, this.visualOffset);
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

    public final void position(int i, int i2, int i3) {
        int width;
        this.offset = i;
        this.mainAxisLayoutSize = isVertical() ? i3 : i2;
        List<Placeable> list = this.placeables;
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            Placeable placeable = list.get(i4);
            int i5 = i4 * 2;
            boolean zIsVertical = isVertical();
            int[] iArr = this.placeableOffsets;
            if (zIsVertical) {
                Alignment.Horizontal horizontal = this.horizontalAlignment;
                if (horizontal == null) {
                    throw ng.f("null horizontalAlignment when isVertical == true");
                }
                iArr[i5] = horizontal.align(placeable.getWidth(), i2, this.layoutDirection);
                this.placeableOffsets[i5 + 1] = i;
                width = placeable.getHeight();
            } else {
                iArr[i5] = i;
                int i6 = i5 + 1;
                Alignment.Vertical vertical = this.verticalAlignment;
                if (vertical == null) {
                    throw ng.f("null verticalAlignment when isVertical == false");
                }
                iArr[i6] = vertical.align(placeable.getHeight(), i3);
                width = placeable.getWidth();
            }
            i = width + i;
        }
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

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public void position(int i, int i2, int i3, int i4) {
        position(i, i3, i4);
    }

    public /* synthetic */ LazyListMeasuredItem(int i, List list, boolean z, Alignment.Horizontal horizontal, Alignment.Vertical vertical, LayoutDirection layoutDirection, boolean z2, int i2, int i3, int i4, long j, Object obj, Object obj2, LazyLayoutItemAnimator lazyLayoutItemAnimator, long j2, jh2 jh2Var) {
        this(i, list, z, horizontal, vertical, layoutDirection, z2, i2, i3, i4, j, obj, obj2, lazyLayoutItemAnimator, j2);
    }
}
