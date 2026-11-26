package androidx.compose.material3.tokens;

import androidx.compose.foundation.shape.CornerSize;
import androidx.compose.ui.unit.Dp;

/* JADX INFO: loaded from: classes2.dex */
public final class ConnectedButtonGroupSmallTokens {
    public static final int $stable = 0;
    private static final CornerSize InnerCornerCornerSize;
    private static final CornerSize PressedInnerCornerCornerSize;
    private static final float SelectedInnerCornerCornerSizePercent;
    public static final ConnectedButtonGroupSmallTokens INSTANCE = new ConnectedButtonGroupSmallTokens();
    private static final float BetweenSpace = Dp.m9042constructorimpl(2.0f);
    private static final float ContainerHeight = Dp.m9042constructorimpl(40.0f);
    private static final ShapeKeyTokens ContainerShape = ShapeKeyTokens.CornerFull;

    static {
        ShapeTokens shapeTokens = ShapeTokens.INSTANCE;
        InnerCornerCornerSize = shapeTokens.getCornerValueSmall();
        PressedInnerCornerCornerSize = shapeTokens.getCornerValueExtraSmall();
        SelectedInnerCornerCornerSizePercent = 50.0f;
    }

    private ConnectedButtonGroupSmallTokens() {
    }

    /* JADX INFO: renamed from: getBetweenSpace-D9Ej5fM, reason: not valid java name */
    public final float m4678getBetweenSpaceD9Ej5fM() {
        return BetweenSpace;
    }

    /* JADX INFO: renamed from: getContainerHeight-D9Ej5fM, reason: not valid java name */
    public final float m4679getContainerHeightD9Ej5fM() {
        return ContainerHeight;
    }

    public final ShapeKeyTokens getContainerShape() {
        return ContainerShape;
    }

    public final CornerSize getInnerCornerCornerSize() {
        return InnerCornerCornerSize;
    }

    public final CornerSize getPressedInnerCornerCornerSize() {
        return PressedInnerCornerCornerSize;
    }

    public final float getSelectedInnerCornerCornerSizePercent() {
        return SelectedInnerCornerCornerSizePercent;
    }
}
