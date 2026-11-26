.class public final Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I


# instance fields
.field private final actions:Ldm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldm3<",
            "Landroidx/compose/foundation/layout/RowScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final collapsedHeight:F

.field private final colors:Landroidx/compose/material3/TopAppBarColors;

.field private final expandedHeight:F

.field private final modifier:Landroidx/compose/ui/Modifier;

.field private final navigationIcon:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final scrollBehavior:Landroidx/compose/material3/TopAppBarScrollBehavior;

.field private final smallSubtitle:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final smallSubtitleTextStyle:Landroidx/compose/ui/text/TextStyle;

.field private final smallTitle:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final smallTitleTextStyle:Landroidx/compose/ui/text/TextStyle;

.field private final subtitle:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final subtitleTextStyle:Landroidx/compose/ui/text/TextStyle;

.field private final title:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final titleBottomPadding:F

.field private final titleHorizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

.field private final titleTextStyle:Landroidx/compose/ui/text/TextStyle;

.field private final windowInsets:Landroidx/compose/foundation/layout/WindowInsets;


# direct methods
.method private constructor <init>(Landroidx/compose/ui/Modifier;Lbm3;Landroidx/compose/ui/text/TextStyle;FLbm3;Landroidx/compose/ui/text/TextStyle;Lbm3;Landroidx/compose/ui/text/TextStyle;Lbm3;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/Alignment$Horizontal;Lbm3;Ldm3;FFLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/text/TextStyle;",
            "F",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Ldm3<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;FF",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Landroidx/compose/material3/TopAppBarColors;",
            "Landroidx/compose/material3/TopAppBarScrollBehavior;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->modifier:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->title:Lbm3;

    iput-object p3, p0, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->titleTextStyle:Landroidx/compose/ui/text/TextStyle;

    iput p4, p0, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->titleBottomPadding:F

    iput-object p5, p0, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->smallTitle:Lbm3;

    iput-object p6, p0, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->smallTitleTextStyle:Landroidx/compose/ui/text/TextStyle;

    iput-object p7, p0, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->subtitle:Lbm3;

    iput-object p8, p0, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->subtitleTextStyle:Landroidx/compose/ui/text/TextStyle;

    iput-object p9, p0, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->smallSubtitle:Lbm3;

    iput-object p10, p0, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->smallSubtitleTextStyle:Landroidx/compose/ui/text/TextStyle;

    iput-object p11, p0, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->titleHorizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    iput-object p12, p0, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->navigationIcon:Lbm3;

    iput-object p13, p0, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->actions:Ldm3;

    iput p14, p0, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->collapsedHeight:F

    iput p15, p0, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->expandedHeight:F

    move-object/from16 p1, p16

    iput-object p1, p0, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->windowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    move-object/from16 p1, p17

    iput-object p1, p0, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->colors:Landroidx/compose/material3/TopAppBarColors;

    move-object/from16 p1, p18

    iput-object p1, p0, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->scrollBehavior:Landroidx/compose/material3/TopAppBarScrollBehavior;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lbm3;Landroidx/compose/ui/text/TextStyle;FLbm3;Landroidx/compose/ui/text/TextStyle;Lbm3;Landroidx/compose/ui/text/TextStyle;Lbm3;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/Alignment$Horizontal;Lbm3;Ldm3;FFLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;Ljh2;)V
    .locals 0

    .line 46
    invoke-direct/range {p0 .. p18}, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;-><init>(Landroidx/compose/ui/Modifier;Lbm3;Landroidx/compose/ui/text/TextStyle;FLbm3;Landroidx/compose/ui/text/TextStyle;Lbm3;Landroidx/compose/ui/text/TextStyle;Lbm3;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/Alignment$Horizontal;Lbm3;Ldm3;FFLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;)V

    return-void
.end method


# virtual methods
.method public final getActions()Ldm3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldm3<",
            "Landroidx/compose/foundation/layout/RowScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->actions:Ldm3;

    return-object p0
.end method

.method public final getCollapsedHeight-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->collapsedHeight:F

    return p0
.end method

.method public final getColors()Landroidx/compose/material3/TopAppBarColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->colors:Landroidx/compose/material3/TopAppBarColors;

    return-object p0
.end method

.method public final getExpandedHeight-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->expandedHeight:F

    return p0
.end method

.method public final getModifier()Landroidx/compose/ui/Modifier;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->modifier:Landroidx/compose/ui/Modifier;

    return-object p0
.end method

.method public final getNavigationIcon()Lbm3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbm3<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->navigationIcon:Lbm3;

    return-object p0
.end method

.method public final getScrollBehavior()Landroidx/compose/material3/TopAppBarScrollBehavior;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->scrollBehavior:Landroidx/compose/material3/TopAppBarScrollBehavior;

    return-object p0
.end method

.method public final getSmallSubtitle()Lbm3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbm3<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->smallSubtitle:Lbm3;

    return-object p0
.end method

.method public final getSmallSubtitleTextStyle()Landroidx/compose/ui/text/TextStyle;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->smallSubtitleTextStyle:Landroidx/compose/ui/text/TextStyle;

    return-object p0
.end method

.method public final getSmallTitle()Lbm3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbm3<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->smallTitle:Lbm3;

    return-object p0
.end method

.method public final getSmallTitleTextStyle()Landroidx/compose/ui/text/TextStyle;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->smallTitleTextStyle:Landroidx/compose/ui/text/TextStyle;

    return-object p0
.end method

.method public final getSubtitle()Lbm3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbm3<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->subtitle:Lbm3;

    return-object p0
.end method

.method public final getSubtitleTextStyle()Landroidx/compose/ui/text/TextStyle;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->subtitleTextStyle:Landroidx/compose/ui/text/TextStyle;

    return-object p0
.end method

.method public final getTitle()Lbm3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbm3<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->title:Lbm3;

    return-object p0
.end method

.method public final getTitleBottomPadding-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->titleBottomPadding:F

    return p0
.end method

.method public final getTitleHorizontalAlignment()Landroidx/compose/ui/Alignment$Horizontal;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->titleHorizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    return-object p0
.end method

.method public final getTitleTextStyle()Landroidx/compose/ui/text/TextStyle;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->titleTextStyle:Landroidx/compose/ui/text/TextStyle;

    return-object p0
.end method

.method public final getWindowInsets()Landroidx/compose/foundation/layout/WindowInsets;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/TwoRowsTopAppBarOverrideScope;->windowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    return-object p0
.end method
