package androidx.compose.material3.tokens;

import androidx.compose.ui.unit.Dp;

/* JADX INFO: loaded from: classes2.dex */
public final class SheetBottomTokens {
    public static final int $stable = 0;
    private static final float DockedModalContainerElevation;
    private static final float DockedStandardContainerElevation;
    private static final ColorSchemeKeyTokens FocusIndicatorColor;
    public static final SheetBottomTokens INSTANCE = new SheetBottomTokens();
    private static final ColorSchemeKeyTokens DockedContainerColor = ColorSchemeKeyTokens.SurfaceContainerLow;
    private static final ShapeKeyTokens DockedContainerShape = ShapeKeyTokens.CornerExtraLargeTop;
    private static final ColorSchemeKeyTokens DockedDragHandleColor = ColorSchemeKeyTokens.OnSurfaceVariant;
    private static final float DockedDragHandleHeight = Dp.m9042constructorimpl(4.0f);
    private static final float DockedDragHandleWidth = Dp.m9042constructorimpl(32.0f);
    private static final ShapeKeyTokens DockedMinimizedContainerShape = ShapeKeyTokens.CornerNone;

    static {
        ElevationTokens elevationTokens = ElevationTokens.INSTANCE;
        DockedModalContainerElevation = elevationTokens.m4733getLevel1D9Ej5fM();
        DockedStandardContainerElevation = elevationTokens.m4733getLevel1D9Ej5fM();
        FocusIndicatorColor = ColorSchemeKeyTokens.Secondary;
    }

    private SheetBottomTokens() {
    }

    public final ColorSchemeKeyTokens getDockedContainerColor() {
        return DockedContainerColor;
    }

    public final ShapeKeyTokens getDockedContainerShape() {
        return DockedContainerShape;
    }

    public final ColorSchemeKeyTokens getDockedDragHandleColor() {
        return DockedDragHandleColor;
    }

    /* JADX INFO: renamed from: getDockedDragHandleHeight-D9Ej5fM, reason: not valid java name */
    public final float m5086getDockedDragHandleHeightD9Ej5fM() {
        return DockedDragHandleHeight;
    }

    /* JADX INFO: renamed from: getDockedDragHandleWidth-D9Ej5fM, reason: not valid java name */
    public final float m5087getDockedDragHandleWidthD9Ej5fM() {
        return DockedDragHandleWidth;
    }

    public final ShapeKeyTokens getDockedMinimizedContainerShape() {
        return DockedMinimizedContainerShape;
    }

    /* JADX INFO: renamed from: getDockedModalContainerElevation-D9Ej5fM, reason: not valid java name */
    public final float m5088getDockedModalContainerElevationD9Ej5fM() {
        return DockedModalContainerElevation;
    }

    /* JADX INFO: renamed from: getDockedStandardContainerElevation-D9Ej5fM, reason: not valid java name */
    public final float m5089getDockedStandardContainerElevationD9Ej5fM() {
        return DockedStandardContainerElevation;
    }

    public final ColorSchemeKeyTokens getFocusIndicatorColor() {
        return FocusIndicatorColor;
    }
}
