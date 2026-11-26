.class public final Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter;->loadBrandlink()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lwt0;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter$b;->f:Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lwt0;

    invoke-virtual {p1}, Lwt0;->c()Lwt0$a;

    move-result-object v0

    sget-object v1, Lwt0$a;->REG_REQUIRED:Lwt0$a;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter$b;->f:Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lwt0;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkView;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lwt0;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkView;->setAnonPlaceholder(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkView;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lwt0;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkView;->loadWebViewLink(Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
