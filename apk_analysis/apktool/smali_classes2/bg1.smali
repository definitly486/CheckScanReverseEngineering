.class public final synthetic Lbg1;
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

    iput p1, p0, Lbg1;->b:I

    iput-object p2, p0, Lbg1;->c:Ljava/lang/Object;

    iput-object p3, p0, Lbg1;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lbg1;->b:I

    iget-object v1, p0, Lbg1;->d:Ljava/lang/Object;

    iget-object p0, p0, Lbg1;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/w41;

    check-cast v1, Lyads/tt;

    check-cast p1, Landroid/view/View;

    invoke-static {p0, v1, p1}, Lyads/tq;->b(Lyads/w41;Lyads/tt;Landroid/view/View;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/compose/material3/internal/MutableWindowInsets;

    check-cast v1, Landroidx/compose/foundation/layout/WindowInsets;

    check-cast p1, Landroidx/compose/foundation/layout/WindowInsets;

    invoke-static {p0, v1, p1}, Landroidx/compose/material3/ScaffoldKt;->b(Landroidx/compose/material3/internal/MutableWindowInsets;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Ljg1;

    check-cast v1, [Lkg1;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    iget-object p0, p0, Ljg1;->c:Lig1;

    invoke-virtual {p0, p1, v1}, Landroidx/room/EntityDeleteOrUpdateAdapter;->handleMultiple(Landroidx/sqlite/SQLiteConnection;[Ljava/lang/Object;)I

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
