package androidx.compose.material3.tokens;

import androidx.compose.ui.unit.Dp;

/* JADX INFO: loaded from: classes2.dex */
public final class AppBarTokens {
    public static final int $stable = 0;
    private static final float ContainerElevation;
    private static final ShapeKeyTokens ContainerShape;
    private static final float IconButtonSpace;
    private static final float IconSize;
    private static final ColorSchemeKeyTokens LeadingIconColor;
    private static final float LeadingSpace;
    private static final ColorSchemeKeyTokens OnScrollContainerColor;
    private static final float OnScrollContainerElevation;
    private static final ColorSchemeKeyTokens SubtitleColor;
    private static final ColorSchemeKeyTokens TitleColor;
    private static final ColorSchemeKeyTokens TrailingIconColor;
    private static final float TrailingSpace;
    public static final AppBarTokens INSTANCE = new AppBarTokens();
    private static final float AvatarSize = Dp.m9042constructorimpl(32.0f);
    private static final ColorSchemeKeyTokens ContainerColor = ColorSchemeKeyTokens.Surface;

    static {
        ElevationTokens elevationTokens = ElevationTokens.INSTANCE;
        ContainerElevation = elevationTokens.m4732getLevel0D9Ej5fM();
        ContainerShape = ShapeKeyTokens.CornerNone;
        IconButtonSpace = Dp.m9042constructorimpl(0.0f);
        IconSize = Dp.m9042constructorimpl(24.0f);
        ColorSchemeKeyTokens colorSchemeKeyTokens = ColorSchemeKeyTokens.OnSurface;
        LeadingIconColor = colorSchemeKeyTokens;
        LeadingSpace = Dp.m9042constructorimpl(4.0f);
        OnScrollContainerColor = ColorSchemeKeyTokens.SurfaceContainer;
        OnScrollContainerElevation = elevationTokens.m4734getLevel2D9Ej5fM();
        ColorSchemeKeyTokens colorSchemeKeyTokens2 = ColorSchemeKeyTokens.OnSurfaceVariant;
        SubtitleColor = colorSchemeKeyTokens2;
        TitleColor = colorSchemeKeyTokens;
        TrailingIconColor = colorSchemeKeyTokens2;
        TrailingSpace = Dp.m9042constructorimpl(4.0f);
    }

    private AppBarTokens() {
    }

    /* JADX INFO: renamed from: getAvatarSize-D9Ej5fM, reason: not valid java name */
    public final float m4492getAvatarSizeD9Ej5fM() {
        return AvatarSize;
    }

    public final ColorSchemeKeyTokens getContainerColor() {
        return ContainerColor;
    }

    /* JADX INFO: renamed from: getContainerElevation-D9Ej5fM, reason: not valid java name */
    public final float m4493getContainerElevationD9Ej5fM() {
        return ContainerElevation;
    }

    public final ShapeKeyTokens getContainerShape() {
        return ContainerShape;
    }

    /* JADX INFO: renamed from: getIconButtonSpace-D9Ej5fM, reason: not valid java name */
    public final float m4494getIconButtonSpaceD9Ej5fM() {
        return IconButtonSpace;
    }

    /* JADX INFO: renamed from: getIconSize-D9Ej5fM, reason: not valid java name */
    public final float m4495getIconSizeD9Ej5fM() {
        return IconSize;
    }

    public final ColorSchemeKeyTokens getLeadingIconColor() {
        return LeadingIconColor;
    }

    /* JADX INFO: renamed from: getLeadingSpace-D9Ej5fM, reason: not valid java name */
    public final float m4496getLeadingSpaceD9Ej5fM() {
        return LeadingSpace;
    }

    public final ColorSchemeKeyTokens getOnScrollContainerColor() {
        return OnScrollContainerColor;
    }

    /* JADX INFO: renamed from: getOnScrollContainerElevation-D9Ej5fM, reason: not valid java name */
    public final float m4497getOnScrollContainerElevationD9Ej5fM() {
        return OnScrollContainerElevation;
    }

    public final ColorSchemeKeyTokens getSubtitleColor() {
        return SubtitleColor;
    }

    public final ColorSchemeKeyTokens getTitleColor() {
        return TitleColor;
    }

    public final ColorSchemeKeyTokens getTrailingIconColor() {
        return TrailingIconColor;
    }

    /* JADX INFO: renamed from: getTrailingSpace-D9Ej5fM, reason: not valid java name */
    public final float m4498getTrailingSpaceD9Ej5fM() {
        return TrailingSpace;
    }
}
