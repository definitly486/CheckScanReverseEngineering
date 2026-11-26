package androidx.compose.material3.tokens;

/* JADX INFO: loaded from: classes2.dex */
public final class FabSecondaryContainerTokens {
    public static final int $stable = 0;
    private static final float ContainerElevation;
    private static final float FocusedContainerElevation;
    private static final ColorSchemeKeyTokens FocusedIconColor;
    private static final float HoveredContainerElevation;
    private static final ColorSchemeKeyTokens HoveredIconColor;
    private static final ColorSchemeKeyTokens IconColor;
    private static final float PressedContainerElevation;
    private static final ColorSchemeKeyTokens PressedIconColor;
    public static final FabSecondaryContainerTokens INSTANCE = new FabSecondaryContainerTokens();
    private static final ColorSchemeKeyTokens ContainerColor = ColorSchemeKeyTokens.SecondaryContainer;

    static {
        ElevationTokens elevationTokens = ElevationTokens.INSTANCE;
        ContainerElevation = elevationTokens.m4735getLevel3D9Ej5fM();
        FocusedContainerElevation = elevationTokens.m4735getLevel3D9Ej5fM();
        ColorSchemeKeyTokens colorSchemeKeyTokens = ColorSchemeKeyTokens.OnSecondaryContainer;
        FocusedIconColor = colorSchemeKeyTokens;
        HoveredContainerElevation = elevationTokens.m4736getLevel4D9Ej5fM();
        HoveredIconColor = colorSchemeKeyTokens;
        IconColor = colorSchemeKeyTokens;
        PressedContainerElevation = elevationTokens.m4735getLevel3D9Ej5fM();
        PressedIconColor = colorSchemeKeyTokens;
    }

    private FabSecondaryContainerTokens() {
    }

    public final ColorSchemeKeyTokens getContainerColor() {
        return ContainerColor;
    }

    /* JADX INFO: renamed from: getContainerElevation-D9Ej5fM, reason: not valid java name */
    public final float m4788getContainerElevationD9Ej5fM() {
        return ContainerElevation;
    }

    /* JADX INFO: renamed from: getFocusedContainerElevation-D9Ej5fM, reason: not valid java name */
    public final float m4789getFocusedContainerElevationD9Ej5fM() {
        return FocusedContainerElevation;
    }

    public final ColorSchemeKeyTokens getFocusedIconColor() {
        return FocusedIconColor;
    }

    /* JADX INFO: renamed from: getHoveredContainerElevation-D9Ej5fM, reason: not valid java name */
    public final float m4790getHoveredContainerElevationD9Ej5fM() {
        return HoveredContainerElevation;
    }

    public final ColorSchemeKeyTokens getHoveredIconColor() {
        return HoveredIconColor;
    }

    public final ColorSchemeKeyTokens getIconColor() {
        return IconColor;
    }

    /* JADX INFO: renamed from: getPressedContainerElevation-D9Ej5fM, reason: not valid java name */
    public final float m4791getPressedContainerElevationD9Ej5fM() {
        return PressedContainerElevation;
    }

    public final ColorSchemeKeyTokens getPressedIconColor() {
        return PressedIconColor;
    }
}
