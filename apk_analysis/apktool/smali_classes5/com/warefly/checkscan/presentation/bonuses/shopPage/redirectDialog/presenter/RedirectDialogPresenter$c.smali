.class public final Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/presenter/RedirectDialogPresenter$c;
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
        "Ljava/lang/Throwable;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/presenter/RedirectDialogPresenter;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/presenter/RedirectDialogPresenter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/presenter/RedirectDialogPresenter$c;->f:Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/presenter/RedirectDialogPresenter;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/presenter/RedirectDialogPresenter$c;->g:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Ldx6;->b:Ldx6$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Ldx6;->c:Lj1;

    invoke-virtual {p1}, Lj1;->b()Ljava/util/Random;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Random;->nextBoolean()Z

    move-result p1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/presenter/RedirectDialogPresenter$c;->f:Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/presenter/RedirectDialogPresenter;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialogView;

    if-eqz p1, :cond_2

    invoke-static {v0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/presenter/RedirectDialogPresenter;->access$getRedirectType$p(Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/presenter/RedirectDialogPresenter;)Lsy8;

    move-result-object v0

    sget-object v1, Lsy8;->Mobile:Lsy8;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/presenter/RedirectDialogPresenter$c;->g:Ljava/lang/String;

    invoke-interface {p1, p0, v0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialogView;->showShortLink(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialogView;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialogView;->showCouldntLoadShortLink()V

    :cond_2
    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
