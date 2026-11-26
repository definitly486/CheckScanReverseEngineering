.class public final synthetic Lbh5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lbh5;->b:I

    iput-object p2, p0, Lbh5;->c:Ljava/lang/Object;

    iput-object p3, p0, Lbh5;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lbh5;->b:I

    iget-object v1, p0, Lbh5;->d:Ljava/lang/Object;

    iget-object p0, p0, Lbh5;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lnl3;

    check-cast v1, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    check-cast p1, Landroidx/compose/ui/Modifier;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p0, v1, p1, p2, p3}, Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt;->b(Lnl3;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lch5;

    check-cast v1, Lch5$a;

    check-cast p1, Ljava/lang/Throwable;

    check-cast p2, Lj59;

    check-cast p3, Lo22;

    sget-object p1, Lch5;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object p2, v1, Lch5$a;->c:Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lch5;->unlock(Ljava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
