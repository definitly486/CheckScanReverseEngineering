.class public final Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$h;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->ignoreBanner(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lec0;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$h;->f:Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lec0;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$h$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const/4 v0, 0x1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$h;->f:Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;->showError()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;->showUnauthorized()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;->showBannerIgnored()V

    :cond_3
    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
