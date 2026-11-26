package androidx.compose.foundation.text.selection;

import androidx.collection.LongIntMapKt;
import androidx.collection.MutableLongIntMap;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.TextLayoutResult;
import defpackage.jh2;
import defpackage.me0;
import defpackage.qn1;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class SelectionLayoutBuilder {
    public static final int $stable = 8;
    private final LayoutCoordinates containerCoordinates;
    private final long currentPosition;
    private int currentSlot;
    private int endSlot;
    private final List<SelectableInfo> infoList;
    private final boolean isStartHandle;
    private final long previousHandlePosition;
    private final Selection previousSelection;
    private final Comparator<Long> selectableIdOrderingComparator;
    private final MutableLongIntMap selectableIdToInfoListIndex;
    private int startSlot;

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Direction.values().length];
            try {
                iArr[Direction.BEFORE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Direction.ON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Direction.AFTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private SelectionLayoutBuilder(long j, long j2, LayoutCoordinates layoutCoordinates, boolean z, Selection selection, Comparator<Long> comparator) {
        this.currentPosition = j;
        this.previousHandlePosition = j2;
        this.containerCoordinates = layoutCoordinates;
        this.isStartHandle = z;
        this.previousSelection = selection;
        this.selectableIdOrderingComparator = comparator;
        this.selectableIdToInfoListIndex = LongIntMapKt.mutableLongIntMapOf();
        this.infoList = new ArrayList();
        this.startSlot = -1;
        this.endSlot = -1;
        this.currentSlot = -1;
    }

    private final int updateSlot(int i, Direction direction, Direction direction2) {
        if (i == -1) {
            int i2 = WhenMappings.$EnumSwitchMapping$0[SelectionLayoutKt.resolve2dDirection(direction, direction2).ordinal()];
            if (i2 == 1) {
                return this.currentSlot - 1;
            }
            if (i2 == 2) {
                return this.currentSlot;
            }
            if (i2 != 3) {
                me0.e();
                return 0;
            }
        }
        return i;
    }

    public final SelectableInfo appendInfo(long j, int i, Direction direction, Direction direction2, int i2, Direction direction3, Direction direction4, int i3, TextLayoutResult textLayoutResult) {
        this.currentSlot += 2;
        SelectableInfo selectableInfo = new SelectableInfo(j, this.currentSlot, i, i2, i3, textLayoutResult);
        this.startSlot = updateSlot(this.startSlot, direction, direction2);
        this.endSlot = updateSlot(this.endSlot, direction3, direction4);
        this.selectableIdToInfoListIndex.set(j, this.infoList.size());
        this.infoList.add(selectableInfo);
        return selectableInfo;
    }

    public final SelectionLayout build() {
        int i = this.currentSlot + 1;
        int size = this.infoList.size();
        if (size == 0) {
            return null;
        }
        if (size == 1) {
            SelectableInfo selectableInfo = (SelectableInfo) qn1.k0(this.infoList);
            int i2 = this.startSlot;
            int i3 = i2 == -1 ? i : i2;
            int i4 = this.endSlot;
            return new SingleSelectionLayout(this.isStartHandle, i3, i4 == -1 ? i : i4, this.previousSelection, selectableInfo);
        }
        MutableLongIntMap mutableLongIntMap = this.selectableIdToInfoListIndex;
        List<SelectableInfo> list = this.infoList;
        int i5 = this.startSlot;
        int i6 = i5 == -1 ? i : i5;
        int i7 = this.endSlot;
        return new MultiSelectionLayout(mutableLongIntMap, list, i6, i7 == -1 ? i : i7, this.isStartHandle, this.previousSelection);
    }

    public final LayoutCoordinates getContainerCoordinates() {
        return this.containerCoordinates;
    }

    /* JADX INFO: renamed from: getCurrentPosition-F1C5BW0, reason: not valid java name */
    public final long m2989getCurrentPositionF1C5BW0() {
        return this.currentPosition;
    }

    /* JADX INFO: renamed from: getPreviousHandlePosition-F1C5BW0, reason: not valid java name */
    public final long m2990getPreviousHandlePositionF1C5BW0() {
        return this.previousHandlePosition;
    }

    public final Selection getPreviousSelection() {
        return this.previousSelection;
    }

    public final Comparator<Long> getSelectableIdOrderingComparator() {
        return this.selectableIdOrderingComparator;
    }

    public final boolean isStartHandle() {
        return this.isStartHandle;
    }

    public /* synthetic */ SelectionLayoutBuilder(long j, long j2, LayoutCoordinates layoutCoordinates, boolean z, Selection selection, Comparator comparator, jh2 jh2Var) {
        this(j, j2, layoutCoordinates, z, selection, comparator);
    }
}
