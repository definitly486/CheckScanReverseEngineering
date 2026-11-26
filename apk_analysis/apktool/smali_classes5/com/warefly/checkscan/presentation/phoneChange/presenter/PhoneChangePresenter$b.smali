.class public final Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;->changePhone(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lc41;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter$b;->f:Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter$b;->g:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lc41;

    iget-object p1, p1, Lc41;->a:Lb41;

    sget-object v0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter$b$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter$b;->f:Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-virtual {v1}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangeView;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangeView;->showUnEnableChangePhone()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter$b;->g:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;->access$sendRequestForChangePhone(Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
