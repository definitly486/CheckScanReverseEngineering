.class public final Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;
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

.field private final titleHorizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

.field private final titleTextStyle:Landroidx/compose/ui/text/TextStyle;

.field private final windowInsets:Landroidx/compose/foundation/layout/WindowInsets;


# direct methods
.method private constructor <init>(Landroidx/compose/ui/Modifier;Lbm3;Landroidx/compose/ui/text/TextStyle;Lbm3;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/Alignment$Horizontal;Lbm3;Ldm3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;)V
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
            ">;F",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Landroidx/compose/material3/TopAppBarColors;",
            "Landroidx/compose/material3/TopAppBarScrollBehavior;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->modifier:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->title:Lbm3;

    iput-object p3, p0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->titleTextStyle:Landroidx/compose/ui/text/TextStyle;

    iput-object p4, p0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->subtitle:Lbm3;

    iput-object p5, p0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->subtitleTextStyle:Landroidx/compose/ui/text/TextStyle;

    iput-object p6, p0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->titleHorizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    iput-object p7, p0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->navigationIcon:Lbm3;

    iput-object p8, p0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->actions:Ldm3;

    iput p9, p0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->expandedHeight:F

    iput-object p10, p0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->windowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p11, p0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->colors:Landroidx/compose/material3/TopAppBarColors;

    iput-object p12, p0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->scrollBehavior:Landroidx/compose/material3/TopAppBarScrollBehavior;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lbm3;Landroidx/compose/ui/text/TextStyle;Lbm3;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/Alignment$Horizontal;Lbm3;Ldm3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;Ljh2;)V
    .locals 0

    .line 28
    invoke-direct/range {p0 .. p12}, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;-><init>(Landroidx/compose/ui/Modifier;Lbm3;Landroidx/compose/ui/text/TextStyle;Lbm3;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/Alignment$Horizontal;Lbm3;Ldm3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;)V

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

    iget-object p0, p0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->actions:Ldm3;

    return-object p0
.end method

.method public final getColors()Landroidx/compose/material3/TopAppBarColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->colors:Landroidx/compose/material3/TopAppBarColors;

    return-object p0
.end method

.method public final getExpandedHeight-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->expandedHeight:F

    return p0
.end method

.method public final getModifier()Landroidx/compose/ui/Modifier;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->modifier:Landroidx/compose/ui/Modifier;

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

    iget-object p0, p0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->navigationIcon:Lbm3;

    return-object p0
.end method

.method public final getScrollBehavior()Landroidx/compose/material3/TopAppBarScrollBehavior;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->scrollBehavior:Landroidx/compose/material3/TopAppBarScrollBehavior;

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

    iget-object p0, p0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->subtitle:Lbm3;

    return-object p0
.end method

.method public final getSubtitleTextStyle()Landroidx/compose/ui/text/TextStyle;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->subtitleTextStyle:Landroidx/compose/ui/text/TextStyle;

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

    iget-object p0, p0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->title:Lbm3;

    return-object p0
.end method

.method public final getTitleHorizontalAlignment()Landroidx/compose/ui/Alignment$Horizontal;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->titleHorizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    return-object p0
.end method

.method public final getTitleTextStyle()Landroidx/compose/ui/text/TextStyle;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->titleTextStyle:Landroidx/compose/ui/text/TextStyle;

    return-object p0
.end method

.method public final getWindowInsets()Landroidx/compose/foundation/layout/WindowInsets;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->windowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    return-object p0
.end method
