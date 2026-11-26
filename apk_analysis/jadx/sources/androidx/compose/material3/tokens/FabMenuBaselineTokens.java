package androidx.compose.material3.tokens;

import androidx.compose.ui.unit.Dp;

/* JADX INFO: loaded from: classes2.dex */
public final class FabMenuBaselineTokens {
    public static final int $stable = 0;
    private static final float CloseButtonContainerElevation;
    private static final float CloseButtonContainerHeight;
    private static final ShapeKeyTokens CloseButtonContainerShape;
    private static final float CloseButtonContainerWidth;
    private static final float CloseButtonIconSize;
    private static final float ListItemBetweenSpace;
    private static final float ListItemContainerElevation;
    private static final float ListItemContainerHeight;
    private static final ShapeKeyTokens ListItemContainerShape;
    private static final float ListItemIconLabelSpace;
    private static final float ListItemIconSize;
    private static final float ListItemLeadingSpace;
    private static final float ListItemTrailingSpace;
    public static final FabMenuBaselineTokens INSTANCE = new FabMenuBaselineTokens();
    private static final float CloseButtonBetweenSpace = Dp.m9042constructorimpl(8.0f);

    static {
        ElevationTokens elevationTokens = ElevationTokens.INSTANCE;
        CloseButtonContainerElevation = elevationTokens.m4735getLevel3D9Ej5fM();
        CloseButtonContainerHeight = Dp.m9042constructorimpl(56.0f);
        ShapeKeyTokens shapeKeyTokens = ShapeKeyTokens.CornerFull;
        CloseButtonContainerShape = shapeKeyTokens;
        CloseButtonContainerWidth = Dp.m9042constructorimpl(56.0f);
        CloseButtonIconSize = Dp.m9042constructorimpl(20.0f);
        ListItemBetweenSpace = Dp.m9042constructorimpl(4.0f);
        ListItemContainerElevation = elevationTokens.m4735getLevel3D9Ej5fM();
        ListItemContainerHeight = Dp.m9042constructorimpl(56.0f);
        ListItemContainerShape = shapeKeyTokens;
        ListItemIconLabelSpace = Dp.m9042constructorimpl(8.0f);
        ListItemIconSize = Dp.m9042constructorimpl(24.0f);
        ListItemLeadingSpace = Dp.m9042constructorimpl(24.0f);
        ListItemTrailingSpace = Dp.m9042constructorimpl(24.0f);
    }

    private FabMenuBaselineTokens() {
    }

    /* JADX INFO: renamed from: getCloseButtonBetweenSpace-D9Ej5fM, reason: not valid java name */
    public final float m4772getCloseButtonBetweenSpaceD9Ej5fM() {
        return CloseButtonBetweenSpace;
    }

    /* JADX INFO: renamed from: getCloseButtonContainerElevation-D9Ej5fM, reason: not valid java name */
    public final float m4773getCloseButtonContainerElevationD9Ej5fM() {
        return CloseButtonContainerElevation;
    }

    /* JADX INFO: renamed from: getCloseButtonContainerHeight-D9Ej5fM, reason: not valid java name */
    public final float m4774getCloseButtonContainerHeightD9Ej5fM() {
        return CloseButtonContainerHeight;
    }

    public final ShapeKeyTokens getCloseButtonContainerShape() {
        return CloseButtonContainerShape;
    }

    /* JADX INFO: renamed from: getCloseButtonContainerWidth-D9Ej5fM, reason: not valid java name */
    public final float m4775getCloseButtonContainerWidthD9Ej5fM() {
        return CloseButtonContainerWidth;
    }

    /* JADX INFO: renamed from: getCloseButtonIconSize-D9Ej5fM, reason: not valid java name */
    public final float m4776getCloseButtonIconSizeD9Ej5fM() {
        return CloseButtonIconSize;
    }

    /* JADX INFO: renamed from: getListItemBetweenSpace-D9Ej5fM, reason: not valid java name */
    public final float m4777getListItemBetweenSpaceD9Ej5fM() {
        return ListItemBetweenSpace;
    }

    /* JADX INFO: renamed from: getListItemContainerElevation-D9Ej5fM, reason: not valid java name */
    public final float m4778getListItemContainerElevationD9Ej5fM() {
        return ListItemContainerElevation;
    }

    /* JADX INFO: renamed from: getListItemContainerHeight-D9Ej5fM, reason: not valid java name */
    public final float m4779getListItemContainerHeightD9Ej5fM() {
        return ListItemContainerHeight;
    }

    public final ShapeKeyTokens getListItemContainerShape() {
        return ListItemContainerShape;
    }

    /* JADX INFO: renamed from: getListItemIconLabelSpace-D9Ej5fM, reason: not valid java name */
    public final float m4780getListItemIconLabelSpaceD9Ej5fM() {
        return ListItemIconLabelSpace;
    }

    /* JADX INFO: renamed from: getListItemIconSize-D9Ej5fM, reason: not valid java name */
    public final float m4781getListItemIconSizeD9Ej5fM() {
        return ListItemIconSize;
    }

    /* JADX INFO: renamed from: getListItemLeadingSpace-D9Ej5fM, reason: not valid java name */
    public final float m4782getListItemLeadingSpaceD9Ej5fM() {
        return ListItemLeadingSpace;
    }

    /* JADX INFO: renamed from: getListItemTrailingSpace-D9Ej5fM, reason: not valid java name */
    public final float m4783getListItemTrailingSpaceD9Ej5fM() {
        return ListItemTrailingSpace;
    }
}
