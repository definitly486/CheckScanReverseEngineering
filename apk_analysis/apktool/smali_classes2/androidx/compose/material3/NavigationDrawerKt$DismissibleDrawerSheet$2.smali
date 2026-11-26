.class final Landroidx/compose/material3/NavigationDrawerKt$DismissibleDrawerSheet$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/NavigationDrawerKt;->DismissibleDrawerSheet-Snr_uVM(Landroidx/compose/material3/DrawerState;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldm3<",
        "Landroidx/compose/material3/DrawerPredictiveBackState;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $content:Ldm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldm3<",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $drawerContainerColor:J

.field final synthetic $drawerContentColor:J

.field final synthetic $drawerShape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $drawerState:Landroidx/compose/material3/DrawerState;

.field final synthetic $drawerTonalElevation:F

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $windowInsets:Landroidx/compose/foundation/layout/WindowInsets;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/material3/DrawerState;Ldm3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJF",
            "Landroidx/compose/material3/DrawerState;",
            "Ldm3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/NavigationDrawerKt$DismissibleDrawerSheet$2;->$windowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p2, p0, Landroidx/compose/material3/NavigationDrawerKt$DismissibleDrawerSheet$2;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Landroidx/compose/material3/NavigationDrawerKt$DismissibleDrawerSheet$2;->$drawerShape:Landroidx/compose/ui/graphics/Shape;

    iput-wide p4, p0, Landroidx/compose/material3/NavigationDrawerKt$DismissibleDrawerSheet$2;->$drawerContainerColor:J

    iput-wide p6, p0, Landroidx/compose/material3/NavigationDrawerKt$DismissibleDrawerSheet$2;->$drawerContentColor:J

    iput p8, p0, Landroidx/compose/material3/NavigationDrawerKt$DismissibleDrawerSheet$2;->$drawerTonalElevation:F

    iput-object p9, p0, Landroidx/compose/material3/NavigationDrawerKt$DismissibleDrawerSheet$2;->$drawerState:Landroidx/compose/material3/DrawerState;

    iput-object p10, p0, Landroidx/compose/material3/NavigationDrawerKt$DismissibleDrawerSheet$2;->$content:Ldm3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroidx/compose/material3/DrawerState;)F
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/NavigationDrawerKt$DismissibleDrawerSheet$2;->invoke$lambda$1$lambda$0(Landroidx/compose/material3/DrawerState;)F

    move-result p0

    return p0
.end method

.method private static final invoke$lambda$1$lambda$0(Landroidx/compose/material3/DrawerState;)F
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/material3/DrawerState;->getAnchoredDraggableState$material3()Landroidx/compose/foundation/gestures/AnchoredDraggableState;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/AnchoredDraggableState;->getOffset()F

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 120
    check-cast p1, Landroidx/compose/material3/DrawerPredictiveBackState;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/NavigationDrawerKt$DismissibleDrawerSheet$2;->invoke(Landroidx/compose/material3/DrawerPredictiveBackState;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/material3/DrawerPredictiveBackState;Landroidx/compose/runtime/Composer;I)V
    .locals 14

    move-object/from16 v11, p2

    and-int/lit8 v0, p3, 0x6

    if-nez v0, :cond_1

    invoke-interface {v11, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p3, v0

    goto :goto_1

    :cond_1
    move/from16 v0, p3

    :goto_1
    and-int/lit8 v1, v0, 0x13

    const/16 v2, 0x12

    if-eq v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    and-int/lit8 v2, v0, 0x1

    invoke-interface {v11, v1, v2}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material3.DismissibleDrawerSheet.<anonymous> (NavigationDrawer.kt:732)"

    const v3, 0x60c3f72f

    invoke-static {v3, v0, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_3
    iget-object v1, p0, Landroidx/compose/material3/NavigationDrawerKt$DismissibleDrawerSheet$2;->$windowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v2, p0, Landroidx/compose/material3/NavigationDrawerKt$DismissibleDrawerSheet$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v3, p0, Landroidx/compose/material3/NavigationDrawerKt$DismissibleDrawerSheet$2;->$drawerShape:Landroidx/compose/ui/graphics/Shape;

    iget-wide v4, p0, Landroidx/compose/material3/NavigationDrawerKt$DismissibleDrawerSheet$2;->$drawerContainerColor:J

    iget-wide v6, p0, Landroidx/compose/material3/NavigationDrawerKt$DismissibleDrawerSheet$2;->$drawerContentColor:J

    iget v8, p0, Landroidx/compose/material3/NavigationDrawerKt$DismissibleDrawerSheet$2;->$drawerTonalElevation:F

    iget-object v9, p0, Landroidx/compose/material3/NavigationDrawerKt$DismissibleDrawerSheet$2;->$drawerState:Landroidx/compose/material3/DrawerState;

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    iget-object v10, p0, Landroidx/compose/material3/NavigationDrawerKt$DismissibleDrawerSheet$2;->$drawerState:Landroidx/compose/material3/DrawerState;

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v9, :cond_4

    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v12, v9, :cond_5

    :cond_4
    new-instance v12, Landroidx/compose/material3/u2;

    invoke-direct {v12, v10}, Landroidx/compose/material3/u2;-><init>(Landroidx/compose/material3/DrawerState;)V

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5
    move-object v9, v12

    check-cast v9, Landroidx/compose/material3/internal/FloatProducer;

    iget-object v10, p0, Landroidx/compose/material3/NavigationDrawerKt$DismissibleDrawerSheet$2;->$content:Ldm3;

    and-int/lit8 v12, v0, 0xe

    const/4 v13, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v13}, Landroidx/compose/material3/NavigationDrawerKt;->DrawerSheet-cm3T3N0(Landroidx/compose/material3/DrawerPredictiveBackState;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/material3/internal/FloatProducer;Ldm3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_6
    return-void

    :cond_7
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    return-void
.end method
