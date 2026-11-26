.class public final Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;->checkCobrandUser(Lll3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lla4;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic g:Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;


# direct methods
.method public constructor <init>(Lll3;Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;",
            "Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter$b;->f:Lll3;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter$b;->g:Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lla4;

    iget-object p1, p1, Lla4;->a:Lfc;

    iget-boolean p1, p1, Lfc;->a:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter$b;->f:Lll3;

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter$b;->g:Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;->access$getFlowRouter$p(Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;)Luf3;

    move-result-object p0

    new-instance p1, Lcom/warefly/checkscan/presentation/f;

    new-instance v0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Balance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Balance;-><init>(Z)V

    invoke-direct {p1, v0}, Lcom/warefly/checkscan/presentation/f;-><init>(Lcom/warefly/checkscan/presentation/Deeplink$Desktop;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, p1}, Lo87;->g(Ldf7;)V

    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
