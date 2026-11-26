.class public final Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardsOptionsView;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter$a;

.field private static final LOG_TAG:Ljava/lang/String; = "BankCardsPresenter"


# instance fields
.field private final bankId:J

.field private final cashBackInteractor:Lp51;

.field private final flowRouter:Luf3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;->Companion:Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter$a;

    return-void
.end method

.method public constructor <init>(Luf3;Lp51;J)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;->flowRouter:Luf3;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;->cashBackInteractor:Lp51;

    iput-wide p3, p0, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;->bankId:J

    return-void
.end method

.method public static final synthetic access$getBankId$p(Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;)J
    .locals 2

    iget-wide v0, p0, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;->bankId:J

    return-wide v0
.end method

.method public static synthetic e(Lnl3;Ljava/lang/Object;)Lwr5;
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;->showBankCardOptionsInfo$lambda$1(Lnl3;Ljava/lang/Object;)Lwr5;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter$e;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;->showBankCardOptionsInfo$lambda$4(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic g(Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;->showBankCardOptionsInfo$lambda$0(Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;)V

    return-void
.end method

.method public static synthetic h(Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter$d;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;->showBankCardOptionsInfo$lambda$3(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic i(Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter$c;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;->showBankCardOptionsInfo$lambda$2(Lnl3;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final showBankCardOptionsInfo$lambda$0(Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardsOptionsView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardsOptionsView;->showLoading(Z)V

    :cond_0
    return-void
.end method

.method private static final showBankCardOptionsInfo$lambda$1(Lnl3;Ljava/lang/Object;)Lwr5;
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lwr5;

    return-object p0
.end method

.method private static final showBankCardOptionsInfo$lambda$2(Lnl3;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final showBankCardOptionsInfo$lambda$3(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final showBankCardOptionsInfo$lambda$4(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public final onOrderCardOptionPressed(Lt90$a;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardsOptionsView;

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardsOptionsView;->openOption(Lt90$a;)V

    return-void
.end method

.method public final showBankCardOptionsInfo()V
    .locals 6

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardsOptionsView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardsOptionsView;->showLoading(Z)V

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;->cashBackInteractor:Lp51;

    iget-object v2, v0, Lp51;->a:Lu51;

    iget-object v0, v0, Lp51;->c:Ljf6;

    invoke-interface {v0}, Ljf6;->O0()I

    move-result v0

    invoke-interface {v2, v0}, Lu51;->h(I)Lmz7;

    move-result-object v0

    sget-object v2, Lne7;->c:Lhe7;

    invoke-virtual {v0, v2}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v2, Ld90;

    invoke-direct {v2, p0}, Ld90;-><init>(Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;)V

    new-instance v3, Luz7;

    invoke-direct {v3, v0, v2}, Luz7;-><init>(Lmz7;Lh6;)V

    new-instance v0, Le90;

    sget-object v2, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter$b;->f:Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter$b;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4}, Le90;-><init>(Lnl3;I)V

    new-instance v2, Lj08;

    invoke-direct {v2, v3, v0}, Lj08;-><init>(Lmz7;Lxl3;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter$c;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;)V

    new-instance v3, Lf90;

    invoke-direct {v3, v0, v4}, Lf90;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Ler5;

    invoke-direct {v0, v2, v3}, Ler5;-><init>(Ltq5;Lze6;)V

    new-instance v2, Lbr5;

    invoke-direct {v2, v0}, Lbr5;-><init>(Ler5;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter$d;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter$d;-><init>(Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;)V

    new-instance v3, Lg90;

    invoke-direct {v3, v0, v4}, Lg90;-><init>(Lgh4;I)V

    new-instance v0, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter$e;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter$e;-><init>(Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;)V

    new-instance v5, Lh90;

    invoke-direct {v5, v0, v4}, Lh90;-><init>(Lgh4;I)V

    invoke-virtual {v2, v3, v5}, Lmz7;->g(Lqx1;Lqx1;)Lrx1;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
