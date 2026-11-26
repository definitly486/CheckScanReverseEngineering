.class public final Lcom/warefly/checkscan/presentation/gift/presenter/GiftPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/gift/view/GiftView;",
        ">;"
    }
.end annotation


# instance fields
.field private final flowRouter:Luf3;

.field private final id:I

.field private final interactor:Ljq3;


# direct methods
.method public constructor <init>(ILjq3;Luf3;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput p1, p0, Lcom/warefly/checkscan/presentation/gift/presenter/GiftPresenter;->id:I

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/gift/presenter/GiftPresenter;->interactor:Ljq3;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/gift/presenter/GiftPresenter;->flowRouter:Luf3;

    return-void
.end method


# virtual methods
.method public final fetchGift()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/gift/presenter/GiftPresenter;->interactor:Ljq3;

    iget v1, p0, Lcom/warefly/checkscan/presentation/gift/presenter/GiftPresenter;->id:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Liq3;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Liq3;-><init>(Ljq3;ILe02;)V

    new-instance v0, Ltb7;

    invoke-direct {v0, v2}, Ltb7;-><init>(Lbm3;)V

    invoke-static {v0}, Ls57;->a(Lhd3;)Lde3;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/gift/presenter/GiftPresenter$a;

    invoke-direct {v1, p0, v3}, Lcom/warefly/checkscan/presentation/gift/presenter/GiftPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/gift/presenter/GiftPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public final onActionClicked(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/gift/presenter/GiftPresenter;->flowRouter:Luf3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Luf3;->c:Lo87;

    sget-object v1, Lcom/warefly/checkscan/presentation/e;->a:Lcom/warefly/checkscan/presentation/e;

    invoke-virtual {v0, v1}, Lo87;->g(Ldf7;)V

    if-eqz p1, :cond_0

    new-instance v0, Lkd$s0$d$a;

    const-string v1, "Clicks"

    invoke-static {v1, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkd$s0$d;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkd;->a()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/gift/view/GiftView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrlInCustomTab(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/gift/presenter/GiftPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    sget-object v0, Lcom/warefly/checkscan/presentation/e;->a:Lcom/warefly/checkscan/presentation/e;

    invoke-virtual {p0, v0}, Lo87;->g(Ldf7;)V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 2

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    new-instance v0, Lkd$s0$d$b;

    const-string v1, "Shows"

    invoke-direct {v0, v1}, Lkd$s0$d;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkd;->a()V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/gift/presenter/GiftPresenter;->fetchGift()V

    return-void
.end method
