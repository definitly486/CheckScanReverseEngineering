.class public final Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter$d;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;->triggerTimer(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/lang/Long;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;I)V
    .locals 0

    iput p2, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter$d;->f:I

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter$d;->g:Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Ljava/lang/Long;

    iget v0, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter$d;->f:I

    int-to-long v0, v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter$d;->g:Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;

    if-lez p1, :cond_0

    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;->access$showCodeExpireTime(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsView;

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsView;->setLoadCodeEnabled(Z)V

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsView;->showCodeExpired()V

    :cond_1
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
