.class public final synthetic Lml1;
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

    iput p1, p0, Lml1;->b:I

    iput-object p2, p0, Lml1;->c:Ljava/lang/Object;

    iput-object p3, p0, Lml1;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lml1;->b:I

    iget-object v1, p0, Lml1;->d:Ljava/lang/Object;

    iget-object p0, p0, Lml1;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/g82;

    check-cast v1, Lyads/zo1;

    check-cast p1, Lyads/bp1;

    invoke-static {p0, v1, p1}, Lyads/g82;->b(Lyads/g82;Lyads/zo1;Lyads/bp1;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/compose/ui/input/pointer/PointerInputChange;

    check-cast v1, Ln07;

    check-cast p1, Landroidx/compose/foundation/GestureConnection;

    invoke-static {p0, v1, p1}, Landroidx/compose/foundation/ClickableKt;->f(Landroidx/compose/ui/input/pointer/PointerInputChange;Ln07;Landroidx/compose/foundation/GestureConnection;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
