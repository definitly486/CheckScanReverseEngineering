package androidx.compose.material3.internal;

import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.LayoutDirection;

/* JADX INFO: loaded from: classes2.dex */
public final class MenuPosition {
    public static final int $stable = 0;
    public static final MenuPosition INSTANCE = new MenuPosition();

    public interface Horizontal {
        /* JADX INFO: renamed from: position-95KtPRI */
        int mo4355position95KtPRI(IntRect intRect, long j, int i, LayoutDirection layoutDirection);
    }

    public interface Vertical {
        /* JADX INFO: renamed from: position-JVtK1S4 */
        int mo4356positionJVtK1S4(IntRect intRect, long j, int i);
    }

    private MenuPosition() {
    }

    public static /* synthetic */ Vertical bottomToAnchorTop$default(MenuPosition menuPosition, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return menuPosition.bottomToAnchorTop(i);
    }

    public static /* synthetic */ Vertical bottomToWindowBottom$default(MenuPosition menuPosition, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return menuPosition.bottomToWindowBottom(i);
    }

    public static /* synthetic */ Vertical centerToAnchorTop$default(MenuPosition menuPosition, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return menuPosition.centerToAnchorTop(i);
    }

    public static /* synthetic */ Horizontal endToAnchorEnd$default(MenuPosition menuPosition, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return menuPosition.endToAnchorEnd(i);
    }

    public static /* synthetic */ Horizontal leftToWindowLeft$default(MenuPosition menuPosition, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return menuPosition.leftToWindowLeft(i);
    }

    public static /* synthetic */ Horizontal rightToWindowRight$default(MenuPosition menuPosition, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return menuPosition.rightToWindowRight(i);
    }

    public static /* synthetic */ Horizontal startToAnchorStart$default(MenuPosition menuPosition, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return menuPosition.startToAnchorStart(i);
    }

    public static /* synthetic */ Vertical topToAnchorBottom$default(MenuPosition menuPosition, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return menuPosition.topToAnchorBottom(i);
    }

    public static /* synthetic */ Vertical topToWindowTop$default(MenuPosition menuPosition, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return menuPosition.topToWindowTop(i);
    }

    public final Vertical bottomToAnchorTop(int i) {
        Alignment.Companion companion = Alignment.Companion;
        return new AnchorAlignmentOffsetPosition.Vertical(companion.getBottom(), companion.getTop(), i);
    }

    public final Vertical bottomToWindowBottom(int i) {
        return new WindowAlignmentMarginPosition.Vertical(Alignment.Companion.getBottom(), i);
    }

    public final Vertical centerToAnchorTop(int i) {
        Alignment.Companion companion = Alignment.Companion;
        return new AnchorAlignmentOffsetPosition.Vertical(companion.getCenterVertically(), companion.getTop(), i);
    }

    public final Horizontal endToAnchorEnd(int i) {
        Alignment.Companion companion = Alignment.Companion;
        return new AnchorAlignmentOffsetPosition.Horizontal(companion.getEnd(), companion.getEnd(), i);
    }

    public final Horizontal leftToWindowLeft(int i) {
        return new WindowAlignmentMarginPosition.Horizontal(AbsoluteAlignment.INSTANCE.getLeft(), i);
    }

    public final Horizontal rightToWindowRight(int i) {
        return new WindowAlignmentMarginPosition.Horizontal(AbsoluteAlignment.INSTANCE.getRight(), i);
    }

    public final Horizontal startToAnchorStart(int i) {
        Alignment.Companion companion = Alignment.Companion;
        return new AnchorAlignmentOffsetPosition.Horizontal(companion.getStart(), companion.getStart(), i);
    }

    public final Vertical topToAnchorBottom(int i) {
        Alignment.Companion companion = Alignment.Companion;
        return new AnchorAlignmentOffsetPosition.Vertical(companion.getTop(), companion.getBottom(), i);
    }

    public final Vertical topToWindowTop(int i) {
        return new WindowAlignmentMarginPosition.Vertical(Alignment.Companion.getTop(), i);
    }
}
