.class public final Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebView;",
        ">;"
    }
.end annotation


# instance fields
.field private final bankInteractor:Lca0;

.field private final desktopInteractor:Lzl2;


# direct methods
.method public constructor <init>(Lca0;Lzl2;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter;->bankInteractor:Lca0;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter;->desktopInteractor:Lzl2;

    return-void
.end method

.method public static final synthetic access$getDesktopInteractor$p(Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter;)Lzl2;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter;->desktopInteractor:Lzl2;

    return-object p0
.end method

.method public static final synthetic access$getPresenterScope(Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter;)Ly22;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter$a;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter;->sendLink$lambda$0(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter;->sendLink$lambda$1(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method private static final sendLink$lambda$0(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final sendLink$lambda$1(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onFirstViewAttach()V
    .locals 0

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    sget-object p0, Lkd$j$b$k;->e:Lkd$j$b$k;

    invoke-virtual {p0}, Lkd;->a()V

    return-void
.end method

.method public final sendLink(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter;->bankInteractor:Lca0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lca0;->a:Lpb0;

    invoke-interface {v0, p1}, Lpb0;->g(Ljava/lang/String;)Lp08;

    move-result-object p1

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {p1, v0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object p1

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter$a;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter;)V

    new-instance v1, Lnj1;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lnj1;-><init>(Lgh4;I)V

    new-instance v0, Lz89;

    const/4 v3, 0x0

    sget-object v4, Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter$b;->f:Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter$b;

    invoke-direct {v0, v4, v3}, Lz89;-><init>(Lnl3;I)V

    invoke-virtual {p1, v1, v0}, Lmz7;->g(Lqx1;Lqx1;)Lrx1;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v2, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
