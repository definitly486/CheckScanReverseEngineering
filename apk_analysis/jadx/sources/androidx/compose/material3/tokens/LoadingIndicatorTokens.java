package androidx.compose.material3.tokens;

import androidx.compose.ui.unit.Dp;

/* JADX INFO: loaded from: classes2.dex */
public final class LoadingIndicatorTokens {
    public static final int $stable = 0;
    public static final LoadingIndicatorTokens INSTANCE = new LoadingIndicatorTokens();
    private static final ColorSchemeKeyTokens ActiveIndicatorColor = ColorSchemeKeyTokens.Primary;
    private static final float ActiveSize = Dp.m9042constructorimpl(38.0f);
    private static final ColorSchemeKeyTokens ContainedActiveColor = ColorSchemeKeyTokens.OnPrimaryContainer;
    private static final ColorSchemeKeyTokens ContainedContainerColor = ColorSchemeKeyTokens.PrimaryContainer;
    private static final float ContainerHeight = Dp.m9042constructorimpl(48.0f);
    private static final ShapeKeyTokens ContainerShape = ShapeKeyTokens.CornerFull;
    private static final float ContainerWidth = Dp.m9042constructorimpl(48.0f);

    private LoadingIndicatorTokens() {
    }

    public final ColorSchemeKeyTokens getActiveIndicatorColor() {
        return ActiveIndicatorColor;
    }

    /* JADX INFO: renamed from: getActiveSize-D9Ej5fM, reason: not valid java name */
    public final float m4893getActiveSizeD9Ej5fM() {
        return ActiveSize;
    }

    public final ColorSchemeKeyTokens getContainedActiveColor() {
        return ContainedActiveColor;
    }

    public final ColorSchemeKeyTokens getContainedContainerColor() {
        return ContainedContainerColor;
    }

    /* JADX INFO: renamed from: getContainerHeight-D9Ej5fM, reason: not valid java name */
    public final float m4894getContainerHeightD9Ej5fM() {
        return ContainerHeight;
    }

    public final ShapeKeyTokens getContainerShape() {
        return ContainerShape;
    }

    /* JADX INFO: renamed from: getContainerWidth-D9Ej5fM, reason: not valid java name */
    public final float m4895getContainerWidthD9Ej5fM() {
        return ContainerWidth;
    }
}
