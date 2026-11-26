package androidx.compose.material3.tokens;

import androidx.compose.ui.unit.Dp;

/* JADX INFO: loaded from: classes2.dex */
public final class LargeIconButtonTokens {
    public static final int $stable = 0;
    private static final ShapeKeyTokens ContainerShapeRound;
    private static final ShapeKeyTokens ContainerShapeSquare;
    private static final float IconSize;
    private static final float NarrowLeadingSpace;
    private static final float NarrowTrailingSpace;
    private static final float OutlinedOutlineWidth;
    private static final ShapeKeyTokens PressedContainerShape;
    private static final ShapeKeyTokens SelectedContainerShapeRound;
    private static final ShapeKeyTokens SelectedContainerShapeSquare;
    private static final float UniformLeadingSpace;
    private static final float UniformTrailingSpace;
    private static final float WideLeadingSpace;
    private static final float WideTrailingSpace;
    public static final LargeIconButtonTokens INSTANCE = new LargeIconButtonTokens();
    private static final float ContainerHeight = Dp.m9042constructorimpl(96.0f);

    static {
        ShapeKeyTokens shapeKeyTokens = ShapeKeyTokens.CornerFull;
        ContainerShapeRound = shapeKeyTokens;
        ShapeKeyTokens shapeKeyTokens2 = ShapeKeyTokens.CornerExtraLarge;
        ContainerShapeSquare = shapeKeyTokens2;
        IconSize = Dp.m9042constructorimpl(32.0f);
        NarrowLeadingSpace = Dp.m9042constructorimpl(16.0f);
        NarrowTrailingSpace = Dp.m9042constructorimpl(16.0f);
        OutlinedOutlineWidth = Dp.m9042constructorimpl(2.0f);
        PressedContainerShape = ShapeKeyTokens.CornerLarge;
        SelectedContainerShapeRound = shapeKeyTokens2;
        SelectedContainerShapeSquare = shapeKeyTokens;
        UniformLeadingSpace = Dp.m9042constructorimpl(32.0f);
        UniformTrailingSpace = Dp.m9042constructorimpl(32.0f);
        WideLeadingSpace = Dp.m9042constructorimpl(48.0f);
        WideTrailingSpace = Dp.m9042constructorimpl(48.0f);
    }

    private LargeIconButtonTokens() {
    }

    /* JADX INFO: renamed from: getContainerHeight-D9Ej5fM, reason: not valid java name */
    public final float m4857getContainerHeightD9Ej5fM() {
        return ContainerHeight;
    }

    public final ShapeKeyTokens getContainerShapeRound() {
        return ContainerShapeRound;
    }

    public final ShapeKeyTokens getContainerShapeSquare() {
        return ContainerShapeSquare;
    }

    /* JADX INFO: renamed from: getIconSize-D9Ej5fM, reason: not valid java name */
    public final float m4858getIconSizeD9Ej5fM() {
        return IconSize;
    }

    /* JADX INFO: renamed from: getNarrowLeadingSpace-D9Ej5fM, reason: not valid java name */
    public final float m4859getNarrowLeadingSpaceD9Ej5fM() {
        return NarrowLeadingSpace;
    }

    /* JADX INFO: renamed from: getNarrowTrailingSpace-D9Ej5fM, reason: not valid java name */
    public final float m4860getNarrowTrailingSpaceD9Ej5fM() {
        return NarrowTrailingSpace;
    }

    /* JADX INFO: renamed from: getOutlinedOutlineWidth-D9Ej5fM, reason: not valid java name */
    public final float m4861getOutlinedOutlineWidthD9Ej5fM() {
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

    /* JADX INFO: renamed from: getUniformLeadingSpace-D9Ej5fM, reason: not valid java name */
    public final float m4862getUniformLeadingSpaceD9Ej5fM() {
        return UniformLeadingSpace;
    }

    /* JADX INFO: renamed from: getUniformTrailingSpace-D9Ej5fM, reason: not valid java name */
    public final float m4863getUniformTrailingSpaceD9Ej5fM() {
        return UniformTrailingSpace;
    }

    /* JADX INFO: renamed from: getWideLeadingSpace-D9Ej5fM, reason: not valid java name */
    public final float m4864getWideLeadingSpaceD9Ej5fM() {
        return WideLeadingSpace;
    }

    /* JADX INFO: renamed from: getWideTrailingSpace-D9Ej5fM, reason: not valid java name */
    public final float m4865getWideTrailingSpaceD9Ej5fM() {
        return WideTrailingSpace;
    }
}
