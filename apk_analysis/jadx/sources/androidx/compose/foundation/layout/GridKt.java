package androidx.compose.foundation.layout;

import androidx.collection.LongList;
import androidx.collection.MutableIntList;
import androidx.collection.MutableIntSet;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.muxer.MuxerUtil;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.h2;
import defpackage.hm;
import defpackage.j59;
import defpackage.kx6;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.ta8;
import defpackage.w65;
import defpackage.y74;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class GridKt {
    public static final String SubcomposeLayoutIntrinsicErrorMessage = "Grid intrinsic measurement failed because a SubcomposeLayout (e.g., LazyColumn or LazyRow) was placed inside a track that queries its intrinsic measurements (like `Auto` or `Flex`).\n\nTo fix this, change the track definition to `GridTrackSize.MinMax(min = 0.dp, max = 1.fr)` (or your desired flex weight for max) to explicitly set a minimum base size and bypass the intrinsic measurement pass.";

    public static final void Grid(nl3<? super GridConfigurationScope, j59> nl3Var, Modifier modifier, dm3<? super GridScope, ? super Composer, ? super Integer, j59> dm3Var, Composer composer, int i, int i2) {
        if ((i2 & 2) != 0) {
            modifier = Modifier.Companion;
        }
        State stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(nl3Var, composer, i & 14);
        Object objRememberedValue = composer.rememberedValue();
        if (objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new GridMeasurePolicy(stateRememberUpdatedState);
            composer.updateRememberedValue(objRememberedValue);
        }
        GridMeasurePolicy gridMeasurePolicy = (GridMeasurePolicy) objRememberedValue;
        int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode(composer, 0));
        CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifier);
        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
        ll3<ComposeUiNode> constructor = companion.getConstructor();
        if (composer.getApplier() == null) {
            ComposablesKt.invalidApplier();
        }
        composer.startReusableNode();
        if (composer.getInserting()) {
            composer.createNode(constructor);
        } else {
            composer.useNode();
        }
        Composer composerM5355constructorimpl = Updater.m5355constructorimpl(composer);
        Updater.m5363setimpl(composerM5355constructorimpl, gridMeasurePolicy, companion.getSetMeasurePolicy());
        Updater.m5363setimpl(composerM5355constructorimpl, currentCompositionLocalMap, companion.getSetResolvedCompositionLocals());
        Updater.m5363setimpl(composerM5355constructorimpl, modifierMaterializeModifier, (bm3<? super T, ? super Modifier, j59>) hm.b(companion, composerM5355constructorimpl, Integer.valueOf(iHashCode), composerM5355constructorimpl));
        dm3Var.invoke(GridScopeInstance.INSTANCE, composer, Integer.valueOf(((i >> 3) & 112) | 6));
        composer.endNode();
    }

    /* JADX INFO: renamed from: calculateColumnWidths-O3s9Psw, reason: not valid java name */
    private static final int m1956calculateColumnWidthsO3s9Psw(Density density, LongList longList, int i, int i2, int[] iArr, MutableObjectList<GridItem>[] mutableObjectListArr, long j, MutableObjectList<GridItem> mutableObjectList, int i3) {
        int i4;
        int iMo1428roundToPx0680j_4;
        float fM1968getValueimpl$foundation_layout;
        int iCalculateMinIntrinsicWidth;
        int i5 = 0;
        if (i == 0) {
            return 0;
        }
        int i6 = (i - 1) * i3;
        if (i6 < 0) {
            i6 = 0;
        }
        if (i2 == Integer.MAX_VALUE) {
            i4 = Integer.MAX_VALUE;
        } else {
            int i7 = i2 - i6;
            if (i7 < 0) {
                i7 = 0;
            }
            i4 = i7;
        }
        MutableIntList mutableIntList = new MutableIntList(0, 1, null);
        int[] iArr2 = new int[i];
        float f = 0.0f;
        while (i5 < i) {
            long jM1962constructorimpl = GridTrackSize.m1962constructorimpl(i5 < longList._size ? longList.get(i5) : GridTrackSize.Companion.m1979getAutoeyNpfc4());
            switch (GridTrackSize.m1967getTypeimpl$foundation_layout(jM1962constructorimpl)) {
                case 1:
                    iMo1428roundToPx0680j_4 = density.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(GridTrackSize.m1968getValueimpl$foundation_layout(jM1962constructorimpl)));
                    break;
                case 2:
                    iMo1428roundToPx0680j_4 = i4 == Integer.MAX_VALUE ? calculateMaxIntrinsicWidth(mutableObjectListArr[i5]) : w65.b(GridTrackSize.m1968getValueimpl$foundation_layout(jM1962constructorimpl) * i4);
                    break;
                case 3:
                    fM1968getValueimpl$foundation_layout = GridTrackSize.m1968getValueimpl$foundation_layout(jM1962constructorimpl) + f;
                    iCalculateMinIntrinsicWidth = calculateMinIntrinsicWidth(mutableObjectListArr[i5]);
                    f = fM1968getValueimpl$foundation_layout;
                    iMo1428roundToPx0680j_4 = iCalculateMinIntrinsicWidth;
                    break;
                case 4:
                    iMo1428roundToPx0680j_4 = calculateMinIntrinsicWidth(mutableObjectListArr[i5]);
                    break;
                case 5:
                    iMo1428roundToPx0680j_4 = calculateMaxIntrinsicWidth(mutableObjectListArr[i5]);
                    break;
                case 6:
                    if (i4 != Integer.MAX_VALUE) {
                        long jCalculateMinMaxIntrinsicWidth = calculateMinMaxIntrinsicWidth(mutableObjectListArr[i5]);
                        int i8 = (int) (jCalculateMinMaxIntrinsicWidth >>> 32);
                        iCalculateMinIntrinsicWidth = (int) (jCalculateMinMaxIntrinsicWidth & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
                        mutableIntList.add(i5);
                        iArr2[i5] = i8;
                        iMo1428roundToPx0680j_4 = iCalculateMinIntrinsicWidth;
                    } else {
                        iMo1428roundToPx0680j_4 = calculateMaxIntrinsicWidth(mutableObjectListArr[i5]);
                    }
                    break;
                case 7:
                    fM1968getValueimpl$foundation_layout = GridTrackSize.m1965getMaxValueimpl$foundation_layout(jM1962constructorimpl) + f;
                    iCalculateMinIntrinsicWidth = density.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(GridTrackSize.m1966getMinValueimpl$foundation_layout(jM1962constructorimpl)));
                    f = fM1968getValueimpl$foundation_layout;
                    iMo1428roundToPx0680j_4 = iCalculateMinIntrinsicWidth;
                    break;
                default:
                    iMo1428roundToPx0680j_4 = calculateMaxIntrinsicWidth(mutableObjectListArr[i5]);
                    break;
            }
            iArr[i5] = iMo1428roundToPx0680j_4;
            i5++;
        }
        m1959distributeSpanningSpaceWeOhcdQ(longList, iArr, mutableObjectList, false, j, null, i3);
        if (i4 != Integer.MAX_VALUE && mutableIntList._size != 0) {
            expandAutoTracks(mutableIntList, iArr, iArr2, i4);
        }
        return distributeFlexSpaceAndGetTotal(iArr, i4, f, i, longList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: calculateGridTrackSizes-cMe430U, reason: not valid java name */
    public static final GridTrackSizes m1957calculateGridTrackSizescMe430U(Density density, MutableObjectList<GridItem> mutableObjectList, LongList longList, LongList longList2, int i, int i2, long j, float f, float f2) {
        int iMo1428roundToPx0680j_4 = density.mo1428roundToPx0680j_4(f);
        int iMo1428roundToPx0680j_5 = density.mo1428roundToPx0680j_4(f2);
        MutableObjectList[] mutableObjectListArr = new MutableObjectList[i];
        MutableObjectList[] mutableObjectListArr2 = new MutableObjectList[i2];
        Object[] objArr = mutableObjectList.content;
        int i3 = mutableObjectList._size;
        for (int i4 = 0; i4 < i3; i4++) {
            GridItem gridItem = (GridItem) objArr[i4];
            if (gridItem.getColumn() < i) {
                MutableObjectList mutableObjectList2 = mutableObjectListArr[gridItem.getColumn()];
                if (mutableObjectList2 == null) {
                    mutableObjectList2 = new MutableObjectList(0, 1, null);
                    mutableObjectListArr[gridItem.getColumn()] = mutableObjectList2;
                }
                mutableObjectList2.add(gridItem);
            }
            if (gridItem.getRow() < i2) {
                MutableObjectList mutableObjectList3 = mutableObjectListArr2[gridItem.getRow()];
                if (mutableObjectList3 == null) {
                    mutableObjectList3 = new MutableObjectList(0, 1, null);
                    mutableObjectListArr2[gridItem.getRow()] = mutableObjectList3;
                }
                mutableObjectList3.add(gridItem);
            }
        }
        int[] iArr = new int[i];
        int iM1956calculateColumnWidthsO3s9Psw = m1956calculateColumnWidthsO3s9Psw(density, longList, i, Constraints.m8995getMaxWidthimpl(j), iArr, mutableObjectListArr, j, mutableObjectList, iMo1428roundToPx0680j_4);
        int[] iArr2 = new int[i2];
        return new GridTrackSizes(iArr, iArr2, iM1956calculateColumnWidthsO3s9Psw + (Math.max(0, i - 1) * iMo1428roundToPx0680j_4), m1958calculateRowHeightsESwBiLc(density, longList2, i2, Constraints.m8994getMaxHeightimpl(j), iArr2, mutableObjectListArr2, j, iArr, mutableObjectList, iMo1428roundToPx0680j_5) + (Math.max(0, i2 - 1) * iMo1428roundToPx0680j_5), iMo1428roundToPx0680j_4, iMo1428roundToPx0680j_5);
    }

    private static final int calculateMaxIntrinsicHeight(MutableObjectList<GridItem> mutableObjectList, int[] iArr, int i) {
        if (mutableObjectList == null) {
            return 0;
        }
        Object[] objArr = mutableObjectList.content;
        int i2 = mutableObjectList._size;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            GridItem gridItem = (GridItem) objArr[i4];
            if (gridItem.getRowSpan() == 1) {
                int column = gridItem.getColumn();
                try {
                    int iMaxIntrinsicHeight = gridItem.getMeasurable().maxIntrinsicHeight(column < iArr.length ? iArr[column] : i);
                    if (iMaxIntrinsicHeight > i3) {
                        i3 = iMaxIntrinsicHeight;
                    }
                } catch (IllegalStateException e) {
                    String message = e.getMessage();
                    if (message == null || !ta8.D(message, "SubcomposeLayout", false)) {
                        throw e;
                    }
                    h2.e(SubcomposeLayoutIntrinsicErrorMessage, e);
                    return 0;
                }
            }
        }
        return i3;
    }

    private static final int calculateMaxIntrinsicWidth(MutableObjectList<GridItem> mutableObjectList) {
        if (mutableObjectList == null) {
            return 0;
        }
        Object[] objArr = mutableObjectList.content;
        int i = mutableObjectList._size;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            GridItem gridItem = (GridItem) objArr[i3];
            if (gridItem.getColumnSpan() == 1) {
                try {
                    int iMaxIntrinsicWidth = gridItem.getMeasurable().maxIntrinsicWidth(Integer.MAX_VALUE);
                    if (iMaxIntrinsicWidth > i2) {
                        i2 = iMaxIntrinsicWidth;
                    }
                } catch (IllegalStateException e) {
                    String message = e.getMessage();
                    if (message == null || !ta8.D(message, "SubcomposeLayout", false)) {
                        throw e;
                    }
                    h2.e(SubcomposeLayoutIntrinsicErrorMessage, e);
                    return 0;
                }
            }
        }
        return i2;
    }

    private static final int calculateMinIntrinsicHeight(MutableObjectList<GridItem> mutableObjectList, int[] iArr, int i) {
        if (mutableObjectList == null) {
            return 0;
        }
        Object[] objArr = mutableObjectList.content;
        int i2 = mutableObjectList._size;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            GridItem gridItem = (GridItem) objArr[i4];
            if (gridItem.getRowSpan() == 1) {
                int column = gridItem.getColumn();
                try {
                    int iMinIntrinsicHeight = gridItem.getMeasurable().minIntrinsicHeight(column < iArr.length ? iArr[column] : i);
                    if (iMinIntrinsicHeight > i3) {
                        i3 = iMinIntrinsicHeight;
                    }
                } catch (IllegalStateException e) {
                    String message = e.getMessage();
                    if (message == null || !ta8.D(message, "SubcomposeLayout", false)) {
                        throw e;
                    }
                    h2.e(SubcomposeLayoutIntrinsicErrorMessage, e);
                    return 0;
                }
            }
        }
        return i3;
    }

    private static final int calculateMinIntrinsicWidth(MutableObjectList<GridItem> mutableObjectList) {
        if (mutableObjectList == null) {
            return 0;
        }
        Object[] objArr = mutableObjectList.content;
        int i = mutableObjectList._size;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            GridItem gridItem = (GridItem) objArr[i3];
            if (gridItem.getColumnSpan() == 1) {
                try {
                    int iMinIntrinsicWidth = gridItem.getMeasurable().minIntrinsicWidth(Integer.MAX_VALUE);
                    if (iMinIntrinsicWidth > i2) {
                        i2 = iMinIntrinsicWidth;
                    }
                } catch (IllegalStateException e) {
                    String message = e.getMessage();
                    if (message == null || !ta8.D(message, "SubcomposeLayout", false)) {
                        throw e;
                    }
                    h2.e(SubcomposeLayoutIntrinsicErrorMessage, e);
                    return 0;
                }
            }
        }
        return i2;
    }

    private static final long calculateMinMaxIntrinsicHeight(MutableObjectList<GridItem> mutableObjectList, int[] iArr, int i) {
        if (mutableObjectList == null) {
            return 0L;
        }
        Object[] objArr = mutableObjectList.content;
        int i2 = mutableObjectList._size;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            GridItem gridItem = (GridItem) objArr[i5];
            if (gridItem.getRowSpan() == 1) {
                int column = gridItem.getColumn();
                int i6 = column < iArr.length ? iArr[column] : i;
                try {
                    int iMinIntrinsicHeight = gridItem.getMeasurable().minIntrinsicHeight(i6);
                    try {
                        int iMaxIntrinsicHeight = gridItem.getMeasurable().maxIntrinsicHeight(i6);
                        if (iMinIntrinsicHeight > i4) {
                            i4 = iMinIntrinsicHeight;
                        }
                        if (iMaxIntrinsicHeight > i3) {
                            i3 = iMaxIntrinsicHeight;
                        }
                    } catch (IllegalStateException e) {
                        String message = e.getMessage();
                        if (message == null || !ta8.D(message, "SubcomposeLayout", false)) {
                            throw e;
                        }
                        h2.e(SubcomposeLayoutIntrinsicErrorMessage, e);
                        return 0L;
                    }
                } catch (IllegalStateException e2) {
                    String message2 = e2.getMessage();
                    if (message2 == null || !ta8.D(message2, "SubcomposeLayout", false)) {
                        throw e2;
                    }
                    h2.e(SubcomposeLayoutIntrinsicErrorMessage, e2);
                    return 0L;
                }
            }
        }
        return (((long) i3) << 32) | (((long) i4) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
    }

    private static final long calculateMinMaxIntrinsicWidth(MutableObjectList<GridItem> mutableObjectList) {
        if (mutableObjectList == null) {
            return 0L;
        }
        Object[] objArr = mutableObjectList.content;
        int i = mutableObjectList._size;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < i; i4++) {
            GridItem gridItem = (GridItem) objArr[i4];
            if (gridItem.getColumnSpan() == 1) {
                try {
                    int iMinIntrinsicWidth = gridItem.getMeasurable().minIntrinsicWidth(Integer.MAX_VALUE);
                    try {
                        int iMaxIntrinsicWidth = gridItem.getMeasurable().maxIntrinsicWidth(Integer.MAX_VALUE);
                        if (iMinIntrinsicWidth > i3) {
                            i3 = iMinIntrinsicWidth;
                        }
                        if (iMaxIntrinsicWidth > i2) {
                            i2 = iMaxIntrinsicWidth;
                        }
                    } catch (IllegalStateException e) {
                        String message = e.getMessage();
                        if (message == null || !ta8.D(message, "SubcomposeLayout", false)) {
                            throw e;
                        }
                        h2.e(SubcomposeLayoutIntrinsicErrorMessage, e);
                        return 0L;
                    }
                } catch (IllegalStateException e2) {
                    String message2 = e2.getMessage();
                    if (message2 == null || !ta8.D(message2, "SubcomposeLayout", false)) {
                        throw e2;
                    }
                    h2.e(SubcomposeLayoutIntrinsicErrorMessage, e2);
                    return 0L;
                }
            }
        }
        return (((long) i2) << 32) | (((long) i3) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
    }

    /* JADX INFO: renamed from: calculateRowHeights-ESwBiLc, reason: not valid java name */
    private static final int m1958calculateRowHeightsESwBiLc(Density density, LongList longList, int i, int i2, int[] iArr, MutableObjectList<GridItem>[] mutableObjectListArr, long j, int[] iArr2, MutableObjectList<GridItem> mutableObjectList, int i3) {
        int i4;
        int iMo1428roundToPx0680j_4;
        float fM1968getValueimpl$foundation_layout;
        int iCalculateMinIntrinsicHeight;
        int i5 = 0;
        if (i == 0) {
            return 0;
        }
        int i6 = (i - 1) * i3;
        if (i6 < 0) {
            i6 = 0;
        }
        if (i2 == Integer.MAX_VALUE) {
            i4 = Integer.MAX_VALUE;
        } else {
            int i7 = i2 - i6;
            if (i7 < 0) {
                i7 = 0;
            }
            i4 = i7;
        }
        MutableIntList mutableIntList = new MutableIntList(0, 1, null);
        int[] iArr3 = new int[i];
        float f = 0.0f;
        while (i5 < i) {
            long jM1962constructorimpl = GridTrackSize.m1962constructorimpl(i5 < longList._size ? longList.get(i5) : GridTrackSize.Companion.m1979getAutoeyNpfc4());
            switch (GridTrackSize.m1967getTypeimpl$foundation_layout(jM1962constructorimpl)) {
                case 1:
                    iMo1428roundToPx0680j_4 = density.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(GridTrackSize.m1968getValueimpl$foundation_layout(jM1962constructorimpl)));
                    break;
                case 2:
                    iMo1428roundToPx0680j_4 = i4 == Integer.MAX_VALUE ? calculateMaxIntrinsicHeight(mutableObjectListArr[i5], iArr2, Constraints.m8995getMaxWidthimpl(j)) : w65.b(GridTrackSize.m1968getValueimpl$foundation_layout(jM1962constructorimpl) * i4);
                    break;
                case 3:
                    fM1968getValueimpl$foundation_layout = GridTrackSize.m1968getValueimpl$foundation_layout(jM1962constructorimpl) + f;
                    iCalculateMinIntrinsicHeight = calculateMinIntrinsicHeight(mutableObjectListArr[i5], iArr2, Constraints.m8995getMaxWidthimpl(j));
                    f = fM1968getValueimpl$foundation_layout;
                    iMo1428roundToPx0680j_4 = iCalculateMinIntrinsicHeight;
                    break;
                case 4:
                    iMo1428roundToPx0680j_4 = calculateMinIntrinsicHeight(mutableObjectListArr[i5], iArr2, Constraints.m8995getMaxWidthimpl(j));
                    break;
                case 5:
                    iMo1428roundToPx0680j_4 = calculateMaxIntrinsicHeight(mutableObjectListArr[i5], iArr2, Constraints.m8995getMaxWidthimpl(j));
                    break;
                case 6:
                    if (i4 != Integer.MAX_VALUE) {
                        long jCalculateMinMaxIntrinsicHeight = calculateMinMaxIntrinsicHeight(mutableObjectListArr[i5], iArr2, Constraints.m8995getMaxWidthimpl(j));
                        int i8 = (int) (jCalculateMinMaxIntrinsicHeight >>> 32);
                        iCalculateMinIntrinsicHeight = (int) (jCalculateMinMaxIntrinsicHeight & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
                        mutableIntList.add(i5);
                        iArr3[i5] = i8;
                        iMo1428roundToPx0680j_4 = iCalculateMinIntrinsicHeight;
                    } else {
                        iMo1428roundToPx0680j_4 = calculateMaxIntrinsicHeight(mutableObjectListArr[i5], iArr2, Constraints.m8995getMaxWidthimpl(j));
                    }
                    break;
                case 7:
                    fM1968getValueimpl$foundation_layout = GridTrackSize.m1965getMaxValueimpl$foundation_layout(jM1962constructorimpl) + f;
                    iCalculateMinIntrinsicHeight = density.mo1428roundToPx0680j_4(Dp.m9042constructorimpl(GridTrackSize.m1966getMinValueimpl$foundation_layout(jM1962constructorimpl)));
                    f = fM1968getValueimpl$foundation_layout;
                    iMo1428roundToPx0680j_4 = iCalculateMinIntrinsicHeight;
                    break;
                default:
                    iMo1428roundToPx0680j_4 = calculateMaxIntrinsicHeight(mutableObjectListArr[i5], iArr2, Constraints.m8995getMaxWidthimpl(j));
                    break;
            }
            iArr[i5] = iMo1428roundToPx0680j_4;
            i5++;
        }
        m1959distributeSpanningSpaceWeOhcdQ(longList, iArr, mutableObjectList, true, j, iArr2, i3);
        if (i4 != Integer.MAX_VALUE && mutableIntList._size != 0) {
            expandAutoTracks(mutableIntList, iArr, iArr3, i4);
        }
        return distributeFlexSpaceAndGetTotal(iArr, i4, f, i, longList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int[] calculateTrackOffsets(int[] iArr, int i) {
        int[] iArr2 = new int[iArr.length];
        int length = iArr.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            iArr2[i3] = i2;
            i2 += iArr[i3] + i;
        }
        return iArr2;
    }

    public static final void columns(GridConfigurationScope gridConfigurationScope, GridTrackSpec... gridTrackSpecArr) {
        for (GridTrackSpec gridTrackSpec : gridTrackSpecArr) {
            if (gridTrackSpec instanceof GridTrackSize) {
                gridConfigurationScope.mo1923column118E5d0(((GridTrackSize) gridTrackSpec).m1971unboximpl());
            }
        }
    }

    private static final int distributeFlexSpaceAndGetTotal(int[] iArr, int i, float f, int i2, LongList longList) {
        int i3 = 0;
        int i4 = 0;
        for (int i5 : iArr) {
            i4 += i5;
        }
        int iMax = i == Integer.MAX_VALUE ? 0 : Math.max(0, i - i4);
        if (f > 0.0f && iMax > 0) {
            float f2 = 0.0f;
            int i6 = 0;
            int i7 = 0;
            int i8 = 0;
            while (i6 < i2) {
                long jM1962constructorimpl = GridTrackSize.m1962constructorimpl(i6 < longList._size ? longList.get(i6) : GridTrackSize.Companion.m1979getAutoeyNpfc4());
                int iM1967getTypeimpl$foundation_layout = GridTrackSize.m1967getTypeimpl$foundation_layout(jM1962constructorimpl);
                float fM1965getMaxValueimpl$foundation_layout = iM1967getTypeimpl$foundation_layout != 3 ? iM1967getTypeimpl$foundation_layout != 7 ? 0.0f : GridTrackSize.m1965getMaxValueimpl$foundation_layout(jM1962constructorimpl) : GridTrackSize.m1968getValueimpl$foundation_layout(jM1962constructorimpl);
                if (fM1965getMaxValueimpl$foundation_layout > 0.0f) {
                    f2 += fM1965getMaxValueimpl$foundation_layout;
                    int iMax2 = Math.max(0, w65.b((f2 / f) * iMax) - i8);
                    iArr[i6] = iArr[i6] + iMax2;
                    i7 = iMax2 + i8;
                    i8 = i7;
                }
                i6++;
            }
            i3 = i7;
        }
        return i4 + i3;
    }

    /* JADX INFO: renamed from: distributeSpanningSpace-WeOhcdQ, reason: not valid java name */
    private static final void m1959distributeSpanningSpaceWeOhcdQ(LongList longList, int[] iArr, MutableObjectList<GridItem> mutableObjectList, boolean z, long j, int[] iArr2, int i) {
        int iMaxIntrinsicWidth;
        int iM8995getMaxWidthimpl;
        Object[] objArr = mutableObjectList.content;
        int i2 = mutableObjectList._size;
        for (int i3 = 0; i3 < i2; i3++) {
            GridItem gridItem = (GridItem) objArr[i3];
            int row = z ? gridItem.getRow() : gridItem.getColumn();
            int rowSpan = z ? gridItem.getRowSpan() : gridItem.getColumnSpan();
            if (rowSpan > 1) {
                int i4 = rowSpan + row;
                int length = iArr.length;
                if (i4 > length) {
                    i4 = length;
                }
                int i5 = row;
                int i6 = 0;
                int i7 = 0;
                while (i5 < i4) {
                    i6 += iArr[i5];
                    long jM1962constructorimpl = GridTrackSize.m1962constructorimpl(i5 < longList._size ? longList.get(i5) : GridTrackSize.Companion.m1979getAutoeyNpfc4());
                    if (GridTrackSize.m1967getTypeimpl$foundation_layout(jM1962constructorimpl) != 1 && GridTrackSize.m1967getTypeimpl$foundation_layout(jM1962constructorimpl) != 2) {
                        i7++;
                    }
                    i5++;
                }
                if (z) {
                    if (iArr2 != null) {
                        int column = gridItem.getColumn();
                        int columnSpan = column + gridItem.getColumnSpan();
                        int length2 = iArr2.length;
                        if (columnSpan > length2) {
                            columnSpan = length2;
                        }
                        int i8 = 0;
                        while (column < columnSpan) {
                            i8 += iArr2[column];
                            column++;
                        }
                        iM8995getMaxWidthimpl = (Math.max(0, gridItem.getColumnSpan() - 1) * i) + i8;
                    } else {
                        iM8995getMaxWidthimpl = Constraints.m8995getMaxWidthimpl(j);
                    }
                    try {
                        iMaxIntrinsicWidth = gridItem.getMeasurable().maxIntrinsicHeight(iM8995getMaxWidthimpl);
                    } catch (IllegalStateException e) {
                        String message = e.getMessage();
                        if (message == null || !ta8.D(message, "SubcomposeLayout", false)) {
                            throw e;
                        }
                        h2.e(SubcomposeLayoutIntrinsicErrorMessage, e);
                        return;
                    }
                } else {
                    try {
                        iMaxIntrinsicWidth = gridItem.getMeasurable().maxIntrinsicWidth(Integer.MAX_VALUE);
                    } catch (IllegalStateException e2) {
                        String message2 = e2.getMessage();
                        if (message2 == null || !ta8.D(message2, "SubcomposeLayout", false)) {
                            throw e2;
                        }
                        h2.e(SubcomposeLayoutIntrinsicErrorMessage, e2);
                        return;
                    }
                }
                int i9 = iMaxIntrinsicWidth - i6;
                if (i9 > 0 && i7 > 0) {
                    int i10 = i9 / i7;
                    int i11 = i9 % i7;
                    while (row < i4) {
                        long jM1962constructorimpl2 = GridTrackSize.m1962constructorimpl(row < longList._size ? longList.get(row) : GridTrackSize.Companion.m1979getAutoeyNpfc4());
                        if (GridTrackSize.m1967getTypeimpl$foundation_layout(jM1962constructorimpl2) != 1 && GridTrackSize.m1967getTypeimpl$foundation_layout(jM1962constructorimpl2) != 2) {
                            iArr[row] = iArr[row] + (i11 > 0 ? 1 : 0) + i10;
                            if (i11 > 0) {
                                i11--;
                            }
                        }
                        row++;
                    }
                }
            }
        }
    }

    private static final void expandAutoTracks(MutableIntList mutableIntList, int[] iArr, int[] iArr2, int i) {
        if (mutableIntList._size == 0) {
            return;
        }
        int i2 = 0;
        for (int i3 : iArr) {
            i2 += i3;
        }
        int i4 = i - i2;
        if (i4 <= 0) {
            return;
        }
        int i5 = mutableIntList._size;
        int[] iArr3 = new int[i5];
        int[] iArr4 = mutableIntList.content;
        int i6 = 0;
        for (int i7 = 0; i7 < i5; i7++) {
            int i8 = iArr4[i7];
            int iMax = Math.max(0, iArr2[i8] - iArr[i8]);
            iArr3[i7] = iMax;
            i6 += iMax;
        }
        if (i6 == 0) {
            return;
        }
        if (i4 >= i6) {
            y74 y74VarN = kx6.n(0, mutableIntList._size);
            int i9 = y74VarN.b;
            int i10 = y74VarN.c;
            if (i9 > i10) {
                return;
            }
            while (true) {
                int i11 = mutableIntList.get(i9);
                iArr[i11] = iArr[i11] + iArr3[i9];
                if (i9 == i10) {
                    return;
                } else {
                    i9++;
                }
            }
        } else {
            y74 y74VarN2 = kx6.n(0, mutableIntList._size);
            int i12 = y74VarN2.b;
            int i13 = y74VarN2.c;
            if (i12 > i13) {
                return;
            }
            while (true) {
                int i14 = mutableIntList.get(i12);
                iArr[i14] = iArr[i14] + w65.b((iArr3[i12] / i6) * i4);
                if (i12 == i13) {
                    return;
                } else {
                    i12++;
                }
            }
        }
    }

    public static /* synthetic */ void getSubcomposeLayoutIntrinsicErrorMessage$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void measureItems(MutableObjectList<GridItem> mutableObjectList, GridTrackSizes gridTrackSizes, LayoutDirection layoutDirection) {
        int length = gridTrackSizes.getRowHeights().length;
        int length2 = gridTrackSizes.getColumnWidths().length;
        Object[] objArr = mutableObjectList.content;
        int i = mutableObjectList._size;
        for (int i2 = 0; i2 < i; i2++) {
            GridItem gridItem = (GridItem) objArr[i2];
            int row = gridItem.getRow();
            int column = gridItem.getColumn();
            if (row < length && column < length2) {
                int columnSpan = gridItem.getColumnSpan() + column;
                if (columnSpan > length2) {
                    columnSpan = length2;
                }
                int columnGapPx = 0;
                for (int i3 = column; i3 < columnSpan; i3++) {
                    columnGapPx += gridTrackSizes.getColumnWidths()[i3];
                }
                int i4 = columnSpan - column;
                if (i4 > 1) {
                    columnGapPx += (i4 - 1) * gridTrackSizes.getColumnGapPx();
                }
                int i5 = columnGapPx;
                int rowSpan = gridItem.getRowSpan() + row;
                if (rowSpan > length) {
                    rowSpan = length;
                }
                int rowGapPx = 0;
                for (int i6 = row; i6 < rowSpan; i6++) {
                    rowGapPx += gridTrackSizes.getRowHeights()[i6];
                }
                int i7 = rowSpan - row;
                if (i7 > 1) {
                    rowGapPx += (i7 - 1) * gridTrackSizes.getRowGapPx();
                }
                int i8 = rowGapPx;
                Placeable placeableMo7702measureBRTryo0 = gridItem.getMeasurable().mo7702measureBRTryo0(ConstraintsKt.Constraints$default(0, i5, 0, i8, 5, null));
                long jMo5655alignKFBX0sM = gridItem.getAlignment().mo5655alignKFBX0sM(IntSize.m9208constructorimpl((((long) placeableMo7702measureBRTryo0.getHeight()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) placeableMo7702measureBRTryo0.getWidth()) << 32)), IntSize.m9208constructorimpl((((long) i5) << 32) | (((long) i8) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), layoutDirection);
                gridItem.setPlaceable(placeableMo7702measureBRTryo0);
                gridItem.setOffsetX(IntOffset.m9170getXimpl(jMo5655alignKFBX0sM));
                gridItem.setOffsetY(IntOffset.m9171getYimpl(jMo5655alignKFBX0sM));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:119:0x010f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:120:0x0127 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:121:0x0122 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:123:0x011c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:124:0x012d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:126:0x00df A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:128:0x00df A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:72:0x0112  */
    /* JADX WARN: Code duplicated, block: B:87:0x0150  */
    /* JADX WARN: Code duplicated, block: B:91:0x0182  */
    /* JADX WARN: Code duplicated, block: B:95:0x0194  */
    /* JADX WARN: Code duplicated, block: B:96:0x0198  */
    /* JADX INFO: renamed from: resolveGridItemIndices-pclAfdo, reason: not valid java name */
    public static final ResolvedGridItemIndicesResult m1960resolveGridItemIndicespclAfdo(List<? extends Measurable> list, LongList longList, LongList longList2, int i) {
        int i2;
        int i3;
        int i4;
        int iMax;
        int iMax2;
        Alignment topStart;
        int i5;
        int i6;
        int i7;
        List<? extends Measurable> list2 = list;
        MutableObjectList mutableObjectList = new MutableObjectList(list2.size());
        int row = 0;
        int i8 = 1;
        GridItemNode gridItemNode = null;
        MutableIntSet mutableIntSet = new MutableIntSet(0, 1, null);
        int i9 = longList._size;
        int i10 = longList2._size;
        int size = list2.size();
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int iMax3 = i9;
        int iMax4 = i10;
        while (i11 < size) {
            Measurable measurable = list2.get(i11);
            Object parentData = measurable.getParentData();
            int i14 = i8;
            GridItemNode gridItemNode2 = parentData instanceof GridItemNode ? (GridItemNode) parentData : gridItemNode;
            int rowSpan = gridItemNode2 != null ? gridItemNode2.getRowSpan() : i14;
            int columnSpan = gridItemNode2 != null ? gridItemNode2.getColumnSpan() : i14;
            if (gridItemNode2 != null) {
                row = gridItemNode2.getRow();
            }
            int iResolveToZeroBasedIndex = resolveToZeroBasedIndex(row, i10);
            int iResolveToZeroBasedIndex2 = resolveToZeroBasedIndex(gridItemNode2 != null ? gridItemNode2.getColumn() : row, i9);
            int i15 = size;
            if (iResolveToZeroBasedIndex == -1 || iResolveToZeroBasedIndex2 == -1) {
                i2 = i11;
                int i16 = 1000;
                if (iResolveToZeroBasedIndex != -1) {
                    int i17 = (GridFlow.m1946equalsimpl0(i, GridFlow.m1944constructorimpl(row)) && iResolveToZeroBasedIndex == i12) ? i13 : row;
                    while (true) {
                        if (i17 >= 1000) {
                            i3 = iResolveToZeroBasedIndex;
                            i12 = i12;
                            i4 = -1;
                            break;
                        }
                        if (!resolveGridItemIndices_pclAfdo$isAreaOccupied(mutableIntSet, iResolveToZeroBasedIndex, i17, rowSpan, columnSpan)) {
                            i12 = i12;
                            row = row;
                            i4 = i17;
                            i3 = iResolveToZeroBasedIndex;
                            break;
                        }
                        i17++;
                    }
                } else if (iResolveToZeroBasedIndex2 != -1) {
                    i3 = (GridFlow.m1946equalsimpl0(i, GridFlow.m1944constructorimpl(i14)) && iResolveToZeroBasedIndex2 == i13) ? i12 : row;
                    while (true) {
                        if (i3 >= 1000) {
                            i3 = -1;
                            break;
                        }
                        if (resolveGridItemIndices_pclAfdo$isAreaOccupied(mutableIntSet, i3, iResolveToZeroBasedIndex2, rowSpan, columnSpan)) {
                            i3++;
                        }
                    }
                    i4 = iResolveToZeroBasedIndex2;
                } else {
                    i3 = i12;
                    i12 = i3;
                    i4 = i13;
                    while (true) {
                        if (i3 >= i16 || i4 >= i16) {
                            i3 = -1;
                            i4 = -1;
                            break;
                        }
                        if (GridFlow.m1946equalsimpl0(i, GridFlow.m1944constructorimpl(row))) {
                            if (i9 > 0 && i4 + columnSpan > i9 && i4 > 0) {
                                i3++;
                                i4 = row;
                                i16 = 1000;
                            } else {
                                if (!resolveGridItemIndices_pclAfdo$isAreaOccupied(mutableIntSet, i3, i4, rowSpan, columnSpan)) {
                                    row = row;
                                    break;
                                }
                                if (GridFlow.m1946equalsimpl0(i, GridFlow.m1944constructorimpl(row))) {
                                    i4++;
                                    i16 = 1000;
                                    if (i4 > 1000) {
                                        i3++;
                                        i4 = row;
                                    }
                                } else {
                                    i16 = 1000;
                                    i3++;
                                    if (i3 > 1000) {
                                        i4++;
                                        i3 = row;
                                    }
                                }
                            }
                        } else if (i10 > 0 && i3 + rowSpan > i10 && i3 > 0) {
                            i4++;
                            i3 = row;
                            i16 = 1000;
                        } else {
                            if (!resolveGridItemIndices_pclAfdo$isAreaOccupied(mutableIntSet, i3, i4, rowSpan, columnSpan)) {
                                row = row;
                                break;
                            }
                            if (GridFlow.m1946equalsimpl0(i, GridFlow.m1944constructorimpl(row))) {
                                i4++;
                                i16 = 1000;
                                if (i4 > 1000) {
                                    i3++;
                                    i4 = row;
                                }
                            } else {
                                i16 = 1000;
                                i3++;
                                if (i3 > 1000) {
                                    i4++;
                                    i3 = row;
                                }
                            }
                        }
                    }
                }
                iMax = Math.max(row, i3);
                iMax2 = Math.max(row, i4);
                resolveGridItemIndices_pclAfdo$markAreaOccupied(mutableIntSet, iMax, iMax2, rowSpan, columnSpan);
                if (gridItemNode2 != null || (topStart = gridItemNode2.getAlignment()) == null) {
                    topStart = Alignment.Companion.getTopStart();
                }
                int i18 = rowSpan;
                int i19 = columnSpan;
                mutableObjectList.add(new GridItem(measurable, iMax, iMax2, i18, i19, topStart, null, 0, 0, 448, null));
                i5 = iMax + i18;
                iMax4 = Math.max(iMax4, i5);
                i6 = iMax2 + i19;
                iMax3 = Math.max(iMax3, i6);
                if (iResolveToZeroBasedIndex != -1 || iResolveToZeroBasedIndex2 == -1) {
                    i7 = 0;
                    if (GridFlow.m1946equalsimpl0(i, GridFlow.m1944constructorimpl(0))) {
                        i13 = i6;
                        i12 = iMax;
                    } else {
                        i12 = i5;
                        i13 = iMax2;
                    }
                } else {
                    i12 = i12;
                    i7 = 0;
                }
                i11 = i2 + 1;
                list2 = list;
                size = i15;
                i8 = i14;
                row = i7;
                gridItemNode = null;
            } else {
                i3 = iResolveToZeroBasedIndex;
                i2 = i11;
            }
            i4 = iResolveToZeroBasedIndex2;
            iMax = Math.max(row, i3);
            iMax2 = Math.max(row, i4);
            resolveGridItemIndices_pclAfdo$markAreaOccupied(mutableIntSet, iMax, iMax2, rowSpan, columnSpan);
            if (gridItemNode2 != null) {
                topStart = Alignment.Companion.getTopStart();
            } else {
                topStart = Alignment.Companion.getTopStart();
            }
            int i110 = rowSpan;
            int i111 = columnSpan;
            mutableObjectList.add(new GridItem(measurable, iMax, iMax2, i110, i111, topStart, null, 0, 0, 448, null));
            i5 = iMax + i110;
            iMax4 = Math.max(iMax4, i5);
            i6 = iMax2 + i111;
            iMax3 = Math.max(iMax3, i6);
            if (iResolveToZeroBasedIndex != -1) {
                i7 = 0;
                if (GridFlow.m1946equalsimpl0(i, GridFlow.m1944constructorimpl(0))) {
                    i13 = i6;
                    i12 = iMax;
                } else {
                    i12 = i5;
                    i13 = iMax2;
                }
            } else {
                i7 = 0;
                if (GridFlow.m1946equalsimpl0(i, GridFlow.m1944constructorimpl(0))) {
                    i13 = i6;
                    i12 = iMax;
                } else {
                    i12 = i5;
                    i13 = iMax2;
                }
            }
            i11 = i2 + 1;
            list2 = list;
            size = i15;
            i8 = i14;
            row = i7;
            gridItemNode = null;
        }
        return new ResolvedGridItemIndicesResult(mutableObjectList, IntSize.m9208constructorimpl((((long) iMax3) << 32) | (((long) iMax4) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), null);
    }

    private static final boolean resolveGridItemIndices_pclAfdo$isAreaOccupied(MutableIntSet mutableIntSet, int i, int i2, int i3, int i4) {
        int i5;
        int i6 = i3 + i;
        if (i6 > 1000 || (i5 = i4 + i2) > 1000) {
            return true;
        }
        while (i < i6) {
            for (int i7 = i2; i7 < i5; i7++) {
                if (mutableIntSet.contains(resolveGridItemIndices_pclAfdo$packCoordinate(i, i7))) {
                    return true;
                }
            }
            i++;
        }
        return false;
    }

    private static final void resolveGridItemIndices_pclAfdo$markAreaOccupied(MutableIntSet mutableIntSet, int i, int i2, int i3, int i4) {
        int i5 = i3 + i;
        while (i < i5) {
            int i6 = i2 + i4;
            for (int i7 = i2; i7 < i6; i7++) {
                mutableIntSet.add(resolveGridItemIndices_pclAfdo$packCoordinate(i, i7));
            }
            i++;
        }
    }

    private static final int resolveGridItemIndices_pclAfdo$packCoordinate(int i, int i2) {
        return (i << 16) | (i2 & 65535);
    }

    private static final int resolveToZeroBasedIndex(int i, int i2) {
        if (i == 0) {
            return -1;
        }
        if (i > 0) {
            return i - 1;
        }
        int i3 = i2 + i;
        if (i3 >= 0) {
            return i3;
        }
        return -1;
    }

    public static final void rows(GridConfigurationScope gridConfigurationScope, GridTrackSpec... gridTrackSpecArr) {
        for (GridTrackSpec gridTrackSpec : gridTrackSpecArr) {
            if (gridTrackSpec instanceof GridTrackSize) {
                gridConfigurationScope.mo1935row118E5d0(((GridTrackSize) gridTrackSpec).m1971unboximpl());
            }
        }
    }

    private static final <T> T wrapIntrinsicException(ll3<? extends T> ll3Var) {
        try {
            return ll3Var.invoke();
        } catch (IllegalStateException e) {
            String message = e.getMessage();
            if (message == null || !ta8.D(message, "SubcomposeLayout", false)) {
                throw e;
            }
            h2.e(SubcomposeLayoutIntrinsicErrorMessage, e);
            return null;
        }
    }
}
