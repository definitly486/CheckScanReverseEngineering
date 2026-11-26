package androidx.compose.material3.tokens;

import androidx.compose.ui.unit.Dp;

/* JADX INFO: loaded from: classes2.dex */
public final class SearchBarTokens {
    public static final int $stable = 0;
    private static final ShapeKeyTokens AvatarShape;
    private static final float AvatarSize;
    private static final ColorSchemeKeyTokens ContainerColor;
    private static final float ContainerElevation;
    private static final float ContainerHeight;
    private static final ShapeKeyTokens ContainerShape;
    private static final ColorSchemeKeyTokens FocusIndicatorColor;
    private static final ColorSchemeKeyTokens HoverSupportingTextColor;
    public static final SearchBarTokens INSTANCE = new SearchBarTokens();
    private static final ColorSchemeKeyTokens InputTextColor;
    private static final TypographyKeyTokens InputTextFont;
    private static final ColorSchemeKeyTokens LeadingIconColor;
    private static final ColorSchemeKeyTokens PressedSupportingTextColor;
    private static final ColorSchemeKeyTokens SupportingTextColor;
    private static final TypographyKeyTokens SupportingTextFont;
    private static final ColorSchemeKeyTokens TrailingIconColor;

    static {
        ShapeKeyTokens shapeKeyTokens = ShapeKeyTokens.CornerFull;
        AvatarShape = shapeKeyTokens;
        AvatarSize = Dp.m9042constructorimpl(30.0f);
        ContainerColor = ColorSchemeKeyTokens.SurfaceContainerHigh;
        ContainerElevation = ElevationTokens.INSTANCE.m4735getLevel3D9Ej5fM();
        ContainerHeight = Dp.m9042constructorimpl(56.0f);
        ContainerShape = shapeKeyTokens;
        FocusIndicatorColor = ColorSchemeKeyTokens.Secondary;
        ColorSchemeKeyTokens colorSchemeKeyTokens = ColorSchemeKeyTokens.OnSurfaceVariant;
        HoverSupportingTextColor = colorSchemeKeyTokens;
        ColorSchemeKeyTokens colorSchemeKeyTokens2 = ColorSchemeKeyTokens.OnSurface;
        InputTextColor = colorSchemeKeyTokens2;
        TypographyKeyTokens typographyKeyTokens = TypographyKeyTokens.BodyLarge;
        InputTextFont = typographyKeyTokens;
        LeadingIconColor = colorSchemeKeyTokens2;
        PressedSupportingTextColor = colorSchemeKeyTokens;
        SupportingTextColor = colorSchemeKeyTokens;
        SupportingTextFont = typographyKeyTokens;
        TrailingIconColor = colorSchemeKeyTokens;
    }

    private SearchBarTokens() {
    }

    public final ShapeKeyTokens getAvatarShape() {
        return AvatarShape;
    }

    /* JADX INFO: renamed from: getAvatarSize-D9Ej5fM, reason: not valid java name */
    public final float m5076getAvatarSizeD9Ej5fM() {
        return AvatarSize;
    }

    public final ColorSchemeKeyTokens getContainerColor() {
        return ContainerColor;
    }

    /* JADX INFO: renamed from: getContainerElevation-D9Ej5fM, reason: not valid java name */
    public final float m5077getContainerElevationD9Ej5fM() {
        return ContainerElevation;
    }

    /* JADX INFO: renamed from: getContainerHeight-D9Ej5fM, reason: not valid java name */
    public final float m5078getContainerHeightD9Ej5fM() {
        return ContainerHeight;
    }

    public final ShapeKeyTokens getContainerShape() {
        return ContainerShape;
    }

    public final ColorSchemeKeyTokens getFocusIndicatorColor() {
        return FocusIndicatorColor;
    }

    public final ColorSchemeKeyTokens getHoverSupportingTextColor() {
        return HoverSupportingTextColor;
    }

    public final ColorSchemeKeyTokens getInputTextColor() {
        return InputTextColor;
    }

    public final TypographyKeyTokens getInputTextFont() {
        return InputTextFont;
    }

    public final ColorSchemeKeyTokens getLeadingIconColor() {
        return LeadingIconColor;
    }

    public final ColorSchemeKeyTokens getPressedSupportingTextColor() {
        return PressedSupportingTextColor;
    }

    public final ColorSchemeKeyTokens getSupportingTextColor() {
        return SupportingTextColor;
    }

    public final TypographyKeyTokens getSupportingTextFont() {
        return SupportingTextFont;
    }

    public final ColorSchemeKeyTokens getTrailingIconColor() {
        return TrailingIconColor;
    }
}
