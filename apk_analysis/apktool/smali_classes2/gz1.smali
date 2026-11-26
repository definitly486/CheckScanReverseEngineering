.class public final synthetic Lgz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Lcm3;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcm3;III)V
    .locals 0

    iput p8, p0, Lgz1;->b:I

    iput-object p1, p0, Lgz1;->e:Ljava/lang/Object;

    iput-object p2, p0, Lgz1;->f:Ljava/lang/Object;

    iput-object p3, p0, Lgz1;->g:Ljava/lang/Object;

    iput-object p4, p0, Lgz1;->h:Ljava/lang/Object;

    iput-object p5, p0, Lgz1;->i:Lcm3;

    iput p6, p0, Lgz1;->c:I

    iput p7, p0, Lgz1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lgz1;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lgz1;->e:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/compose/material3/ColorScheme;

    iget-object v0, p0, Lgz1;->f:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroidx/compose/material3/MotionScheme;

    iget-object v0, p0, Lgz1;->g:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroidx/compose/material3/Shapes;

    iget-object v0, p0, Lgz1;->h:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroidx/compose/material3/Typography;

    iget-object v0, p0, Lgz1;->i:Lcm3;

    move-object v5, v0

    check-cast v5, Lbm3;

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget v6, p0, Lgz1;->c:I

    iget v7, p0, Lgz1;->d:I

    invoke-static/range {v1 .. v9}, Landroidx/compose/material3/MaterialThemeKt;->b(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/MotionScheme;Landroidx/compose/material3/Shapes;Landroidx/compose/material3/Typography;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lgz1;->e:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/window/PopupPositionProvider;

    iget-object v0, p0, Lgz1;->f:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lll3;

    iget-object v0, p0, Lgz1;->g:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroidx/compose/ui/Modifier;

    iget-object v0, p0, Lgz1;->h:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroidx/compose/foundation/contextmenu/ContextMenuColors;

    iget-object v0, p0, Lgz1;->i:Lcm3;

    move-object v5, v0

    check-cast v5, Lnl3;

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget v6, p0, Lgz1;->c:I

    iget v7, p0, Lgz1;->d:I

    invoke-static/range {v1 .. v9}, Landroidx/compose/foundation/contextmenu/ContextMenuUiKt;->g(Landroidx/compose/ui/window/PopupPositionProvider;Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/contextmenu/ContextMenuColors;Lnl3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
