package androidx.compose.material3.tokens;

import androidx.compose.ui.unit.Dp;

/* JADX INFO: loaded from: classes2.dex */
public final class NavigationRailExpandedTokens {
    public static final int $stable = 0;
    private static final float ContainerElevation;
    private static final ShapeKeyTokens ContainerShape;
    private static final float ContainerWidthMaximum;
    private static final float ContainerWidthMinimum;
    public static final NavigationRailExpandedTokens INSTANCE = new NavigationRailExpandedTokens();
    private static final ColorSchemeKeyTokens ModalContainerColor;
    private static final float ModalContainerElevation;
    private static final ShapeKeyTokens ModalContainerShape;
    private static final float TopSpace;

    static {
        ElevationTokens elevationTokens = ElevationTokens.INSTANCE;
        ContainerElevation = elevationTokens.m4732getLevel0D9Ej5fM();
        ContainerShape = ShapeKeyTokens.CornerNone;
        ContainerWidthMaximum = Dp.m9042constructorimpl(360.0f);
        ContainerWidthMinimum = Dp.m9042constructorimpl(220.0f);
        ModalContainerElevation = elevationTokens.m4734getLevel2D9Ej5fM();
        ModalContainerShape = ShapeKeyTokens.CornerLarge;
        TopSpace = Dp.m9042constructorimpl(44.0f);
        ModalContainerColor = ColorSchemeKeyTokens.SurfaceContainer;
    }

    private NavigationRailExpandedTokens() {
    }

    /* JADX INFO: renamed from: getContainerElevation-D9Ej5fM, reason: not valid java name */
    public final float m4937getContainerElevationD9Ej5fM() {
        return ContainerElevation;
    }

    public final ShapeKeyTokens getContainerShape() {
        return ContainerShape;
    }

    /* JADX INFO: renamed from: getContainerWidthMaximum-D9Ej5fM, reason: not valid java name */
    public final float m4938getContainerWidthMaximumD9Ej5fM() {
        return ContainerWidthMaximum;
    }

    /* JADX INFO: renamed from: getContainerWidthMinimum-D9Ej5fM, reason: not valid java name */
    public final float m4939getContainerWidthMinimumD9Ej5fM() {
        return ContainerWidthMinimum;
    }

    public final ColorSchemeKeyTokens getModalContainerColor() {
        return ModalContainerColor;
    }

    /* JADX INFO: renamed from: getModalContainerElevation-D9Ej5fM, reason: not valid java name */
    public final float m4940getModalContainerElevationD9Ej5fM() {
        return ModalContainerElevation;
    }

    public final ShapeKeyTokens getModalContainerShape() {
        return ModalContainerShape;
    }

    /* JADX INFO: renamed from: getTopSpace-D9Ej5fM, reason: not valid java name */
    public final float m4941getTopSpaceD9Ej5fM() {
        return TopSpace;
    }
}
