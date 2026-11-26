package androidx.compose.material3.tokens;

import androidx.compose.ui.unit.Dp;

/* JADX INFO: loaded from: classes2.dex */
public final class MediumIconButtonTokens {
    public static final int $stable = 0;
    private static final ShapeKeyTokens ContainerShapeRound;
    private static final ShapeKeyTokens ContainerShapeSquare;
    private static final float DefaultLeadingSpace;
    private static final float DefaultTrailingSpace;
    private static final float IconSize;
    private static final float NarrowLeadingSpace;
    private static final float NarrowTrailingSpace;
    private static final float OutlinedOutlineWidth;
    private static final ShapeKeyTokens PressedContainerShape;
    private static final ShapeKeyTokens SelectedContainerShapeRound;
    private static final ShapeKeyTokens SelectedContainerShapeSquare;
    private static final float WideLeadingSpace;
    private static final float WideTrailingSpace;
    public static final MediumIconButtonTokens INSTANCE = new MediumIconButtonTokens();
    private static final float ContainerHeight = Dp.m9042constructorimpl(56.0f);

    static {
        ShapeKeyTokens shapeKeyTokens = ShapeKeyTokens.CornerFull;
        ContainerShapeRound = shapeKeyTokens;
        ShapeKeyTokens shapeKeyTokens2 = ShapeKeyTokens.CornerLarge;
        ContainerShapeSquare = shapeKeyTokens2;
        DefaultLeadingSpace = Dp.m9042constructorimpl(16.0f);
        DefaultTrailingSpace = Dp.m9042constructorimpl(16.0f);
        IconSize = Dp.m9042constructorimpl(24.0f);
        NarrowLeadingSpace = Dp.m9042constructorimpl(12.0f);
        NarrowTrailingSpace = Dp.m9042constructorimpl(12.0f);
        OutlinedOutlineWidth = Dp.m9042constructorimpl(1.0f);
        PressedContainerShape = ShapeKeyTokens.CornerMedium;
        SelectedContainerShapeRound = shapeKeyTokens2;
        SelectedContainerShapeSquare = shapeKeyTokens;
        WideLeadingSpace = Dp.m9042constructorimpl(24.0f);
        WideTrailingSpace = Dp.m9042constructorimpl(24.0f);
    }

    private MediumIconButtonTokens() {
    }

    /* JADX INFO: renamed from: getContainerHeight-D9Ej5fM, reason: not valid java name */
    public final float m4896getContainerHeightD9Ej5fM() {
        return ContainerHeight;
    }

    public final ShapeKeyTokens getContainerShapeRound() {
        return ContainerShapeRound;
    }

    public final ShapeKeyTokens getContainerShapeSquare() {
        return ContainerShapeSquare;
    }

    /* JADX INFO: renamed from: getDefaultLeadingSpace-D9Ej5fM, reason: not valid java name */
    public final float m4897getDefaultLeadingSpaceD9Ej5fM() {
        return DefaultLeadingSpace;
    }

    /* JADX INFO: renamed from: getDefaultTrailingSpace-D9Ej5fM, reason: not valid java name */
    public final float m4898getDefaultTrailingSpaceD9Ej5fM() {
        return DefaultTrailingSpace;
    }

    /* JADX INFO: renamed from: getIconSize-D9Ej5fM, reason: not valid java name */
    public final float m4899getIconSizeD9Ej5fM() {
        return IconSize;
    }

    /* JADX INFO: renamed from: getNarrowLeadingSpace-D9Ej5fM, reason: not valid java name */
    public final float m4900getNarrowLeadingSpaceD9Ej5fM() {
        return NarrowLeadingSpace;
    }

    /* JADX INFO: renamed from: getNarrowTrailingSpace-D9Ej5fM, reason: not valid java name */
    public final float m4901getNarrowTrailingSpaceD9Ej5fM() {
        return NarrowTrailingSpace;
    }

    /* JADX INFO: renamed from: getOutlinedOutlineWidth-D9Ej5fM, reason: not valid java name */
    public final float m4902getOutlinedOutlineWidthD9Ej5fM() {
        return OutlinedOutlineWidth;
    }

    public final ShapeKeyTokens getPressedContainerShape() {
        return PressedContainerShape;
    }

    public final ShapeKeyTokens getSelectedContainerShapeRound() {
        return SelectedContainerShapeRound;
    }

    public final ShapeKeyTokens getSelectedContainerShapeSquare() {
        return SelectedContainerShapeSquare;
    }

    /* JADX INFO: renamed from: getWideLeadingSpace-D9Ej5fM, reason: not valid java name */
    public final float m4903getWideLeadingSpaceD9Ej5fM() {
        return WideLeadingSpace;
    }

    /* JADX INFO: renamed from: getWideTrailingSpace-D9Ej5fM, reason: not valid java name */
    public final float m4904getWideTrailingSpaceD9Ej5fM() {
        return WideTrailingSpace;
    }
}
