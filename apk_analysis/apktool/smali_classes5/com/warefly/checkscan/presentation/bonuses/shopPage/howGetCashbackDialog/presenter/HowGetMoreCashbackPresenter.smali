.class public final Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackView;",
        ">;"
    }
.end annotation


# instance fields
.field private final data:Ljava/lang/String;

.field private final listItems$delegate:Lcl4;

.field private final resourceProvider:Ls47;

.field private final shopId:J


# direct methods
.method public constructor <init>(Ls47;Ljava/lang/String;J)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter;->resourceProvider:Ls47;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter;->data:Ljava/lang/String;

    iput-wide p3, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter;->shopId:J

    new-instance p1, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter$a;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter;)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter;->listItems$delegate:Lcl4;

    return-void
.end method

.method public static final synthetic access$getResourceProvider$p(Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter;)Ls47;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter;->resourceProvider:Ls47;

    return-object p0
.end method

.method private final getListItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lhx3;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter;->listItems$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final onButtonActionClick()V
    .locals 4

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter;->data:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lkd$e$d$k;

    iget-wide v1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter;->shopId:J

    const-string v3, "Tap_card_button_banner_cta"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkd$e$d;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkd;->a()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackView;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackView;->closeDialog()V

    :cond_1
    return-void
.end method

.method public final onCloseClick()V
    .locals 4

    new-instance v0, Lkd$e$d$b;

    iget-wide v1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter;->shopId:J

    const-string v3, "Card_button_banner_close"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkd$e$d;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkd;->a()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackView;->closeDialog()V

    :cond_0
    return-void
.end method

.method public onFirstViewAttach()V
    .locals 1

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter;->getListItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/view/HowGetMoreCashbackView;->showContent(Ljava/util/List;)V

    :cond_0
    return-void
.end method
