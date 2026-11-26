.class public final Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;-><init>(Lp51;Lhy1;Luf3;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lot6;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter$a;->f:Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lot6;

    iget-object v0, p1, Lot6;->d:Lpt6;

    iget-object p1, p1, Lot6;->e:Ltt6;

    iget-object v1, v0, Lpt6;->c:Ljava/lang/String;

    iget-object v2, v0, Lpt6;->b:Ljava/lang/String;

    invoke-static {v1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter$a;->f:Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;

    if-nez v1, :cond_0

    invoke-static {v2}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v1

    check-cast v1, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lpt6;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView;->showBankDescription(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p1, Ltt6;->c:Ljava/lang/String;

    iget-object v1, p1, Ltt6;->d:Ljava/lang/String;

    iget-object v2, p1, Ltt6;->b:Ljava/lang/String;

    invoke-static {v0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView;

    if-eqz v0, :cond_1

    iget-object p1, p1, Ltt6;->c:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView;->showShopDescription(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {v1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView;

    invoke-interface {p0, v1}, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView;->showShopExampleImage(Ljava/lang/String;)V

    :cond_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
