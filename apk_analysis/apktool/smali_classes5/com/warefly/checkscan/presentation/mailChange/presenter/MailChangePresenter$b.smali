.class public final Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;->changeMail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lc4$a;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter$b;->f:Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter$b;->g:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lc4$a;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter$b$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter$b;->f:Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    invoke-virtual {v1}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangeView;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangeView;->showNetworkError()V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangeView;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangeView;->showEmailUseAlready()V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangeView;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangeView;->showNoSuchUser()V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangeView;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter$b;->g:Ljava/lang/String;

    if-eqz p1, :cond_4

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangeView;->showEmailSent(Ljava/lang/String;)V

    :cond_4
    invoke-static {v1, p0}, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;->access$loadEmail(Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangeView;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangeView;->showBackendError()V

    :cond_6
    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
