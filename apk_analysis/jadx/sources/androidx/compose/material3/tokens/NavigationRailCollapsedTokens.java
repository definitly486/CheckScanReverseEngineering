package androidx.compose.material3.tokens;

import androidx.compose.ui.unit.Dp;

/* JADX INFO: loaded from: classes2.dex */
public final class NavigationRailCollapsedTokens {
    public static final int $stable = 0;
    public static final NavigationRailCollapsedTokens INSTANCE = new NavigationRailCollapsedTokens();
    private static final float ContainerElevation = ElevationTokens.INSTANCE.m4732getLevel0D9Ej5fM();
    private static final ShapeKeyTokens ContainerShape = ShapeKeyTokens.CornerNone;
    private static final float ContainerWidth = Dp.m9042constructorimpl(96.0f);
    private static final float ItemVerticalSpace = Dp.m9042constructorimpl(4.0f);
    private static final float TopSpace = Dp.m9042constructorimpl(44.0f);
    private static final ColorSchemeKeyTokens ContainerColor = ColorSchemeKeyTokens.Surface;
    private static final float NarrowContainerWidth = Dp.m9042constructorimpl(80.0f);

    private NavigationRailCollapsedTokens() {
    }

    public final ColorSchemeKeyTokens getContainerColor() {
        return ContainerColor;
    }

    /* JADX INFO: renamed from: getContainerElevation-D9Ej5fM, reason: not valid java name */
    public final float m4932getContainerElevationD9Ej5fM() {
        return ContainerElevation;
    }

    public final ShapeKeyTokens getContainerShape() {
        return ContainerShape;
    }

    /* JADX INFO: renamed from: getContainerWidth-D9Ej5fM, reason: not valid java name */
    public final float m4933getContainerWidthD9Ej5fM() {
        return ContainerWidth;
    }

    /* JADX INFO: renamed from: getItemVerticalSpace-D9Ej5fM, reason: not valid java name */
    public final float m4934getItemVerticalSpaceD9Ej5fM() {
        return ItemVerticalSpace;
    }

    /* JADX INFO: renamed from: getNarrowContainerWidth-D9Ej5fM, reason: not valid java name */
    public final float m4935getNarrowContainerWidthD9Ej5fM() {
        return NarrowContainerWidth;
    }

    /* JADX INFO: renamed from: getTopSpace-D9Ej5fM, reason: not valid java name */
    public final float m4936getTopSpaceD9Ej5fM() {
        return TopSpace;
    }
}
