.class public final synthetic Lul4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcm3;


# direct methods
.method public synthetic constructor <init>(Lcm3;I)V
    .locals 0

    iput p2, p0, Lul4;->b:I

    iput-object p1, p0, Lul4;->c:Lcm3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lul4;->b:I

    iget-object p0, p0, Lul4;->c:Lcm3;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lbm3;

    check-cast p1, Landroidx/compose/runtime/saveable/SaverScope;

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/saveable/MapSaverKt;->b(Lbm3;Landroidx/compose/runtime/saveable/SaverScope;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lnl3;

    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;->h(Lnl3;Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;I)Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
