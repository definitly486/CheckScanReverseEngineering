package androidx.compose.material3.tokens;

import androidx.compose.ui.unit.Dp;

/* JADX INFO: loaded from: classes2.dex */
public final class OutlinedCardTokens {
    public static final int $stable = 0;
    private static final float ContainerElevation;
    private static final ShapeKeyTokens ContainerShape;
    private static final float DisabledContainerElevation;
    private static final ColorSchemeKeyTokens DisabledOutlineColor;
    public static final float DisabledOutlineOpacity = 0.12f;
    private static final float DraggedContainerElevation;
    private static final ColorSchemeKeyTokens DraggedOutlineColor;
    private static final float FocusContainerElevation;
    private static final ColorSchemeKeyTokens FocusOutlineColor;
    private static final float HoverContainerElevation;
    private static final ColorSchemeKeyTokens HoverOutlineColor;
    private static final ColorSchemeKeyTokens IconColor;
    private static final float IconSize;
    private static final ColorSchemeKeyTokens OutlineColor;
    private static final float OutlineWidth;
    private static final float PressedContainerElevation;
    private static final ColorSchemeKeyTokens PressedOutlineColor;
    public static final OutlinedCardTokens INSTANCE = new OutlinedCardTokens();
    private static final ColorSchemeKeyTokens ContainerColor = ColorSchemeKeyTokens.Surface;

    static {
        ElevationTokens elevationTokens = ElevationTokens.INSTANCE;
        ContainerElevation = elevationTokens.m4732getLevel0D9Ej5fM();
        ContainerShape = ShapeKeyTokens.CornerMedium;
        DisabledContainerElevation = elevationTokens.m4732getLevel0D9Ej5fM();
        DisabledOutlineColor = ColorSchemeKeyTokens.Outline;
        DraggedContainerElevation = elevationTokens.m4735getLevel3D9Ej5fM();
        ColorSchemeKeyTokens colorSchemeKeyTokens = ColorSchemeKeyTokens.OutlineVariant;
        DraggedOutlineColor = colorSchemeKeyTokens;
        FocusContainerElevation = elevationTokens.m4732getLevel0D9Ej5fM();
        FocusOutlineColor = ColorSchemeKeyTokens.OnSurface;
        HoverContainerElevation = elevationTokens.m4733getLevel1D9Ej5fM();
        HoverOutlineColor = colorSchemeKeyTokens;
        IconColor = ColorSchemeKeyTokens.Primary;
        IconSize = Dp.m9042constructorimpl(24.0f);
        OutlineColor = colorSchemeKeyTokens;
        OutlineWidth = Dp.m9042constructorimpl(1.0f);
        PressedContainerElevation = elevationTokens.m4732getLevel0D9Ej5fM();
        PressedOutlineColor = colorSchemeKeyTokens;
    }

    private OutlinedCardTokens() {
    }

    public final ColorSchemeKeyTokens getContainerColor() {
        return ContainerColor;
    }

    /* JADX INFO: renamed from: getContainerElevation-D9Ej5fM, reason: not valid java name */
    public final float m4959getContainerElevationD9Ej5fM() {
        return ContainerElevation;
    }

    public final ShapeKeyTokens getContainerShape() {
        return ContainerShape;
    }

    /* JADX INFO: renamed from: getDisabledContainerElevation-D9Ej5fM, reason: not valid java name */
    public final float m4960getDisabledContainerElevationD9Ej5fM() {
        return DisabledContainerElevation;
    }

    public final ColorSchemeKeyTokens getDisabledOutlineColor() {
        return DisabledOutlineColor;
    }

    /* JADX INFO: renamed from: getDraggedContainerElevation-D9Ej5fM, reason: not valid java name */
    public final float m4961getDraggedContainerElevationD9Ej5fM() {
        return DraggedContainerElevation;
    }

    public final ColorSchemeKeyTokens getDraggedOutlineColor() {
        return DraggedOutlineColor;
    }

    /* JADX INFO: renamed from: getFocusContainerElevation-D9Ej5fM, reason: not valid java name */
    public final float m4962getFocusContainerElevationD9Ej5fM() {
        return FocusContainerElevation;
    }

    public final ColorSchemeKeyTokens getFocusOutlineColor() {
        return FocusOutlineColor;
    }

    /* JADX INFO: renamed from: getHoverContainerElevation-D9Ej5fM, reason: not valid java name */
    public final float m4963getHoverContainerElevationD9Ej5fM() {
        return HoverContainerElevation;
    }

    public final ColorSchemeKeyTokens getHoverOutlineColor() {
        return HoverOutlineColor;
    }

    public final ColorSchemeKeyTokens getIconColor() {
        return IconColor;
    }

    /* JADX INFO: renamed from: getIconSize-D9Ej5fM, reason: not valid java name */
    public final float m4964getIconSizeD9Ej5fM() {
        return IconSize;
    }

    public final ColorSchemeKeyTokens getOutlineColor() {
        return OutlineColor;
    }

    /* JADX INFO: renamed from: getOutlineWidth-D9Ej5fM, reason: not valid java name */
    public final float m4965getOutlineWidthD9Ej5fM() {
        return OutlineWidth;
    }

    /* JADX INFO: renamed from: getPressedContainerElevation-D9Ej5fM, reason: not valid java name */
    public final float m4966getPressedContainerElevationD9Ej5fM() {
        return PressedContainerElevation;
    }

    public final ColorSchemeKeyTokens getPressedOutlineColor() {
        return PressedOutlineColor;
    }
}
