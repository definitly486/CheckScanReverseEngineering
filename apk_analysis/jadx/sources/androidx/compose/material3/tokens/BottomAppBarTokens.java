package androidx.compose.material3.tokens;

import androidx.compose.ui.unit.Dp;

/* JADX INFO: loaded from: classes2.dex */
public final class BottomAppBarTokens {
    public static final int $stable = 0;
    public static final BottomAppBarTokens INSTANCE = new BottomAppBarTokens();
    private static final ColorSchemeKeyTokens ContainerColor = ColorSchemeKeyTokens.SurfaceContainer;
    private static final float ContainerElevation = ElevationTokens.INSTANCE.m4734getLevel2D9Ej5fM();
    private static final float ContainerHeight = Dp.m9042constructorimpl(80.0f);
    private static final ShapeKeyTokens ContainerShape = ShapeKeyTokens.CornerNone;

    private BottomAppBarTokens() {
    }

    public final ColorSchemeKeyTokens getContainerColor() {
        return ContainerColor;
    }

    /* JADX INFO: renamed from: getContainerElevation-D9Ej5fM, reason: not valid java name */
    public final float m4521getContainerElevationD9Ej5fM() {
        return ContainerElevation;
    }

    /* JADX INFO: renamed from: getContainerHeight-D9Ej5fM, reason: not valid java name */
    public final float m4522getContainerHeightD9Ej5fM() {
        return ContainerHeight;
    }

    public final ShapeKeyTokens getContainerShape() {
        return ContainerShape;
    }
}
