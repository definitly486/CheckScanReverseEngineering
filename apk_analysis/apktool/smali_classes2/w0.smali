.class public final synthetic Lw0;
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

    iput p2, p0, Lw0;->b:I

    iput-object p1, p0, Lw0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lw0;->b:I

    iget-object p0, p0, Lw0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/xu5;

    check-cast p1, Lyads/tf1;

    invoke-static {p0, p1}, Lyads/d62;->b(Lyads/xu5;Lyads/tf1;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lnl3;

    check-cast p1, Landroidx/compose/material3/SwipeToDismissBoxValue;

    invoke-static {p0, p1}, Landroidx/compose/material3/SwipeToDismissBoxState$Companion;->c(Lnl3;Landroidx/compose/material3/SwipeToDismissBoxValue;)Landroidx/compose/material3/SwipeToDismissBoxState;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/runtime/MutableState;

    check-cast p1, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/contextmenu/internal/PlatformDefaultTextContextMenuProviders_androidKt;->b(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/layout/LayoutCoordinates;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lx0;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lx0;->a(Lx0;Ljava/util/Map$Entry;)Ljava/lang/CharSequence;

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
