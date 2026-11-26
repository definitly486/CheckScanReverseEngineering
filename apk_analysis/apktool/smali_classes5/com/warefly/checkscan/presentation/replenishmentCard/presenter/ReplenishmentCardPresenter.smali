.class public final Lcom/warefly/checkscan/presentation/replenishmentCard/presenter/ReplenishmentCardPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/replenishmentCard/view/ReplenishmentCardView;",
        ">;"
    }
.end annotation


# instance fields
.field private final flowRouter:Luf3;


# direct methods
.method public constructor <init>(Luf3;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/replenishmentCard/presenter/ReplenishmentCardPresenter;->flowRouter:Luf3;

    return-void
.end method


# virtual methods
.method public final onBackClick()V
    .locals 2

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/replenishmentCard/presenter/ReplenishmentCardPresenter;->flowRouter:Luf3;

    new-instance v0, Lcom/warefly/checkscan/presentation/c;

    sget-object v1, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$CashbackProfile;->c:Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$CashbackProfile;

    invoke-direct {v0, v1}, Lcom/warefly/checkscan/presentation/c;-><init>(Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow;)V

    invoke-virtual {p0, v0}, Lo87;->a(Ldf7;)V

    return-void
.end method
