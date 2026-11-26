.class public final synthetic Lus;
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

    iput p2, p0, Lus;->b:I

    iput-object p1, p0, Lus;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lus;->b:I

    iget-object p0, p0, Lus;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/m62;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lyads/c62;->a(Lyads/m62;I)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Ljava/lang/String;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    invoke-static {p0, p1}, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->b(Ljava/lang/String;Landroidx/sqlite/SQLiteConnection;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lnl3;

    check-cast p1, Landroidx/compose/material3/SliderRange;

    invoke-static {p0, p1}, Landroidx/compose/material3/SliderKt;->j(Lnl3;Landroidx/compose/material3/SliderRange;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/compose/foundation/text/selection/SelectionManager;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroidx/compose/foundation/text/selection/SelectionManager;->d(Landroidx/compose/foundation/text/selection/SelectionManager;J)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lbm3;

    check-cast p1, Landroidx/paging/AsyncPagedListDiffer$PagedListListener;

    invoke-static {p0, p1}, Landroidx/paging/AsyncPagedListDiffer;->b(Lbm3;Landroidx/paging/AsyncPagedListDiffer$PagedListListener;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
