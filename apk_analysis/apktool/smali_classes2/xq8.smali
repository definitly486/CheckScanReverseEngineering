.class public final synthetic Lxq8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lxq8;->b:I

    iput-object p1, p0, Lxq8;->c:Ljava/lang/Object;

    iput-object p2, p0, Lxq8;->d:Ljava/lang/Object;

    iput-object p3, p0, Lxq8;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lxq8;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lxq8;->c:Ljava/lang/Object;

    check-cast v0, Lyads/bn1;

    iget-object v1, p0, Lxq8;->d:Ljava/lang/Object;

    check-cast v1, Lyads/ek1;

    iget-object p0, p0, Lxq8;->e:Ljava/lang/Object;

    check-cast p0, Lyads/fs2;

    invoke-static {v0, v1, p0, p1}, Lyads/jk1;->a(Lyads/bn1;Lyads/ek1;Lyads/fs2;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lxq8;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/material3/TextFieldLabelPosition;

    iget-object v1, p0, Lxq8;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/State;

    iget-object p0, p0, Lxq8;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/MutableState;

    check-cast p1, Landroidx/compose/ui/geometry/Size;

    invoke-static {v0, v1, p0, p1}, Landroidx/compose/material3/internal/TextFieldImplKt;->i(Landroidx/compose/material3/TextFieldLabelPosition;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/geometry/Size;)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
