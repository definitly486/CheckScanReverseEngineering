.class public final Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter$d;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;->getScreenshotByUri(Landroid/net/Uri;Lsi7;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter$d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/lang/String;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lsi7;

.field public final synthetic g:Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;

.field public final synthetic h:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;Landroid/net/Uri;Lsi7;)V
    .locals 0

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter$d;->f:Lsi7;

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter$d;->g:Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter$d;->h:Landroid/net/Uri;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter$d$a;->a:[I

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter$d;->f:Lsi7;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter$d;->g:Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter$d;->h:Landroid/net/Uri;

    invoke-interface {v0, p1, p0}, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView;->replaceLoadShopButton(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView;

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView;->replaceLoadBankButton(Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-static {v2}, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;->access$checkUploadEnable(Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
