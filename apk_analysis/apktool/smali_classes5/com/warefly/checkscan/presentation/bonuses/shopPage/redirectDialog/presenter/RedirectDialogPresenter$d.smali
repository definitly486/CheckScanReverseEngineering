.class public final Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/presenter/RedirectDialogPresenter$d;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/presenter/RedirectDialogPresenter;->openAdaptiveLink(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
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
.field public final synthetic f:Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/presenter/RedirectDialogPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/presenter/RedirectDialogPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/presenter/RedirectDialogPresenter$d;->f:Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/presenter/RedirectDialogPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/presenter/RedirectDialogPresenter$d;->f:Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/presenter/RedirectDialogPresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialogView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/presenter/RedirectDialogPresenter;->access$getRedirectType$p(Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/presenter/RedirectDialogPresenter;)Lsy8;

    move-result-object p0

    sget-object v1, Lsy8;->Mobile:Lsy8;

    if-eq p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p1, p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialogView;->showShortLink(Ljava/lang/String;Z)V

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
