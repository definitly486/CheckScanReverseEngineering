.class public final synthetic Leo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Leo;->b:I

    iput-object p1, p0, Leo;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Leo;->b:I

    iget-object p0, p0, Leo;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/transition/TransitionValues;

    check-cast p1, [I

    invoke-static {p0, p1}, Lyads/qm5;->a(Landroidx/transition/TransitionValues;[I)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/compose/material3/TopAppBarState;

    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    invoke-static {p0, p1}, Landroidx/compose/material3/AppBarKt;->u(Landroidx/compose/material3/TopAppBarState;Landroidx/compose/ui/unit/IntSize;)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
