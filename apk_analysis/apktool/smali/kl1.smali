.class public final synthetic Lkl1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lkl1;->b:I

    iput-object p2, p0, Lkl1;->c:Ljava/lang/Object;

    iput-object p3, p0, Lkl1;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lkl1;->b:I

    iget-object v1, p0, Lkl1;->d:Ljava/lang/Object;

    iget-object p0, p0, Lkl1;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/fs2;

    check-cast v1, Ljava/lang/String;

    check-cast p1, Lyads/ty1;

    invoke-static {p0, v1, p1}, Lyads/vy1;->a(Lyads/fs2;Ljava/lang/String;Lyads/ty1;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/g82;

    check-cast v1, Lyads/zo1;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, v1, p1}, Lyads/g82;->a(Lyads/g82;Lyads/zo1;Ljava/lang/String;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Ljava/util/List;

    check-cast v1, Landroidx/camera/camera2/impl/State3AControl;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p0, v1, p1}, Landroidx/camera/camera2/impl/State3AControl;->a(Ljava/util/List;Landroidx/camera/camera2/impl/State3AControl;Ljava/lang/Throwable;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    check-cast v1, Ln07;

    check-cast p1, Landroidx/compose/foundation/GestureConnection;

    invoke-static {p0, v1, p1}, Landroidx/compose/foundation/ClickableKt;->a(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Ln07;Landroidx/compose/foundation/GestureConnection;)Z

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
