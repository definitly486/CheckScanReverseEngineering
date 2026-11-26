.class public final synthetic Lqj2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p2, p0, Lqj2;->b:I

    iput-object p3, p0, Lqj2;->d:Ljava/lang/Object;

    iput-object p4, p0, Lqj2;->e:Ljava/lang/Object;

    iput p1, p0, Lqj2;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lqj2;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lqj2;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/material3/TimePickerState;

    iget-object v1, p0, Lqj2;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/material3/TimePickerColors;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget p0, p0, Lqj2;->c:I

    invoke-static {v0, v1, p0, p1, p2}, Landroidx/compose/material3/TimePickerKt;->o(Landroidx/compose/material3/TimePickerState;Landroidx/compose/material3/TimePickerColors;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lqj2;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lqj2;->e:Ljava/lang/Object;

    check-cast v1, Lbm3;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget p0, p0, Lqj2;->c:I

    invoke-static {v0, v1, p0, p1, p2}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->i(Landroidx/compose/ui/Modifier;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
