package androidx.compose.material3.tokens;

import androidx.compose.ui.unit.Dp;

/* JADX INFO: loaded from: classes2.dex */
public final class SliderTokens {
    public static final int $stable = 0;
    private static final ShapeKeyTokens ActiveHandleShape;
    private static final float ActiveHandleTrailingSpace;
    private static final float ActiveHandleWidth;
    private static final ColorSchemeKeyTokens ActiveTrackColor;
    private static final float ActiveTrackHeight;
    private static final ShapeKeyTokens ActiveTrackShape;
    private static final ShapeKeyTokens ActiveTrackShapeLeading;
    private static final ColorSchemeKeyTokens DisabledActiveTrackColor;
    private static final float DisabledActiveTrackOpacity;
    private static final ColorSchemeKeyTokens DisabledHandleColor;
    private static final float DisabledHandleOpacity;
    private static final float DisabledHandleWidth;
    private static final ColorSchemeKeyTokens DisabledInactiveTrackColor;
    private static final float DisabledInactiveTrackOpacity;
    private static final ColorSchemeKeyTokens DisabledStopColor;
    private static final ColorSchemeKeyTokens FocusActiveTrackColor;
    private static final float FocusHandleWidth;
    private static final ColorSchemeKeyTokens FocusInactiveTrackColor;
    private static final ColorSchemeKeyTokens FocusStopColor;
    private static final ColorSchemeKeyTokens HandleColor;
    private static final float HandleHeight;
    private static final ShapeKeyTokens HandleShape;
    private static final float HandleWidth;
    private static final ColorSchemeKeyTokens HoverHandleColor;
    private static final float HoverHandleWidth;
    private static final ColorSchemeKeyTokens HoverStopColor;
    private static final float InactiveContainerOpacity;
    private static final ColorSchemeKeyTokens InactiveTrackColor;
    private static final float InactiveTrackHeight;
    private static final ShapeKeyTokens InactiveTrackShape;
    private static final ColorSchemeKeyTokens LabelContainerColor;
    private static final ColorSchemeKeyTokens LabelTextColor;
    private static final ColorSchemeKeyTokens PressedActiveTrackColor;
    private static final ColorSchemeKeyTokens PressedHandleColor;
    private static final float PressedHandleWidth;
    private static final ColorSchemeKeyTokens PressedInactiveTrackColor;
    private static final ColorSchemeKeyTokens PressedStopColor;
    private static final ColorSchemeKeyTokens SliderActiveHandleColor;
    private static final ColorSchemeKeyTokens StopIndicatorColor;
    private static final ColorSchemeKeyTokens StopIndicatorColorSelected;
    private static final ShapeKeyTokens StopIndicatorShape;
    private static final float StopIndicatorSize;
    private static final float StopIndicatorTrailingSpace;
    private static final float ValueIndicatorActiveBottomSpace;
    private static final ColorSchemeKeyTokens ValueIndicatorContainerColor;
    private static final ColorSchemeKeyTokens ValueIndicatorLabelTextColor;
    private static final TypographyKeyTokens ValueIndicatorLabelTextFont;
    public static final SliderTokens INSTANCE = new SliderTokens();
    private static final float ActiveContainerOpacity = 1.0f;
    private static final float ActiveHandleHeight = Dp.m9042constructorimpl(44.0f);
    private static final float ActiveHandleLeadingSpace = Dp.m9042constructorimpl(6.0f);
    private static final float ActiveHandlePadding = Dp.m9042constructorimpl(6.0f);

    static {
        ShapeKeyTokens shapeKeyTokens = ShapeKeyTokens.CornerFull;
        ActiveHandleShape = shapeKeyTokens;
        ActiveHandleTrailingSpace = Dp.m9042constructorimpl(6.0f);
        ActiveHandleWidth = Dp.m9042constructorimpl(4.0f);
        ColorSchemeKeyTokens colorSchemeKeyTokens = ColorSchemeKeyTokens.Primary;
        ActiveTrackColor = colorSchemeKeyTokens;
        ActiveTrackHeight = Dp.m9042constructorimpl(16.0f);
        ActiveTrackShape = shapeKeyTokens;
        ActiveTrackShapeLeading = shapeKeyTokens;
        ColorSchemeKeyTokens colorSchemeKeyTokens2 = ColorSchemeKeyTokens.OnSurface;
        DisabledActiveTrackColor = colorSchemeKeyTokens2;
        DisabledActiveTrackOpacity = 0.38f;
        DisabledHandleColor = colorSchemeKeyTokens2;
        DisabledHandleOpacity = 0.38f;
        DisabledHandleWidth = Dp.m9042constructorimpl(4.0f);
        DisabledInactiveTrackColor = colorSchemeKeyTokens2;
        DisabledInactiveTrackOpacity = 0.12f;
        DisabledStopColor = colorSchemeKeyTokens2;
        FocusActiveTrackColor = colorSchemeKeyTokens;
        FocusHandleWidth = Dp.m9042constructorimpl(2.0f);
        ColorSchemeKeyTokens colorSchemeKeyTokens3 = ColorSchemeKeyTokens.SecondaryContainer;
        FocusInactiveTrackColor = colorSchemeKeyTokens3;
        FocusStopColor = colorSchemeKeyTokens;
        HandleColor = colorSchemeKeyTokens;
        HandleHeight = Dp.m9042constructorimpl(44.0f);
        HandleShape = shapeKeyTokens;
        HandleWidth = Dp.m9042constructorimpl(4.0f);
        HoverHandleColor = colorSchemeKeyTokens;
        HoverHandleWidth = Dp.m9042constructorimpl(4.0f);
        HoverStopColor = colorSchemeKeyTokens;
        InactiveContainerOpacity = 1.0f;
        InactiveTrackColor = colorSchemeKeyTokens3;
        InactiveTrackHeight = Dp.m9042constructorimpl(16.0f);
        InactiveTrackShape = shapeKeyTokens;
        LabelContainerColor = colorSchemeKeyTokens;
        ColorSchemeKeyTokens colorSchemeKeyTokens4 = ColorSchemeKeyTokens.InverseOnSurface;
        LabelTextColor = colorSchemeKeyTokens4;
        PressedActiveTrackColor = colorSchemeKeyTokens;
        PressedHandleColor = colorSchemeKeyTokens;
        PressedHandleWidth = Dp.m9042constructorimpl(2.0f);
        PressedInactiveTrackColor = colorSchemeKeyTokens3;
        PressedStopColor = colorSchemeKeyTokens;
        SliderActiveHandleColor = colorSchemeKeyTokens;
        StopIndicatorColor = colorSchemeKeyTokens3;
        StopIndicatorColorSelected = colorSchemeKeyTokens3;
        StopIndicatorShape = shapeKeyTokens;
        StopIndicatorSize = Dp.m9042constructorimpl(4.0f);
        StopIndicatorTrailingSpace = Dp.m9042constructorimpl(6.0f);
        ValueIndicatorActiveBottomSpace = Dp.m9042constructorimpl(12.0f);
        ValueIndicatorContainerColor = ColorSchemeKeyTokens.InverseSurface;
        ValueIndicatorLabelTextColor = colorSchemeKeyTokens4;
        ValueIndicatorLabelTextFont = TypographyKeyTokens.LabelLarge;
    }

    private SliderTokens() {
    }

    public final float getActiveContainerOpacity() {
        return ActiveContainerOpacity;
    }

    /* JADX INFO: renamed from: getActiveHandleHeight-D9Ej5fM, reason: not valid java name */
    public final float m5090getActiveHandleHeightD9Ej5fM() {
        return ActiveHandleHeight;
    }

    /* JADX INFO: renamed from: getActiveHandleLeadingSpace-D9Ej5fM, reason: not valid java name */
    public final float m5091getActiveHandleLeadingSpaceD9Ej5fM() {
        return ActiveHandleLeadingSpace;
    }

    /* JADX INFO: renamed from: getActiveHandlePadding-D9Ej5fM, reason: not valid java name */
    public final float m5092getActiveHandlePaddingD9Ej5fM() {
        return ActiveHandlePadding;
    }

    public final ShapeKeyTokens getActiveHandleShape() {
        return ActiveHandleShape;
    }

    /* JADX INFO: renamed from: getActiveHandleTrailingSpace-D9Ej5fM, reason: not valid java name */
    public final float m5093getActiveHandleTrailingSpaceD9Ej5fM() {
        return ActiveHandleTrailingSpace;
    }

    /* JADX INFO: renamed from: getActiveHandleWidth-D9Ej5fM, reason: not valid java name */
    public final float m5094getActiveHandleWidthD9Ej5fM() {
        return ActiveHandleWidth;
    }

    public final ColorSchemeKeyTokens getActiveTrackColor() {
        return ActiveTrackColor;
    }

    /* JADX INFO: renamed from: getActiveTrackHeight-D9Ej5fM, reason: not valid java name */
    public final float m5095getActiveTrackHeightD9Ej5fM() {
        return ActiveTrackHeight;
    }

    public final ShapeKeyTokens getActiveTrackShape() {
        return ActiveTrackShape;
    }

    public final ShapeKeyTokens getActiveTrackShapeLeading() {
        return ActiveTrackShapeLeading;
    }

    public final ColorSchemeKeyTokens getDisabledActiveTrackColor() {
        return DisabledActiveTrackColor;
    }

    public final float getDisabledActiveTrackOpacity() {
        return DisabledActiveTrackOpacity;
    }

    public final ColorSchemeKeyTokens getDisabledHandleColor() {
        return DisabledHandleColor;
    }

    public final float getDisabledHandleOpacity() {
        return DisabledHandleOpacity;
    }

    /* JADX INFO: renamed from: getDisabledHandleWidth-D9Ej5fM, reason: not valid java name */
    public final float m5096getDisabledHandleWidthD9Ej5fM() {
        return DisabledHandleWidth;
    }

    public final ColorSchemeKeyTokens getDisabledInactiveTrackColor() {
        return DisabledInactiveTrackColor;
    }

    public final float getDisabledInactiveTrackOpacity() {
        return DisabledInactiveTrackOpacity;
    }

    public final ColorSchemeKeyTokens getDisabledStopColor() {
        return DisabledStopColor;
    }

    public final ColorSchemeKeyTokens getFocusActiveTrackColor() {
        return FocusActiveTrackColor;
    }

    /* JADX INFO: renamed from: getFocusHandleWidth-D9Ej5fM, reason: not valid java name */
    public final float m5097getFocusHandleWidthD9Ej5fM() {
        return FocusHandleWidth;
    }

    public final ColorSchemeKeyTokens getFocusInactiveTrackColor() {
        return FocusInactiveTrackColor;
    }

    public final ColorSchemeKeyTokens getFocusStopColor() {
        return FocusStopColor;
    }

    public final ColorSchemeKeyTokens getHandleColor() {
        return HandleColor;
    }

    /* JADX INFO: renamed from: getHandleHeight-D9Ej5fM, reason: not valid java name */
    public final float m5098getHandleHeightD9Ej5fM() {
        return HandleHeight;
    }

    public final ShapeKeyTokens getHandleShape() {
        return HandleShape;
    }

    /* JADX INFO: renamed from: getHandleWidth-D9Ej5fM, reason: not valid java name */
    public final float m5099getHandleWidthD9Ej5fM() {
        return HandleWidth;
    }

    public final ColorSchemeKeyTokens getHoverHandleColor() {
        return HoverHandleColor;
    }

    /* JADX INFO: renamed from: getHoverHandleWidth-D9Ej5fM, reason: not valid java name */
    public final float m5100getHoverHandleWidthD9Ej5fM() {
        return HoverHandleWidth;
    }

    public final ColorSchemeKeyTokens getHoverStopColor() {
        return HoverStopColor;
    }

    public final float getInactiveContainerOpacity() {
        return InactiveContainerOpacity;
    }

    public final ColorSchemeKeyTokens getInactiveTrackColor() {
        return InactiveTrackColor;
    }

    /* JADX INFO: renamed from: getInactiveTrackHeight-D9Ej5fM, reason: not valid java name */
    public final float m5101getInactiveTrackHeightD9Ej5fM() {
        return InactiveTrackHeight;
    }

    public final ShapeKeyTokens getInactiveTrackShape() {
        return InactiveTrackShape;
    }

    public final ColorSchemeKeyTokens getLabelContainerColor() {
        return LabelContainerColor;
    }

    public final ColorSchemeKeyTokens getLabelTextColor() {
        return LabelTextColor;
    }

    public final ColorSchemeKeyTokens getPressedActiveTrackColor() {
        return PressedActiveTrackColor;
    }

    public final ColorSchemeKeyTokens getPressedHandleColor() {
        return PressedHandleColor;
    }

    /* JADX INFO: renamed from: getPressedHandleWidth-D9Ej5fM, reason: not valid java name */
    public final float m5102getPressedHandleWidthD9Ej5fM() {
        return PressedHandleWidth;
    }

    public final ColorSchemeKeyTokens getPressedInactiveTrackColor() {
        return PressedInactiveTrackColor;
    }

    public final ColorSchemeKeyTokens getPressedStopColor() {
        return PressedStopColor;
    }

    public final ColorSchemeKeyTokens getSliderActiveHandleColor() {
        return SliderActiveHandleColor;
    }

    public final ColorSchemeKeyTokens getStopIndicatorColor() {
        return StopIndicatorColor;
    }

    public final ColorSchemeKeyTokens getStopIndicatorColorSelected() {
        return StopIndicatorColorSelected;
    }

    public final ShapeKeyTokens getStopIndicatorShape() {
        return StopIndicatorShape;
    }

    /* JADX INFO: renamed from: getStopIndicatorSize-D9Ej5fM, reason: not valid java name */
    public final float m5103getStopIndicatorSizeD9Ej5fM() {
        return StopIndicatorSize;
    }

    /* JADX INFO: renamed from: getStopIndicatorTrailingSpace-D9Ej5fM, reason: not valid java name */
    public final float m5104getStopIndicatorTrailingSpaceD9Ej5fM() {
        return StopIndicatorTrailingSpace;
    }

    /* JADX INFO: renamed from: getValueIndicatorActiveBottomSpace-D9Ej5fM, reason: not valid java name */
    public final float m5105getValueIndicatorActiveBottomSpaceD9Ej5fM() {
        return ValueIndicatorActiveBottomSpace;
    }

    public final ColorSchemeKeyTokens getValueIndicatorContainerColor() {
        return ValueIndicatorContainerColor;
    }

    public final ColorSchemeKeyTokens getValueIndicatorLabelTextColor() {
        return ValueIndicatorLabelTextColor;
    }

    public final TypographyKeyTokens getValueIndicatorLabelTextFont() {
        return ValueIndicatorLabelTextFont;
    }
}
