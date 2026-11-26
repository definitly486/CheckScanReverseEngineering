.class public final Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter$f;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->onFirstViewAttach()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/lang/String;",
        "Ldt6<",
        "+",
        "Lj59;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter$f;->f:Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter$f;->f:Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->access$getController$p(Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;)Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;->b(Ljava/lang/Object;)V

    invoke-static {p1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->access$getSearchInteractor$p(Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;)Llp0;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lap0;

    invoke-direct {p1, p0}, Lap0;-><init>(Llp0;)V

    new-instance v3, Ldq1;

    invoke-direct {v3, p1}, Ldq1;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance p1, Lfp0;

    invoke-direct {p1, p0}, Lfp0;-><init>(Llp0;)V

    new-instance v4, Lyo0;

    invoke-direct {v4, p1, v1}, Lyo0;-><init>(Lgh4;I)V

    new-instance v2, Loq1;

    sget-object v5, Lrm3;->d:Lrm3$e;

    sget-object v6, Lrm3;->c:Lrm3$d;

    move-object v7, v6

    invoke-direct/range {v2 .. v7}, Loq1;-><init>(Lqp1;Lqx1;Lqx1;Lh6;Lh6;)V

    instance-of p0, v2, Ltm3;

    if-eqz p0, :cond_0

    check-cast v2, Ltm3;

    invoke-interface {v2}, Ltm3;->c()Lgg3;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Luq1;

    invoke-direct {p0, v2}, Luq1;-><init>(Lqp1;)V

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->access$getSearchInteractor$p(Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;)Llp0;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Llp0;->d:I

    iget-object v2, p0, Llp0;->b:Lrp0;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v1, v3}, Lrp0;->j(Ljava/lang/String;ILjava/lang/Integer;)Lp08;

    move-result-object v3

    new-instance v4, Lhp0;

    invoke-direct {v4, p0}, Lhp0;-><init>(Llp0;)V

    new-instance v5, Lwq;

    const/4 v6, 0x2

    invoke-direct {v5, v4, v6}, Lwq;-><init>(Ljava/lang/Object;I)V

    new-instance v4, Lh08;

    invoke-direct {v4, v3, v5}, Lh08;-><init>(Lmz7;Lxl3;)V

    new-instance v3, Lzo0;

    invoke-direct {v3, p0, p1}, Lzo0;-><init>(Llp0;Ljava/lang/String;)V

    new-instance v5, Ldq1;

    invoke-direct {v5, v3}, Ldq1;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, p1, v1, v0}, Lrp0;->h(Ljava/lang/String;ILjava/lang/Integer;)Lp08;

    move-result-object p1

    new-instance v0, Lkp0;

    invoke-direct {v0, p0}, Lkp0;-><init>(Llp0;)V

    new-instance p0, Lxq;

    invoke-direct {p0, v0, v6}, Lxq;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lh08;

    invoke-direct {v0, p1, p0}, Lh08;-><init>(Lmz7;Lxl3;)V

    const/4 p0, 0x3

    new-array p0, p0, [Lqq1;

    aput-object v4, p0, v1

    const/4 p1, 0x1

    aput-object v5, p0, p1

    aput-object v0, p0, v6

    new-instance p1, Ltp1;

    invoke-direct {p1, p0}, Ltp1;-><init>([Lqq1;)V

    new-instance p0, Lnq1;

    invoke-direct {p0, p1}, Lnq1;-><init>(Lqp1;)V

    instance-of p1, p0, Ltm3;

    if-eqz p1, :cond_2

    check-cast p0, Ltm3;

    invoke-interface {p0}, Ltm3;->c()Lgg3;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p1, Luq1;

    invoke-direct {p1, p0}, Luq1;-><init>(Lqp1;)V

    return-object p1
.end method
