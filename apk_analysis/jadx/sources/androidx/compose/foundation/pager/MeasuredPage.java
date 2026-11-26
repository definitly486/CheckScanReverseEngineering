package androidx.compose.foundation.pager;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.muxer.MuxerUtil;
import defpackage.jh2;
import defpackage.ng;
import defpackage.nl3;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class MeasuredPage implements PageInfo {
    public static final int $stable = 8;
    private final int crossAxisSize;
    private final Alignment.Horizontal horizontalAlignment;
    private final int index;
    private final boolean isVertical;
    private final Object key;
    private final LayoutDirection layoutDirection;
    private int mainAxisLayoutSize;
    private int offset;
    private final int[] placeableOffsets;
    private final List<Placeable> placeables;
    private final boolean reverseLayout;
    private final int size;
    private final Alignment.Vertical verticalAlignment;
    private final long visualOffset;

    /* JADX WARN: Multi-variable type inference failed */
    private MeasuredPage(int i, int i2, List<? extends Placeable> list, long j, Object obj, Orientation orientation, Alignment.Horizontal horizontal, Alignment.Vertical vertical, LayoutDirection layoutDirection, boolean z) {
        this.index = i;
        this.size = i2;
        this.placeables = list;
        this.visualOffset = j;
        this.key = obj;
        this.horizontalAlignment = horizontal;
        this.verticalAlignment = vertical;
        this.layoutDirection = layoutDirection;
        this.reverseLayout = z;
        this.isVertical = orientation == Orientation.Vertical;
        int size = list.size();
        int iMax = 0;
        for (int i3 = 0; i3 < size; i3++) {
            Placeable placeable = (Placeable) list.get(i3);
            iMax = Math.max(iMax, !this.isVertical ? placeable.getHeight() : placeable.getWidth());
        }
        this.crossAxisSize = iMax;
        this.placeableOffsets = new int[this.placeables.size() * 2];
        this.mainAxisLayoutSize = Integer.MIN_VALUE;
    }

    /* JADX INFO: renamed from: copy-4Tuh3kE, reason: not valid java name */
    private final long m2293copy4Tuh3kE(long j, nl3<? super Integer, Integer> nl3Var) {
        return IntOffset.m9164constructorimpl((((long) (this.isVertical ? IntOffset.m9170getXimpl(j) : nl3Var.invoke(Integer.valueOf(IntOffset.m9170getXimpl(j))).intValue())) << 32) | (((long) (this.isVertical ? nl3Var.invoke(Integer.valueOf(IntOffset.m9171getYimpl(j))).intValue() : IntOffset.m9171getYimpl(j))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    private final int getMainAxisSize(Placeable placeable) {
        return this.isVertical ? placeable.getHeight() : placeable.getWidth();
    }

    /* JADX INFO: renamed from: getOffset-Bjo55l4, reason: not valid java name */
    private final long m2294getOffsetBjo55l4(int i) {
        int[] iArr = this.placeableOffsets;
        int i2 = i * 2;
        int i3 = iArr[i2];
        return IntOffset.m9164constructorimpl((((long) iArr[i2 + 1]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) i3) << 32));
    }

    public final void applyScrollDelta(int i) {
        this.offset = getOffset() + i;
        int length = this.placeableOffsets.length;
        for (int i2 = 0; i2 < length; i2++) {
            boolean z = this.isVertical;
            if ((z && i2 % 2 == 1) || (!z && i2 % 2 == 0)) {
                int[] iArr = this.placeableOffsets;
                iArr[i2] = iArr[i2] + i;
            }
        }
    }

    public final int getCrossAxisSize() {
        return this.crossAxisSize;
    }

    @Override // androidx.compose.foundation.pager.PageInfo
    public int getIndex() {
        return this.index;
    }

    @Override // androidx.compose.foundation.pager.PageInfo
    public Object getKey() {
        return this.key;
    }

    @Override // androidx.compose.foundation.pager.PageInfo
    public int getOffset() {
        return this.offset;
    }

    public final int getSize() {
        return this.size;
    }

    public final void place(Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope placementScope2;
        int iM9170getXimpl;
        int iM9171getYimpl;
        int i = 0;
        if (!(this.mainAxisLayoutSize != Integer.MIN_VALUE)) {
            InlineClassHelperKt.throwIllegalArgumentException("position() should be called first");
        }
        int size = this.placeables.size();
        while (i < size) {
            Placeable placeable = this.placeables.get(i);
            long jM2294getOffsetBjo55l4 = m2294getOffsetBjo55l4(i);
            if (this.reverseLayout) {
                if (this.isVertical) {
                    iM9170getXimpl = IntOffset.m9170getXimpl(jM2294getOffsetBjo55l4);
                } else {
                    iM9170getXimpl = (this.mainAxisLayoutSize - IntOffset.m9170getXimpl(jM2294getOffsetBjo55l4)) - getMainAxisSize(placeable);
                }
                if (this.isVertical) {
                    iM9171getYimpl = (this.mainAxisLayoutSize - IntOffset.m9171getYimpl(jM2294getOffsetBjo55l4)) - getMainAxisSize(placeable);
                } else {
                    iM9171getYimpl = IntOffset.m9171getYimpl(jM2294getOffsetBjo55l4);
                }
                jM2294getOffsetBjo55l4 = IntOffset.m9164constructorimpl((((long) iM9170getXimpl) << 32) | (((long) iM9171getYimpl) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            }
            long jM9174plusqkQi6aY = IntOffset.m9174plusqkQi6aY(jM2294getOffsetBjo55l4, this.visualOffset);
            if (this.isVertical) {
                placementScope2 = placementScope;
                Placeable.PlacementScope.m7772placeWithLayeraW9wM$default(placementScope2, placeable, jM9174plusqkQi6aY, 0.0f, (nl3) null, 6, (Object) null);
            } else {
                placementScope2 = placementScope;
                Placeable.PlacementScope.m7770placeRelativeWithLayeraW9wM$default(placementScope2, placeable, jM9174plusqkQi6aY, 0.0f, (nl3) null, 6, (Object) null);
            }
            i++;
            placementScope = placementScope2;
        }
    }

    public final void position(int i, int i2, int i3) {
        int width;
        this.offset = i;
        this.mainAxisLayoutSize = this.isVertical ? i3 : i2;
        List<Placeable> list = this.placeables;
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            Placeable placeable = list.get(i4);
            int i5 = i4 * 2;
            boolean z = this.isVertical;
            int[] iArr = this.placeableOffsets;
            if (z) {
                Alignment.Horizontal horizontal = this.horizontalAlignment;
                if (horizontal == null) {
                    throw ng.f("null horizontalAlignment");
                }
                iArr[i5] = horizontal.align(placeable.getWidth(), i2, this.layoutDirection);
                this.placeableOffsets[i5 + 1] = i;
                width = placeable.getHeight();
            } else {
                iArr[i5] = i;
                int i6 = i5 + 1;
                Alignment.Vertical vertical = this.verticalAlignment;
                if (vertical == null) {
                    throw ng.f("null verticalAlignment");
                }
                iArr[i6] = vertical.align(placeable.getHeight(), i3);
                width = placeable.getWidth();
            }
            i = width + i;
        }
    }

    public /* synthetic */ MeasuredPage(int i, int i2, List list, long j, Object obj, Orientation orientation, Alignment.Horizontal horizontal, Alignment.Vertical vertical, LayoutDirection layoutDirection, boolean z, jh2 jh2Var) {
        this(i, i2, list, j, obj, orientation, horizontal, vertical, layoutDirection, z);
    }
}
