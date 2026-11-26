package androidx.compose.foundation.text.selection;

import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.media3.muxer.MuxerUtil;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public final class MultiWidgetSelectionDelegateKt {
    /* JADX INFO: renamed from: appendSelectableInfo-Parwq6A, reason: not valid java name */
    public static final void m2967appendSelectableInfoParwq6A(SelectionLayoutBuilder selectionLayoutBuilder, TextLayoutResult textLayoutResult, long j, long j2, long j3) {
        Direction direction;
        Direction direction2;
        long j4;
        Direction directionAppendSelectableInfo_Parwq6A$otherDirection;
        Direction direction3;
        Direction directionAppendSelectableInfo_Parwq6A$otherDirection2;
        Direction direction4;
        Direction direction5;
        int iM2968getOffsetForPosition3MmeM6k;
        int previousAdjustedOffset;
        Selection.AnchorInfo start;
        Selection.AnchorInfo end;
        Rect rect = new Rect(0.0f, 0.0f, (int) (textLayoutResult.m8462getSizeYbymL2g() >> 32), (int) (textLayoutResult.m8462getSizeYbymL2g() & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        Direction directionM2969getXDirection3MmeM6k = m2969getXDirection3MmeM6k(j, rect);
        Direction directionM2970getYDirection3MmeM6k = m2970getYDirection3MmeM6k(j, rect);
        if (selectionLayoutBuilder.isStartHandle()) {
            Selection previousSelection = selectionLayoutBuilder.getPreviousSelection();
            direction = directionM2970getYDirection3MmeM6k;
            direction2 = directionM2969getXDirection3MmeM6k;
            j4 = j3;
            direction4 = direction2;
            directionAppendSelectableInfo_Parwq6A$otherDirection2 = appendSelectableInfo_Parwq6A$otherDirection(direction2, direction, selectionLayoutBuilder, j3, previousSelection != null ? previousSelection.getEnd() : null);
            direction3 = directionAppendSelectableInfo_Parwq6A$otherDirection2;
            direction5 = direction3;
            directionAppendSelectableInfo_Parwq6A$otherDirection = direction;
        } else {
            direction = directionM2970getYDirection3MmeM6k;
            direction2 = directionM2969getXDirection3MmeM6k;
            Selection previousSelection2 = selectionLayoutBuilder.getPreviousSelection();
            j4 = j3;
            directionAppendSelectableInfo_Parwq6A$otherDirection = appendSelectableInfo_Parwq6A$otherDirection(direction2, direction, selectionLayoutBuilder, j4, previousSelection2 != null ? previousSelection2.getStart() : null);
            direction3 = direction2;
            directionAppendSelectableInfo_Parwq6A$otherDirection2 = direction;
            direction4 = directionAppendSelectableInfo_Parwq6A$otherDirection;
            direction5 = direction4;
        }
        if (isSelected(SelectionLayoutKt.resolve2dDirection(direction2, direction), direction5)) {
            int length = textLayoutResult.getLayoutInput().getText().length();
            if (selectionLayoutBuilder.isStartHandle()) {
                previousAdjustedOffset = m2968getOffsetForPosition3MmeM6k(j, textLayoutResult);
                Selection previousSelection3 = selectionLayoutBuilder.getPreviousSelection();
                iM2968getOffsetForPosition3MmeM6k = (previousSelection3 == null || (end = previousSelection3.getEnd()) == null) ? previousAdjustedOffset : getPreviousAdjustedOffset(end, selectionLayoutBuilder.getSelectableIdOrderingComparator(), j4, length);
            } else {
                iM2968getOffsetForPosition3MmeM6k = m2968getOffsetForPosition3MmeM6k(j, textLayoutResult);
                Selection previousSelection4 = selectionLayoutBuilder.getPreviousSelection();
                previousAdjustedOffset = (previousSelection4 == null || (start = previousSelection4.getStart()) == null) ? iM2968getOffsetForPosition3MmeM6k : getPreviousAdjustedOffset(start, selectionLayoutBuilder.getSelectableIdOrderingComparator(), j4, length);
            }
            selectionLayoutBuilder.appendInfo(j4, previousAdjustedOffset, direction4, directionAppendSelectableInfo_Parwq6A$otherDirection, iM2968getOffsetForPosition3MmeM6k, direction3, directionAppendSelectableInfo_Parwq6A$otherDirection2, (9223372034707292159L & j2) == InlineClassHelperKt.UnspecifiedPackedFloats ? -1 : m2968getOffsetForPosition3MmeM6k(j2, textLayoutResult), textLayoutResult);
        }
    }

    private static final Direction appendSelectableInfo_Parwq6A$otherDirection(Direction direction, Direction direction2, SelectionLayoutBuilder selectionLayoutBuilder, long j, Selection.AnchorInfo anchorInfo) {
        Direction directionById;
        return (anchorInfo == null || (directionById = getDirectionById(selectionLayoutBuilder, anchorInfo.getSelectableId(), j)) == null) ? SelectionLayoutKt.resolve2dDirection(direction, direction2) : directionById;
    }

    private static final Direction getDirectionById(SelectionLayoutBuilder selectionLayoutBuilder, long j, long j2) {
        int iCompare = selectionLayoutBuilder.getSelectableIdOrderingComparator().compare(Long.valueOf(j), Long.valueOf(j2));
        if (iCompare < 0) {
            return Direction.BEFORE;
        }
        return iCompare > 0 ? Direction.AFTER : Direction.ON;
    }

    /* JADX INFO: renamed from: getOffsetForPosition-3MmeM6k, reason: not valid java name */
    private static final int m2968getOffsetForPosition3MmeM6k(long j, TextLayoutResult textLayoutResult) {
        int i = (int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & j);
        if (Float.intBitsToFloat(i) <= 0.0f) {
            return 0;
        }
        return Float.intBitsToFloat(i) >= textLayoutResult.getMultiParagraph().getHeight() ? textLayoutResult.getLayoutInput().getText().length() : textLayoutResult.m8461getOffsetForPositionk4lQ0M(j);
    }

    private static final int getPreviousAdjustedOffset(Selection.AnchorInfo anchorInfo, Comparator<Long> comparator, long j, int i) {
        int iCompare = comparator.compare(Long.valueOf(anchorInfo.getSelectableId()), Long.valueOf(j));
        if (iCompare < 0) {
            return 0;
        }
        return iCompare > 0 ? i : anchorInfo.getOffset();
    }

    /* JADX INFO: renamed from: getXDirection-3MmeM6k, reason: not valid java name */
    private static final Direction m2969getXDirection3MmeM6k(long j, Rect rect) {
        int i = (int) (j >> 32);
        if (Float.intBitsToFloat(i) < rect.getLeft()) {
            return Direction.BEFORE;
        }
        return Float.intBitsToFloat(i) > rect.getRight() ? Direction.AFTER : Direction.ON;
    }

    /* JADX INFO: renamed from: getYDirection-3MmeM6k, reason: not valid java name */
    private static final Direction m2970getYDirection3MmeM6k(long j, Rect rect) {
        int i = (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        if (Float.intBitsToFloat(i) < rect.getTop()) {
            return Direction.BEFORE;
        }
        return Float.intBitsToFloat(i) > rect.getBottom() ? Direction.AFTER : Direction.ON;
    }

    private static final boolean isSelected(Direction direction, Direction direction2) {
        return direction == Direction.ON || direction != direction2;
    }
}
