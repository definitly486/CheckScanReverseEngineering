.class public final Llx5$g;
.super Llx5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llx5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# static fields
.field public static final a:Llx5$g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Llx5$g;

    invoke-direct {v0}, Llx5;-><init>()V

    sput-object v0, Llx5$g;->a:Llx5$g;

    return-void
.end method


# virtual methods
.method public final a(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$k;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$k;->a:Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->access$getAdmitadPartnerInteractor$p(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;)Lx9;

    move-result-object p1

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->access$getAdmitadId$p(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;)J

    move-result-wide v0

    iget-object p1, p1, Lx9;->a:Laa;

    invoke-interface {p1, v0, v1}, Laa;->a(J)Lmz7;

    move-result-object p1

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {p1, v0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object p1

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/j;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/j;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;)V

    new-instance v1, Lal0;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lal0;-><init>(Lgh4;I)V

    new-instance v0, Lxz7;

    invoke-direct {v0, p1, v1}, Lxz7;-><init>(Lmz7;Lqx1;)V

    new-instance p1, Lbl0;

    invoke-direct {p1, p0}, Lbl0;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;)V

    new-instance v1, Luz7;

    invoke-direct {v1, v0, p1}, Luz7;-><init>(Lmz7;Lh6;)V

    new-instance p1, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/l;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/l;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;)V

    sget-object v0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/k;->f:Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/k;

    invoke-static {v1, v0, p1}, Lyb8;->d(Lmz7;Lnl3;Lnl3;)Lrx1;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
