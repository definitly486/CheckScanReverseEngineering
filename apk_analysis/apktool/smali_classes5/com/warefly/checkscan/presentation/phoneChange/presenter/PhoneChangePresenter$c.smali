.class public final Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter$c;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;->onFirstViewAttach()V
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
.field public final synthetic f:Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter$c;->f:Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter$c;->f:Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangeView;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;->access$getAccountDataFormatValidator$p(Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;)Li3;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Li3;->d(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangeView;->showIncorrectPhoneMessage(Z)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
