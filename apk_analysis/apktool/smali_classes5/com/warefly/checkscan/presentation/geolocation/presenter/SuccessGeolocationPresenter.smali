.class public final Lcom/warefly/checkscan/presentation/geolocation/presenter/SuccessGeolocationPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/geolocation/presenter/SuccessGeolocationView;",
        ">;"
    }
.end annotation


# instance fields
.field private final flowRouter:Luf3;

.field private final preferencesRepository:Ljf6;


# direct methods
.method public constructor <init>(Luf3;Ljf6;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/geolocation/presenter/SuccessGeolocationPresenter;->flowRouter:Luf3;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/geolocation/presenter/SuccessGeolocationPresenter;->preferencesRepository:Ljf6;

    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 2

    new-instance v0, Lkd$i$a$a$b;

    const-string v1, "ContinueAfterChange"

    invoke-direct {v0, v1}, Lkd$i$a$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/geolocation/presenter/SuccessGeolocationPresenter;->preferencesRepository:Ljf6;

    invoke-interface {v0}, Ljf6;->a0()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/geolocation/presenter/SuccessGeolocationPresenter;->preferencesRepository:Ljf6;

    invoke-interface {v0}, Ljf6;->v()Z

    move-result v0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/geolocation/presenter/SuccessGeolocationPresenter;->flowRouter:Luf3;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/warefly/checkscan/presentation/e;->a:Lcom/warefly/checkscan/presentation/e;

    invoke-virtual {p0, v0}, Lo87;->g(Ldf7;)V

    return-void

    :cond_0
    sget-object v0, Lqg7;->a:Lqg7;

    invoke-virtual {p0, v0}, Lo87;->g(Ldf7;)V

    return-void
.end method
