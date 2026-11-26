.class public final Lcom/warefly/checkscan/presentation/scanner/info/presenter/ScannerInfoPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/scanner/info/view/ScannerInfoView;",
        ">;"
    }
.end annotation


# instance fields
.field private final content:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpz3;",
            ">;"
        }
    .end annotation
.end field

.field private final flowRouter:Luf3;


# direct methods
.method public constructor <init>(Luf3;Ls47;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/scanner/info/presenter/ScannerInfoPresenter;->flowRouter:Luf3;

    new-instance p1, Lbe7;

    const v0, 0x7f14059e

    invoke-interface {p2, v0}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lbe7;-><init>(Ljava/lang/String;)V

    new-instance v0, Lxd7;

    const v1, 0x7f14059d

    invoke-interface {p2, v1}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f140599

    invoke-interface {p2, v2}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0802a9

    invoke-interface {p2, v3}, Ls47;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lxd7;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lxd7;

    const v2, 0x7f14059f

    invoke-interface {p2, v2}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f14059b

    invoke-interface {p2, v3}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0802a7

    invoke-interface {p2, v4}, Ls47;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lxd7;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lbe7;

    const v3, 0x7f1405a0

    invoke-interface {p2, v3}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lbe7;-><init>(Ljava/lang/String;)V

    new-instance v3, Lxd7;

    const v4, 0x7f14059c

    invoke-interface {p2, v4}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0802a6

    invoke-interface {p2, v5}, Ls47;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lxd7;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Lxd7;

    const v5, 0x7f14059a

    invoke-interface {p2, v5}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0802ab

    invoke-interface {p2, v6}, Ls47;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lxd7;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Lxd7;

    const v6, 0x7f140598

    invoke-interface {p2, v6}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0802aa

    invoke-interface {p2, v7}, Ls47;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {v5, v6, p2}, Lxd7;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x7

    new-array p2, p2, [Lpz3;

    const/4 v6, 0x0

    aput-object p1, p2, v6

    const/4 p1, 0x1

    aput-object v0, p2, p1

    const/4 p1, 0x2

    aput-object v1, p2, p1

    const/4 p1, 0x3

    aput-object v2, p2, p1

    const/4 p1, 0x4

    aput-object v3, p2, p1

    const/4 p1, 0x5

    aput-object v4, p2, p1

    const/4 p1, 0x6

    aput-object v5, p2, p1

    invoke-static {p2}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/scanner/info/presenter/ScannerInfoPresenter;->content:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onBackClick()V
    .locals 2

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/scanner/info/presenter/ScannerInfoPresenter;->flowRouter:Luf3;

    new-instance v0, Lyh7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lyh7;-><init>(I)V

    invoke-virtual {p0, v0}, Lo87;->a(Ldf7;)V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 1

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/scanner/info/view/ScannerInfoView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/scanner/info/presenter/ScannerInfoPresenter;->content:Ljava/util/List;

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/presentation/scanner/info/view/ScannerInfoView;->showContent(Ljava/util/List;)V

    :cond_0
    return-void
.end method
