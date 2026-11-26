.class public final synthetic Lyo1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcm3;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lcm3;II)V
    .locals 0

    iput p4, p0, Lyo1;->b:I

    iput-object p1, p0, Lyo1;->c:Ljava/lang/Object;

    iput-object p2, p0, Lyo1;->d:Lcm3;

    iput p3, p0, Lyo1;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lyo1;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lyo1;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/material3/DrawerState;

    iget-object v1, p0, Lyo1;->d:Lcm3;

    check-cast v1, Ldm3;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget p0, p0, Lyo1;->e:I

    invoke-static {v0, v1, p0, p1, p2}, Landroidx/compose/material3/NavigationDrawerKt;->C(Landroidx/compose/material3/DrawerState;Ldm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lyo1;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/text/selection/SelectionManager;

    iget-object v1, p0, Lyo1;->d:Lcm3;

    check-cast v1, Lbm3;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget p0, p0, Lyo1;->e:I

    invoke-static {v0, v1, p0, p1, p2}, Landroidx/compose/foundation/text/ContextMenu_androidKt;->b(Landroidx/compose/foundation/text/selection/SelectionManager;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lyo1;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/text/selection/SelectionManager;

    iget-object v1, p0, Lyo1;->d:Lcm3;

    check-cast v1, Lbm3;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget p0, p0, Lyo1;->e:I

    invoke-static {v0, v1, p0, p1, p2}, Landroidx/compose/foundation/text/CommonContextMenuAreaKt;->g(Landroidx/compose/foundation/text/selection/SelectionManager;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
