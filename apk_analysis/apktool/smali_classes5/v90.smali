.class public final synthetic Lv90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl3;
.implements Landroidx/arch/core/util/Function;
.implements Landroidx/compose/ui/graphics/colorspace/DoubleFunction;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lnl3;


# direct methods
.method public synthetic constructor <init>(Lnl3;I)V
    .locals 0

    iput p2, p0, Lv90;->b:I

    iput-object p1, p0, Lv90;->c:Lnl3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lv90;->b:I

    iget-object p0, p0, Lv90;->c:Lnl3;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Landroidx/paging/PositionalDataSource;->g(Lnl3;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :pswitch_1
    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public invoke(D)D
    .locals 0

    iget-object p0, p0, Lv90;->c:Lnl3;

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->h(Lnl3;D)D

    move-result-wide p0

    return-wide p0
.end method
