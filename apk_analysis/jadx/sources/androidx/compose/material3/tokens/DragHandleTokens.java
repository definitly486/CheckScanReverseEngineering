package androidx.compose.material3.tokens;

import androidx.compose.ui.unit.Dp;

/* JADX INFO: loaded from: classes2.dex */
public final class DragHandleTokens {
    public static final int $stable = 0;
    private static final ColorSchemeKeyTokens DraggedColor;
    private static final float DraggedElevation;
    private static final float DraggedHeight;
    private static final ShapeKeyTokens DraggedShape;
    private static final float DraggedWidth;
    private static final float Elevation;
    private static final float Height;
    private static final ColorSchemeKeyTokens PressedColor;
    private static final float PressedElevation;
    private static final float PressedHeight;
    private static final ShapeKeyTokens PressedShape;
    private static final float PressedWidth;
    private static final ShapeKeyTokens Shape;
    private static final float Width;
    public static final DragHandleTokens INSTANCE = new DragHandleTokens();
    private static final ColorSchemeKeyTokens Color = ColorSchemeKeyTokens.Outline;
    private static final float ContainerWidth = Dp.m9042constructorimpl(24.0f);

    static {
        ColorSchemeKeyTokens colorSchemeKeyTokens = ColorSchemeKeyTokens.OnSurface;
        DraggedColor = colorSchemeKeyTokens;
        ElevationTokens elevationTokens = ElevationTokens.INSTANCE;
        DraggedElevation = elevationTokens.m4732getLevel0D9Ej5fM();
        DraggedHeight = Dp.m9042constructorimpl(52.0f);
        ShapeKeyTokens shapeKeyTokens = ShapeKeyTokens.CornerMedium;
        DraggedShape = shapeKeyTokens;
        DraggedWidth = Dp.m9042constructorimpl(12.0f);
        Elevation = elevationTokens.m4732getLevel0D9Ej5fM();
        Height = Dp.m9042constructorimpl(48.0f);
        PressedColor = colorSchemeKeyTokens;
        PressedElevation = elevationTokens.m4732getLevel0D9Ej5fM();
        PressedHeight = Dp.m9042constructorimpl(52.0f);
        PressedShape = shapeKeyTokens;
        PressedWidth = Dp.m9042constructorimpl(12.0f);
        Shape = ShapeKeyTokens.CornerFull;
        Width = Dp.m9042constructorimpl(4.0f);
    }

    private DragHandleTokens() {
    }

    public final ColorSchemeKeyTokens getColor() {
        return Color;
    }

    /* JADX INFO: renamed from: getContainerWidth-D9Ej5fM, reason: not valid java name */
    public final float m4710getContainerWidthD9Ej5fM() {
        return ContainerWidth;
    }

    public final ColorSchemeKeyTokens getDraggedColor() {
        return DraggedColor;
    }

    /* JADX INFO: renamed from: getDraggedElevation-D9Ej5fM, reason: not valid java name */
    public final float m4711getDraggedElevationD9Ej5fM() {
        return DraggedElevation;
    }

    /* JADX INFO: renamed from: getDraggedHeight-D9Ej5fM, reason: not valid java name */
    public final float m4712getDraggedHeightD9Ej5fM() {
        return DraggedHeight;
    }

    public final ShapeKeyTokens getDraggedShape() {
        return DraggedShape;
    }

    /* JADX INFO: renamed from: getDraggedWidth-D9Ej5fM, reason: not valid java name */
    public final float m4713getDraggedWidthD9Ej5fM() {
        return DraggedWidth;
    }

    /* JADX INFO: renamed from: getElevation-D9Ej5fM, reason: not valid java name */
    public final float m4714getElevationD9Ej5fM() {
        return Elevation;
    }

    /* JADX INFO: renamed from: getHeight-D9Ej5fM, reason: not valid java name */
    public final float m4715getHeightD9Ej5fM() {
        return Height;
    }

    public final ColorSchemeKeyTokens getPressedColor() {
        return PressedColor;
    }

    /* JADX INFO: renamed from: getPressedElevation-D9Ej5fM, reason: not valid java name */
    public final float m4716getPressedElevationD9Ej5fM() {
        return PressedElevation;
    }

    /* JADX INFO: renamed from: getPressedHeight-D9Ej5fM, reason: not valid java name */
    public final float m4717getPressedHeightD9Ej5fM() {
        return PressedHeight;
    }

    public final ShapeKeyTokens getPressedShape() {
        return PressedShape;
    }

    /* JADX INFO: renamed from: getPressedWidth-D9Ej5fM, reason: not valid java name */
    public final float m4718getPressedWidthD9Ej5fM() {
        return PressedWidth;
    }

    public final ShapeKeyTokens getShape() {
        return Shape;
    }

    /* JADX INFO: renamed from: getWidth-D9Ej5fM, reason: not valid java name */
    public final float m4719getWidthD9Ej5fM() {
        return Width;
    }
}
