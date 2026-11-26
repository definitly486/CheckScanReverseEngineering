package androidx.compose.material3.tokens;

import androidx.compose.ui.unit.Dp;

/* JADX INFO: loaded from: classes2.dex */
public final class FloatingToolbarTokens {
    public static final int $stable = 0;
    private static final ColorSchemeKeyTokens StandardContainerColor;
    private static final ColorSchemeKeyTokens VibrantButtonSelectedContainerColor;
    private static final ColorSchemeKeyTokens VibrantButtonSelectedIconColor;
    private static final ColorSchemeKeyTokens VibrantButtonSelectedTextColor;
    private static final ColorSchemeKeyTokens VibrantButtonUnselectedIconColor;
    private static final ColorSchemeKeyTokens VibrantButtonUnselectedTextColor;
    private static final ColorSchemeKeyTokens VibrantContainerColor;
    public static final FloatingToolbarTokens INSTANCE = new FloatingToolbarTokens();
    private static final float ContainerBetweenSpace = Dp.m9042constructorimpl(4.0f);
    private static final float ContainerExternalPadding = Dp.m9042constructorimpl(16.0f);
    private static final float ContainerHeight = Dp.m9042constructorimpl(64.0f);
    private static final float ContainerLeadingSpace = Dp.m9042constructorimpl(8.0f);
    private static final ShapeKeyTokens ContainerShape = ShapeKeyTokens.CornerFull;
    private static final float ContainerTrailingSpace = Dp.m9042constructorimpl(8.0f);

    static {
        ColorSchemeKeyTokens colorSchemeKeyTokens = ColorSchemeKeyTokens.SurfaceContainer;
        StandardContainerColor = colorSchemeKeyTokens;
        VibrantButtonSelectedContainerColor = colorSchemeKeyTokens;
        ColorSchemeKeyTokens colorSchemeKeyTokens2 = ColorSchemeKeyTokens.OnSurface;
        VibrantButtonSelectedIconColor = colorSchemeKeyTokens2;
        VibrantButtonSelectedTextColor = colorSchemeKeyTokens2;
        ColorSchemeKeyTokens colorSchemeKeyTokens3 = ColorSchemeKeyTokens.OnPrimaryContainer;
        VibrantButtonUnselectedIconColor = colorSchemeKeyTokens3;
        VibrantButtonUnselectedTextColor = colorSchemeKeyTokens3;
        VibrantContainerColor = ColorSchemeKeyTokens.PrimaryContainer;
    }

    private FloatingToolbarTokens() {
    }

    /* JADX INFO: renamed from: getContainerBetweenSpace-D9Ej5fM, reason: not valid java name */
    public final float m4844getContainerBetweenSpaceD9Ej5fM() {
        return ContainerBetweenSpace;
    }

    /* JADX INFO: renamed from: getContainerExternalPadding-D9Ej5fM, reason: not valid java name */
    public final float m4845getContainerExternalPaddingD9Ej5fM() {
        return ContainerExternalPadding;
    }

    /* JADX INFO: renamed from: getContainerHeight-D9Ej5fM, reason: not valid java name */
    public final float m4846getContainerHeightD9Ej5fM() {
        return ContainerHeight;
    }

    /* JADX INFO: renamed from: getContainerLeadingSpace-D9Ej5fM, reason: not valid java name */
    public final float m4847getContainerLeadingSpaceD9Ej5fM() {
        return ContainerLeadingSpace;
    }

    public final ShapeKeyTokens getContainerShape() {
        return ContainerShape;
    }

    /* JADX INFO: renamed from: getContainerTrailingSpace-D9Ej5fM, reason: not valid java name */
    public final float m4848getContainerTrailingSpaceD9Ej5fM() {
        return ContainerTrailingSpace;
    }

    public final ColorSchemeKeyTokens getStandardContainerColor() {
        return StandardContainerColor;
    }

    public final ColorSchemeKeyTokens getVibrantButtonSelectedContainerColor() {
        return VibrantButtonSelectedContainerColor;
    }

    public final ColorSchemeKeyTokens getVibrantButtonSelectedIconColor() {
        return VibrantButtonSelectedIconColor;
    }

    public final ColorSchemeKeyTokens getVibrantButtonSelectedTextColor() {
        return VibrantButtonSelectedTextColor;
    }

    public final ColorSchemeKeyTokens getVibrantButtonUnselectedIconColor() {
        return VibrantButtonUnselectedIconColor;
    }

    public final ColorSchemeKeyTokens getVibrantButtonUnselectedTextColor() {
        return VibrantButtonUnselectedTextColor;
    }

    public final ColorSchemeKeyTokens getVibrantContainerColor() {
        return VibrantContainerColor;
    }
}
