.class public final Lzn2;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lzn2;->f:I

    iput-object p1, p0, Lzn2;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lzn2;->f:I

    iget-object p0, p0, Lzn2;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p0, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;

    sget-object v0, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;->q:[Lze4;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;->r(I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;->p()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lun2;

    sget-object p1, Lgb9;->a:[B

    const/4 p1, 0x1

    iput-boolean p1, p0, Lun2;->j:Z

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
