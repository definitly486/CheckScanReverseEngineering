.class public final Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lbu3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/flows/cobrand/view/CobrandView;",
        ">;",
        "Lbu3;"
    }
.end annotation


# instance fields
.field private final cashBackInteractor:Lp51;

.field private final deeplink:Lcom/warefly/checkscan/presentation/Deeplink$d;

.field private final flowRouter:Luf3;

.field private final preferencesRepository:Ljf6;


# direct methods
.method public constructor <init>(Lp51;Lcom/warefly/checkscan/presentation/Deeplink$d;Ljf6;Luf3;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;->cashBackInteractor:Lp51;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;->deeplink:Lcom/warefly/checkscan/presentation/Deeplink$d;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;->preferencesRepository:Ljf6;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;->flowRouter:Luf3;

    return-void
.end method

.method public synthetic constructor <init>(Lp51;Lcom/warefly/checkscan/presentation/Deeplink$d;Ljf6;Luf3;ILjh2;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 21
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;-><init>(Lp51;Lcom/warefly/checkscan/presentation/Deeplink$d;Ljf6;Luf3;)V

    return-void
.end method

.method public static final synthetic access$getFlowRouter$p(Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;)Luf3;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;->flowRouter:Luf3;

    return-object p0
.end method

.method public static final synthetic access$getPreferencesRepository$p(Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;)Ljf6;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;->preferencesRepository:Ljf6;

    return-object p0
.end method

.method public static final synthetic access$handleAnonUser(Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;->handleAnonUser()V

    return-void
.end method

.method private final checkCobrandUser(Lll3;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;->cashBackInteractor:Lp51;

    iget-object v0, v0, Lp51;->b:Lj5;

    invoke-interface {v0}, Lj5;->b()Lmz7;

    move-result-object v0

    sget-object v1, Lt51;->g:Lt51;

    new-instance v2, Lf90;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lf90;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lp08;

    invoke-direct {v1, v0, v2}, Lp08;-><init>(Lmz7;Lxl3;)V

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {v1, v0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter$a;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;)V

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter$b;

    invoke-direct {v2, p1, p0}, Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter$b;-><init>(Lll3;Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;)V

    invoke-static {v0, v1, v2}, Lyb8;->d(Lmz7;Lnl3;Lnl3;)Lrx1;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v3, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private final handleAnonUser()V
    .locals 5

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;->flowRouter:Luf3;

    new-instance v0, Lix;

    new-instance v1, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-direct {v1, v2, v2, v3}, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Lix;-><init>(Lcom/warefly/checkscan/auth/presentation/flow/AuthReason;)V

    const/4 v1, 0x2

    new-array v2, v1, [Llk3;

    sget-object v3, Lcom/warefly/checkscan/presentation/e;->a:Lcom/warefly/checkscan/presentation/e;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldf7;

    invoke-virtual {p0, v0}, Lo87;->f([Ldf7;)V

    return-void
.end method


# virtual methods
.method public handleCobrandAbout()V
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter$c;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;)V

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;->checkCobrandUser(Lll3;)V

    return-void
.end method

.method public handleCreateCard()V
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter$d;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter$d;-><init>(Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;)V

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;->checkCobrandUser(Lll3;)V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 3

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;->deeplink:Lcom/warefly/checkscan/presentation/Deeplink$d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/warefly/checkscan/presentation/Deeplink$d;->f(Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/cobrand/presenter/CobrandPresenter;->flowRouter:Luf3;

    new-instance v0, Lcom/warefly/checkscan/presentation/f;

    new-instance v1, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Balance;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Balance;-><init>(Z)V

    invoke-direct {v0, v1}, Lcom/warefly/checkscan/presentation/f;-><init>(Lcom/warefly/checkscan/presentation/Deeplink$Desktop;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v0}, Lo87;->g(Ldf7;)V

    return-void
.end method
