.class public final synthetic Lue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lue;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lue;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lyads/br0;

    invoke-static {p1}, Lyads/c32;->a(Lyads/br0;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/material3/SwipeToDismissBoxValue;

    invoke-static {p1}, Landroidx/compose/material3/SwipeToDismissBoxState;->a(Landroidx/compose/material3/SwipeToDismissBoxValue;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/camera/camera2/pipe/Result3A;

    invoke-static {p1}, Landroidx/camera/camera2/adapter/CameraControlAdapter;->a(Landroidx/camera/camera2/pipe/Result3A;)Ljava/lang/Void;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p1}, Landroidx/compose/foundation/gestures/AnchoredDraggableKt;->c(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
