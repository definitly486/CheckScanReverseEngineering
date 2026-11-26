.class public final Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkView;",
        ">;"
    }
.end annotation


# instance fields
.field private final campaignCode:Ljava/lang/String;

.field private final catalogInteractor:Lp61;

.field private final desktopInteractor:Lzl2;

.field private final flowRouter:Luf3;

.field private final id:I

.field private final tab:Ljava/lang/String;

.field private final target:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lp61;Lzl2;Luf3;Ltt0;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter;->catalogInteractor:Lp61;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter;->desktopInteractor:Lzl2;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter;->flowRouter:Luf3;

    iget p1, p4, Ltt0;->d:I

    iput p1, p0, Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter;->id:I

    iget-object p1, p4, Ltt0;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter;->tab:Ljava/lang/String;

    iget-object p1, p4, Ltt0;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter;->target:Ljava/lang/String;

    iget-object p1, p4, Ltt0;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter;->campaignCode:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$loadBrandlink(Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter;->loadBrandlink()V

    return-void
.end method

.method private final loadBrandlink()V
    .locals 7

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter;->catalogInteractor:Lp61;

    iget v3, p0, Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter;->id:I

    iget-object v4, p0, Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter;->tab:Ljava/lang/String;

    iget-object v5, p0, Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter;->target:Ljava/lang/String;

    iget-object v6, p0, Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter;->campaignCode:Ljava/lang/String;

    iget-object v1, v0, Lp61;->b:Lwk7;

    iget-object v0, v0, Lp61;->c:Ljf6;

    invoke-interface {v0}, Ljf6;->O0()I

    move-result v2

    invoke-interface/range {v1 .. v6}, Lwk7;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmz7;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter$a;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter;)V

    new-instance v2, Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter$b;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter;)V

    invoke-static {v0, v1, v2}, Lyb8;->d(Lmz7;Lnl3;Lnl3;)Lrx1;

    move-result-object v0

    const-string v1, "showOldLink"

    invoke-virtual {p0, v0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy(Lcp2;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onBackClick()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 4

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter;->loadBrandlink()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter;->desktopInteractor:Lzl2;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter$c;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter;Le02;)V

    invoke-virtual {v0, v1, v2}, Lzl2;->c(Ly22;Lbm3;)V

    return-void
.end method

.method public final onRegistrationClicked()V
    .locals 4

    new-instance v0, Lkd$a$a$a;

    const-string v1, "Go to register from brandlink"

    const-string v2, "Actions"

    invoke-static {v2, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Account"

    invoke-direct {v0, v2, v1}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter;->flowRouter:Luf3;

    new-instance v0, Lix;

    new-instance v1, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-direct {v1, v2, v2, v3}, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Lix;-><init>(Lcom/warefly/checkscan/auth/presentation/flow/AuthReason;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public final startTelegram(Landroid/net/Uri;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkView;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkView;->sentFeedbackOnTelegram(Landroid/content/Intent;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
