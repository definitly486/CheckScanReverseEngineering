.class final Landroidx/compose/material3/NavigationItemKt$AnimatedNavigationItem$2$styledLabel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/NavigationItemKt;->AnimatedNavigationItem-DQd_Gtc(ZLll3;Lbm3;Landroidx/compose/ui/graphics/Shape;FLandroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;FFFFFFFFLandroidx/compose/material3/NavigationItemColors;Landroidx/compose/ui/Modifier;ZLbm3;ILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbm3<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $colors:Landroidx/compose/material3/NavigationItemColors;

.field final synthetic $enabled:Z

.field final synthetic $label:Lbm3;
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

.field final synthetic $selected:Z

.field final synthetic $textStyle$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/text/TextStyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLandroidx/compose/material3/NavigationItemColors;ZLbm3;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/material3/NavigationItemColors;",
            "Z",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/text/TextStyle;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Landroidx/compose/material3/NavigationItemKt$AnimatedNavigationItem$2$styledLabel$1;->$selected:Z

    iput-object p2, p0, Landroidx/compose/material3/NavigationItemKt$AnimatedNavigationItem$2$styledLabel$1;->$colors:Landroidx/compose/material3/NavigationItemColors;

    iput-boolean p3, p0, Landroidx/compose/material3/NavigationItemKt$AnimatedNavigationItem$2$styledLabel$1;->$enabled:Z

    iput-object p4, p0, Landroidx/compose/material3/NavigationItemKt$AnimatedNavigationItem$2$styledLabel$1;->$label:Lbm3;

    iput-object p5, p0, Landroidx/compose/material3/NavigationItemKt$AnimatedNavigationItem$2$styledLabel$1;->$textStyle$delegate:Landroidx/compose/runtime/State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 65
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/NavigationItemKt$AnimatedNavigationItem$2$styledLabel$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 10

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p2, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.AnimatedNavigationItem.<anonymous>.<anonymous> (NavigationItem.kt:387)"

    const v2, 0x156f40d

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    iget-boolean v3, p0, Landroidx/compose/material3/NavigationItemKt$AnimatedNavigationItem$2$styledLabel$1;->$selected:Z

    iget-object p2, p0, Landroidx/compose/material3/NavigationItemKt$AnimatedNavigationItem$2$styledLabel$1;->$textStyle$delegate:Landroidx/compose/runtime/State;

    invoke-static {p2}, Landroidx/compose/material3/NavigationItemKt;->access$AnimatedNavigationItem_DQd_Gtc$lambda$26$lambda$19(Landroidx/compose/runtime/State;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v4

    iget-object v5, p0, Landroidx/compose/material3/NavigationItemKt$AnimatedNavigationItem$2$styledLabel$1;->$colors:Landroidx/compose/material3/NavigationItemColors;

    iget-boolean v6, p0, Landroidx/compose/material3/NavigationItemKt$AnimatedNavigationItem$2$styledLabel$1;->$enabled:Z

    iget-object v7, p0, Landroidx/compose/material3/NavigationItemKt$AnimatedNavigationItem$2$styledLabel$1;->$label:Lbm3;

    const/4 v9, 0x0

    move-object v8, p1

    invoke-static/range {v3 .. v9}, Landroidx/compose/material3/NavigationItemKt;->access$StyledLabel(ZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/material3/NavigationItemColors;ZLbm3;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    return-void

    :cond_3
    move-object v8, p1

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    return-void
.end method
