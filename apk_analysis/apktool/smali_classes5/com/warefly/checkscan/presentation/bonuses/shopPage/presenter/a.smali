.class public final Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lr31;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/a;->f:Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lr31;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/a;->f:Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p1}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;->showMoreCashbackButton(Lr31;)V

    :cond_0
    new-instance p1, Lkd$e$d$i;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->access$getAdmitadId$p(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;)J

    move-result-wide v0

    const-string p0, "Show_card_button"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, p0}, Lkd$e$d;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lkd;->a()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
