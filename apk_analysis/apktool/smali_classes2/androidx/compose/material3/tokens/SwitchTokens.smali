.class public final Landroidx/compose/material3/tokens/SwitchTokens;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I

.field private static final DisabledSelectedHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final DisabledSelectedHandleOpacity:F

.field private static final DisabledSelectedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final DisabledSelectedIconOpacity:F

.field private static final DisabledSelectedTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final DisabledTrackOpacity:F

.field private static final DisabledUnselectedHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final DisabledUnselectedHandleOpacity:F

.field private static final DisabledUnselectedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final DisabledUnselectedIconOpacity:F

.field private static final DisabledUnselectedTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final DisabledUnselectedTrackOutlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final FocusIndicatorColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final HandleShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field public static final INSTANCE:Landroidx/compose/material3/tokens/SwitchTokens;

.field private static final IconHandleHeight:F

.field private static final IconHandleWidth:F

.field private static final PressedHandleHeight:F

.field private static final PressedHandleWidth:F

.field private static final SelectedFocusHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final SelectedFocusIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final SelectedFocusTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final SelectedHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final SelectedHandleHeight:F

.field private static final SelectedHandleWidth:F

.field private static final SelectedHoverHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final SelectedHoverIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final SelectedHoverTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final SelectedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final SelectedIconSize:F

.field private static final SelectedPressedHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final SelectedPressedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final SelectedPressedTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final SelectedTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final StateLayerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final StateLayerSize:F

.field private static final TrackHeight:F

.field private static final TrackOutlineWidth:F

.field private static final TrackShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final TrackWidth:F

.field private static final UnselectedFocusHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final UnselectedFocusIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final UnselectedFocusTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final UnselectedFocusTrackOutlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final UnselectedHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final UnselectedHandleHeight:F

.field private static final UnselectedHandleWidth:F

.field private static final UnselectedHoverHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final UnselectedHoverIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final UnselectedHoverTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final UnselectedHoverTrackOutlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final UnselectedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final UnselectedIconSize:F

.field private static final UnselectedPressedHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final UnselectedPressedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final UnselectedPressedTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final UnselectedPressedTrackOutlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final UnselectedTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final UnselectedTrackOutlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Landroidx/compose/material3/tokens/SwitchTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/SwitchTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/SwitchTokens;->INSTANCE:Landroidx/compose/material3/tokens/SwitchTokens;

    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Surface:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/SwitchTokens;->DisabledSelectedHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Landroidx/compose/material3/tokens/SwitchTokens;->DisabledSelectedHandleOpacity:F

    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnSurface:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/SwitchTokens;->DisabledSelectedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    const v1, 0x3ec28f5c    # 0.38f

    sput v1, Landroidx/compose/material3/tokens/SwitchTokens;->DisabledSelectedIconOpacity:F

    sput-object v0, Landroidx/compose/material3/tokens/SwitchTokens;->DisabledSelectedTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    const v2, 0x3df5c28f    # 0.12f

    sput v2, Landroidx/compose/material3/tokens/SwitchTokens;->DisabledTrackOpacity:F

    sput-object v0, Landroidx/compose/material3/tokens/SwitchTokens;->DisabledUnselectedHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput v1, Landroidx/compose/material3/tokens/SwitchTokens;->DisabledUnselectedHandleOpacity:F

    sget-object v2, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->SurfaceContainerHighest:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v2, Landroidx/compose/material3/tokens/SwitchTokens;->DisabledUnselectedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput v1, Landroidx/compose/material3/tokens/SwitchTokens;->DisabledUnselectedIconOpacity:F

    sput-object v2, Landroidx/compose/material3/tokens/SwitchTokens;->DisabledUnselectedTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/SwitchTokens;->DisabledUnselectedTrackOutlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Secondary:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/SwitchTokens;->FocusIndicatorColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sget-object v0, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerFull:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/SwitchTokens;->HandleShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    sput v3, Landroidx/compose/material3/tokens/SwitchTokens;->PressedHandleHeight:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/tokens/SwitchTokens;->PressedHandleWidth:F

    sget-object v1, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->PrimaryContainer:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v1, Landroidx/compose/material3/tokens/SwitchTokens;->SelectedFocusHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sget-object v3, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnPrimaryContainer:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v3, Landroidx/compose/material3/tokens/SwitchTokens;->SelectedFocusIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sget-object v4, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Primary:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v4, Landroidx/compose/material3/tokens/SwitchTokens;->SelectedFocusTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sget-object v5, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnPrimary:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v5, Landroidx/compose/material3/tokens/SwitchTokens;->SelectedHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    sput v6, Landroidx/compose/material3/tokens/SwitchTokens;->SelectedHandleHeight:F

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    sput v6, Landroidx/compose/material3/tokens/SwitchTokens;->SelectedHandleWidth:F

    sput-object v1, Landroidx/compose/material3/tokens/SwitchTokens;->SelectedHoverHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v3, Landroidx/compose/material3/tokens/SwitchTokens;->SelectedHoverIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v4, Landroidx/compose/material3/tokens/SwitchTokens;->SelectedHoverTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v3, Landroidx/compose/material3/tokens/SwitchTokens;->SelectedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    sput v7, Landroidx/compose/material3/tokens/SwitchTokens;->SelectedIconSize:F

    sput-object v1, Landroidx/compose/material3/tokens/SwitchTokens;->SelectedPressedHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v3, Landroidx/compose/material3/tokens/SwitchTokens;->SelectedPressedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v4, Landroidx/compose/material3/tokens/SwitchTokens;->SelectedPressedTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v4, Landroidx/compose/material3/tokens/SwitchTokens;->SelectedTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/SwitchTokens;->StateLayerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/tokens/SwitchTokens;->StateLayerSize:F

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/tokens/SwitchTokens;->TrackHeight:F

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/tokens/SwitchTokens;->TrackOutlineWidth:F

    sput-object v0, Landroidx/compose/material3/tokens/SwitchTokens;->TrackShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    const/high16 v0, 0x42500000    # 52.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/SwitchTokens;->TrackWidth:F

    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnSurfaceVariant:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedFocusHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v2, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedFocusIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v2, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedFocusTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sget-object v1, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Outline:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v1, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedFocusTrackOutlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v1, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    sput v3, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedHandleHeight:F

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    sput v3, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedHandleWidth:F

    sput-object v0, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedHoverHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v2, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedHoverIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v2, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedHoverTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v1, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedHoverTrackOutlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v2, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    sput v3, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedIconSize:F

    sput-object v0, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedPressedHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v2, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedPressedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v2, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedPressedTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v1, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedPressedTrackOutlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v2, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v1, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedTrackOutlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/SwitchTokens;->IconHandleHeight:F

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/SwitchTokens;->IconHandleWidth:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDisabledSelectedHandleColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->DisabledSelectedHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getDisabledSelectedHandleOpacity()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/SwitchTokens;->DisabledSelectedHandleOpacity:F

    return p0
.end method

.method public final getDisabledSelectedIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->DisabledSelectedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getDisabledSelectedIconOpacity()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/SwitchTokens;->DisabledSelectedIconOpacity:F

    return p0
.end method

.method public final getDisabledSelectedTrackColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->DisabledSelectedTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getDisabledTrackOpacity()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/SwitchTokens;->DisabledTrackOpacity:F

    return p0
.end method

.method public final getDisabledUnselectedHandleColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->DisabledUnselectedHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getDisabledUnselectedHandleOpacity()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/SwitchTokens;->DisabledUnselectedHandleOpacity:F

    return p0
.end method

.method public final getDisabledUnselectedIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->DisabledUnselectedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getDisabledUnselectedIconOpacity()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/SwitchTokens;->DisabledUnselectedIconOpacity:F

    return p0
.end method

.method public final getDisabledUnselectedTrackColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->DisabledUnselectedTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getDisabledUnselectedTrackOutlineColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->DisabledUnselectedTrackOutlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getFocusIndicatorColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->FocusIndicatorColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getHandleShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->HandleShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    return-object p0
.end method

.method public final getIconHandleHeight-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/SwitchTokens;->IconHandleHeight:F

    return p0
.end method

.method public final getIconHandleWidth-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/SwitchTokens;->IconHandleWidth:F

    return p0
.end method

.method public final getPressedHandleHeight-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/SwitchTokens;->PressedHandleHeight:F

    return p0
.end method

.method public final getPressedHandleWidth-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/SwitchTokens;->PressedHandleWidth:F

    return p0
.end method

.method public final getSelectedFocusHandleColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->SelectedFocusHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getSelectedFocusIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->SelectedFocusIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getSelectedFocusTrackColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->SelectedFocusTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getSelectedHandleColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->SelectedHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getSelectedHandleHeight-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/SwitchTokens;->SelectedHandleHeight:F

    return p0
.end method

.method public final getSelectedHandleWidth-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/SwitchTokens;->SelectedHandleWidth:F

    return p0
.end method

.method public final getSelectedHoverHandleColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->SelectedHoverHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getSelectedHoverIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->SelectedHoverIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getSelectedHoverTrackColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->SelectedHoverTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getSelectedIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->SelectedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getSelectedIconSize-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/SwitchTokens;->SelectedIconSize:F

    return p0
.end method

.method public final getSelectedPressedHandleColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->SelectedPressedHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getSelectedPressedIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->SelectedPressedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getSelectedPressedTrackColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->SelectedPressedTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getSelectedTrackColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->SelectedTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getStateLayerShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->StateLayerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    return-object p0
.end method

.method public final getStateLayerSize-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/SwitchTokens;->StateLayerSize:F

    return p0
.end method

.method public final getTrackHeight-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/SwitchTokens;->TrackHeight:F

    return p0
.end method

.method public final getTrackOutlineWidth-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/SwitchTokens;->TrackOutlineWidth:F

    return p0
.end method

.method public final getTrackShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->TrackShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    return-object p0
.end method

.method public final getTrackWidth-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/SwitchTokens;->TrackWidth:F

    return p0
.end method

.method public final getUnselectedFocusHandleColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedFocusHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getUnselectedFocusIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedFocusIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getUnselectedFocusTrackColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedFocusTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getUnselectedFocusTrackOutlineColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedFocusTrackOutlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getUnselectedHandleColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getUnselectedHandleHeight-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedHandleHeight:F

    return p0
.end method

.method public final getUnselectedHandleWidth-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedHandleWidth:F

    return p0
.end method

.method public final getUnselectedHoverHandleColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedHoverHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getUnselectedHoverIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedHoverIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getUnselectedHoverTrackColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedHoverTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getUnselectedHoverTrackOutlineColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedHoverTrackOutlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getUnselectedIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getUnselectedIconSize-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedIconSize:F

    return p0
.end method

.method public final getUnselectedPressedHandleColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedPressedHandleColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getUnselectedPressedIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedPressedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getUnselectedPressedTrackColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedPressedTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getUnselectedPressedTrackOutlineColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedPressedTrackOutlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getUnselectedTrackColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedTrackColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getUnselectedTrackOutlineColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SwitchTokens;->UnselectedTrackOutlineColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method
