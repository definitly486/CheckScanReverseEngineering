.class public final Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$i;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->updateLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/lang/Throwable;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$i;->f:Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Throwable;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$i;->f:Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationView;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationView;->showLoading(Z)V

    :cond_0
    new-instance p1, Lkd$i$a$b$a;

    invoke-direct {p1}, Lkd$i$a$b$a;-><init>()V

    invoke-virtual {p1}, Lkd;->a()V

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->access$getFlowRouter$p(Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;)Luf3;

    move-result-object p0

    new-instance p1, Lcg7;

    sget-object v1, Lfl3;->FailClarification:Lfl3;

    invoke-direct {p1, v1}, Lcg7;-><init>(Lfl3;)V

    const/4 v1, 0x1

    new-array v1, v1, [Llk3;

    aput-object p1, v1, v0

    invoke-virtual {p0, v1}, Luf3;->j([Llk3;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
