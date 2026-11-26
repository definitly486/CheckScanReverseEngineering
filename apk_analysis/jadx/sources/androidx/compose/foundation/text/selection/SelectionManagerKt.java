package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.contextmenu.ContextMenuScope;
import androidx.compose.foundation.contextmenu.ContextMenuState;
import androidx.compose.foundation.text.CommonContextMenuAreaKt;
import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.TextContextMenuItems;
import androidx.compose.foundation.text.selection.SelectionManagerKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.muxer.MuxerUtil;
import defpackage.ah;
import defpackage.b36;
import defpackage.j59;
import defpackage.kx6;
import defpackage.ll3;
import defpackage.me0;
import defpackage.nl3;
import defpackage.qn1;
import defpackage.u12;
import defpackage.u96;
import defpackage.vi5;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class SelectionManagerKt {
    private static final Rect invertedInfiniteRect = new Rect(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Handle.values().length];
            try {
                iArr[Handle.SelectionStart.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Handle.SelectionEnd.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Handle.Cursor.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: calculateSelectionMagnifierCenterAndroid-O0kMr_c, reason: not valid java name */
    public static final long m3014calculateSelectionMagnifierCenterAndroidO0kMr_c(SelectionManager selectionManager, long j) {
        Selection selection = selectionManager.getSelection();
        if (selection == null) {
            return Offset.Companion.m6002getUnspecifiedF1C5BW0();
        }
        Handle draggingHandle = selectionManager.getDraggingHandle();
        int i = draggingHandle == null ? -1 : WhenMappings.$EnumSwitchMapping$0[draggingHandle.ordinal()];
        if (i == -1) {
            return Offset.Companion.m6002getUnspecifiedF1C5BW0();
        }
        if (i == 1) {
            return m3016getMagnifierCenterJVtK1S4(selectionManager, j, selection.getStart());
        }
        if (i == 2) {
            return m3016getMagnifierCenterJVtK1S4(selectionManager, j, selection.getEnd());
        }
        if (i != 3) {
            me0.e();
            return 0L;
        }
        ah.f("SelectionContainer does not support cursor");
        return 0L;
    }

    /* JADX INFO: renamed from: containsInclusive-Uv8p0NA, reason: not valid java name */
    public static final boolean m3015containsInclusiveUv8p0NA(Rect rect, long j) {
        float left = rect.getLeft();
        float right = rect.getRight();
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        if (left > fIntBitsToFloat || fIntBitsToFloat > right) {
            return false;
        }
        float top = rect.getTop();
        float bottom = rect.getBottom();
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        return top <= fIntBitsToFloat2 && fIntBitsToFloat2 <= bottom;
    }

    public static final nl3<ContextMenuScope, j59> contextMenuBuilder(final SelectionManager selectionManager, final ContextMenuState contextMenuState) {
        return new nl3() { // from class: on7
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return SelectionManagerKt.contextMenuBuilder$lambda$0(selectionManager, contextMenuState, (ContextMenuScope) obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 contextMenuBuilder$lambda$0(SelectionManager selectionManager, ContextMenuState contextMenuState, ContextMenuScope contextMenuScope) {
        contextMenuBuilder$lambda$0$selectionItem(contextMenuScope, contextMenuState, TextContextMenuItems.Copy, selectionManager.isNonEmptySelection$foundation(), new vi5(selectionManager, 2));
        j59 j59Var = j59.a;
        contextMenuBuilder$lambda$0$selectionItem(contextMenuScope, contextMenuState, TextContextMenuItems.SelectAll, !selectionManager.isEntireContainerSelected$foundation(), new u12(selectionManager, 3));
        u96.i(j59Var, j59Var);
        return j59Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 contextMenuBuilder$lambda$0$0(SelectionManager selectionManager) {
        selectionManager.copy$foundation();
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 contextMenuBuilder$lambda$0$1(SelectionManager selectionManager) {
        selectionManager.selectAll$foundation();
        return j59.a;
    }

    private static final void contextMenuBuilder$lambda$0$selectionItem(ContextMenuScope contextMenuScope, ContextMenuState contextMenuState, TextContextMenuItems textContextMenuItems, boolean z, ll3<j59> ll3Var) {
        if (z) {
            ContextMenuScope.item$default(contextMenuScope, new CommonContextMenuAreaKt.AnonymousClass1(textContextMenuItems), null, false, null, new CommonContextMenuAreaKt.AnonymousClass2(ll3Var, contextMenuState), 14, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> List<T> firstAndLast(List<? extends T> list) {
        int size = list.size();
        return (size == 0 || size == 1) ? list : u96.i(qn1.T(list), qn1.b0(list));
    }

    /* JADX INFO: renamed from: getMagnifierCenter-JVtK1S4, reason: not valid java name */
    private static final long m3016getMagnifierCenterJVtK1S4(SelectionManager selectionManager, long j, Selection.AnchorInfo anchorInfo) {
        LayoutCoordinates containerLayoutCoordinates;
        LayoutCoordinates layoutCoordinates;
        int offset;
        float fD;
        Selectable anchorSelectable$foundation = selectionManager.getAnchorSelectable$foundation(anchorInfo);
        if (anchorSelectable$foundation != null && (containerLayoutCoordinates = selectionManager.getContainerLayoutCoordinates()) != null && (layoutCoordinates = anchorSelectable$foundation.getLayoutCoordinates()) != null && (offset = anchorInfo.getOffset()) <= anchorSelectable$foundation.getLastVisibleOffset()) {
            Offset offsetM3004getCurrentDragPosition_m7T9E = selectionManager.m3004getCurrentDragPosition_m7T9E();
            offsetM3004getCurrentDragPosition_m7T9E.getClass();
            float fIntBitsToFloat = Float.intBitsToFloat((int) (layoutCoordinates.mo7711localPositionOfR5De75A(containerLayoutCoordinates, offsetM3004getCurrentDragPosition_m7T9E.m5997unboximpl()) >> 32));
            long jMo2966getRangeOfLineContainingjx7JFs = anchorSelectable$foundation.mo2966getRangeOfLineContainingjx7JFs(offset);
            if (TextRange.m8485getCollapsedimpl(jMo2966getRangeOfLineContainingjx7JFs)) {
                fD = anchorSelectable$foundation.getLineLeft(offset);
            } else {
                float lineLeft = anchorSelectable$foundation.getLineLeft(TextRange.m8491getStartimpl(jMo2966getRangeOfLineContainingjx7JFs));
                float lineRight = anchorSelectable$foundation.getLineRight(TextRange.m8486getEndimpl(jMo2966getRangeOfLineContainingjx7JFs) - 1);
                fD = kx6.d(fIntBitsToFloat, Math.min(lineLeft, lineRight), Math.max(lineLeft, lineRight));
            }
            if (fD == -1.0f) {
                return Offset.Companion.m6002getUnspecifiedF1C5BW0();
            }
            if (!IntSize.m9211equalsimpl0(j, IntSize.Companion.m9218getZeroYbymL2g()) && Math.abs(fIntBitsToFloat - fD) > ((int) (j >> 32)) / 2) {
                return Offset.Companion.m6002getUnspecifiedF1C5BW0();
            }
            float centerYForOffset = anchorSelectable$foundation.getCenterYForOffset(offset);
            return centerYForOffset == -1.0f ? Offset.Companion.m6002getUnspecifiedF1C5BW0() : containerLayoutCoordinates.mo7711localPositionOfR5De75A(layoutCoordinates, Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fD)) << 32) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) Float.floatToRawIntBits(centerYForOffset)))));
        }
        return Offset.Companion.m6002getUnspecifiedF1C5BW0();
    }

    public static final Rect getSelectedRegionRect(List<? extends b36<? extends Selectable, Selection>> list, LayoutCoordinates layoutCoordinates) {
        LayoutCoordinates layoutCoordinates2;
        int[] iArr;
        List<? extends b36<? extends Selectable, Selection>> list2 = list;
        if (list2.isEmpty()) {
            return invertedInfiniteRect;
        }
        Rect rect = invertedInfiniteRect;
        float fComponent1 = rect.component1();
        float fComponent2 = rect.component2();
        float fComponent3 = rect.component3();
        float fComponent4 = rect.component4();
        int size = list2.size();
        char c = 0;
        int i = 0;
        while (i < size) {
            b36<? extends Selectable, Selection> b36Var = list2.get(i);
            Selectable selectable = (Selectable) b36Var.b;
            Selection selection = b36Var.c;
            int offset = selection.getStart().getOffset();
            int offset2 = selection.getEnd().getOffset();
            if (offset != offset2 && (layoutCoordinates2 = selectable.getLayoutCoordinates()) != null) {
                int iMin = Math.min(offset, offset2);
                int iMax = Math.max(offset, offset2) - 1;
                if (iMin == iMax) {
                    iArr = new int[1];
                    iArr[c] = iMin;
                } else {
                    int[] iArr2 = new int[2];
                    iArr2[c] = iMin;
                    iArr2[1] = iMax;
                    iArr = iArr2;
                }
                Rect rect2 = invertedInfiniteRect;
                float fComponent5 = rect2.component1();
                float fComponent6 = rect2.component2();
                float fComponent7 = rect2.component3();
                float fComponent8 = rect2.component4();
                int length = iArr.length;
                int i2 = 0;
                while (i2 < length) {
                    int i3 = i2;
                    Rect boundingBox = selectable.getBoundingBox(iArr[i3]);
                    fComponent5 = Math.min(fComponent5, boundingBox.getLeft());
                    fComponent6 = Math.min(fComponent6, boundingBox.getTop());
                    fComponent7 = Math.max(fComponent7, boundingBox.getRight());
                    fComponent8 = Math.max(fComponent8, boundingBox.getBottom());
                    i2 = i3 + 1;
                }
                long jM5979constructorimpl = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fComponent5)) << 32) | (((long) Float.floatToRawIntBits(fComponent6)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                long jM5979constructorimpl2 = Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fComponent8)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Float.floatToRawIntBits(fComponent7)) << 32));
                long jMo7711localPositionOfR5De75A = layoutCoordinates.mo7711localPositionOfR5De75A(layoutCoordinates2, jM5979constructorimpl);
                long jMo7711localPositionOfR5De75A2 = layoutCoordinates.mo7711localPositionOfR5De75A(layoutCoordinates2, jM5979constructorimpl2);
                fComponent1 = Math.min(fComponent1, Float.intBitsToFloat((int) (jMo7711localPositionOfR5De75A >> 32)));
                fComponent2 = Math.min(fComponent2, Float.intBitsToFloat((int) (jMo7711localPositionOfR5De75A & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
                fComponent3 = Math.max(fComponent3, Float.intBitsToFloat((int) (jMo7711localPositionOfR5De75A2 >> 32)));
                fComponent4 = Math.max(fComponent4, Float.intBitsToFloat((int) (jMo7711localPositionOfR5De75A2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
            }
            i++;
            list2 = list;
            c = 0;
        }
        return new Rect(fComponent1, fComponent2, fComponent3, fComponent4);
    }

    public static final Selection merge(Selection selection, Selection selection2) {
        Selection selectionMerge;
        return (selection == null || (selectionMerge = selection.merge(selection2)) == null) ? selection2 : selectionMerge;
    }

    public static final Rect visibleBounds(LayoutCoordinates layoutCoordinates) {
        Rect rectBoundsInWindow$default = LayoutCoordinatesKt.boundsInWindow$default(layoutCoordinates, false, 1, null);
        return RectKt.m6025Rect0a9Yr6o(layoutCoordinates.mo7719windowToLocalMKHz9U(rectBoundsInWindow$default.m6022getTopLeftF1C5BW0()), layoutCoordinates.mo7719windowToLocalMKHz9U(rectBoundsInWindow$default.m6016getBottomRightF1C5BW0()));
    }
}
