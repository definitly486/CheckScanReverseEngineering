.class public final Llx5$a;
.super Llx5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llx5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Llx5$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Llx5$a;

    invoke-direct {v0}, Llx5;-><init>()V

    sput-object v0, Llx5$a;->a:Llx5$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$k;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$k;->a:Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->access$getRepository$p(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;)Ljf6;

    move-result-object p1

    invoke-interface {p1}, Ljf6;->x0()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->access$getAdmitadPartnerInteractor$p(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;)Lx9;

    move-result-object p1

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->access$getAdmitadId$p(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;)J

    move-result-wide v0

    iget-object p1, p1, Lx9;->a:Laa;

    invoke-interface {p1, v0, v1}, Laa;->b(J)Lmz7;

    move-result-object p1

    new-instance v0, Ls9;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    new-instance v2, Lk3;

    invoke-direct {v2, v0, v1}, Lk3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lp08;

    invoke-direct {v0, p1, v2}, Lp08;-><init>(Lmz7;Lxl3;)V

    sget-object p1, Lne7;->c:Lhe7;

    invoke-virtual {v0, p1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object p1

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/a;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/a;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;)V

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lyb8;->f(Lmz7;Lnl3;Lnl3;I)Lrx1;

    move-result-object p1

    const-string v0, "loadCardButton"

    invoke-static {p0, p1, v0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->access$disposeOnDestroy(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;Lcp2;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
