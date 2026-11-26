.class public final synthetic Lxh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lxh0;->b:I

    iput-object p2, p0, Lxh0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lxh0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lxh0;->b:I

    iget-object v1, p0, Lxh0;->d:Ljava/lang/Object;

    iget-object p0, p0, Lxh0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    check-cast v1, Landroidx/compose/runtime/MutableState;

    invoke-static {p0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt;->k(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/geometry/Offset;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/compose/material3/DrawerState;

    check-cast v1, Ly22;

    invoke-static {p0, v1}, Landroidx/compose/material3/NavigationDrawerKt;->v(Landroidx/compose/material3/DrawerState;Ly22;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    invoke-static {p0, v1}, Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;->b(Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;Ljava/lang/Object;)Landroidx/compose/runtime/tooling/ComposeStackTrace;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/compose/foundation/BasicTooltipState;

    check-cast v1, Ly22;

    invoke-static {v1, p0}, Landroidx/compose/foundation/BasicTooltipKt;->i(Ly22;Landroidx/compose/foundation/BasicTooltipState;)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
