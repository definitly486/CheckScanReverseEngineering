.class public final Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter$d;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;->handleCreateCard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter$d;->f:Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter$d;->f:Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;->access$getPreferencesRepository$p(Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;)Ljf6;

    move-result-object v0

    invoke-interface {v0}, Ljf6;->G0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/cobrand/view/CobrandView;

    if-eqz p0, :cond_1

    new-instance v0, Lig7;

    sget-object v1, Ld62;->Deeplink:Ld62;

    invoke-direct {v0, v1}, Lig7;-><init>(Ld62;)V

    const/4 v1, 0x1

    new-array v1, v1, [Llk3;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-interface {p0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;->access$handleAnonUser(Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;)V

    :cond_1
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
