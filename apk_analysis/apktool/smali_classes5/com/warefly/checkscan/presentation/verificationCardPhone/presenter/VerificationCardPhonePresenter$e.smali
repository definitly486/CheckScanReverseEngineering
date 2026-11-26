.class public final Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$e;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->checkIntentEnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$e$a;
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
.field public final synthetic f:Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$e;->f:Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lc41;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$e;->f:Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->access$getFromType$p(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;)Lgl3;

    move-result-object p1

    sget-object v0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$e$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->access$getBankInteractor$p(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;)Lca0;

    move-result-object p1

    iget-object p1, p1, Lca0;->d:Lct6;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lct6;->onNext(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->access$getRouter$p(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;)Luf3;

    move-result-object p0

    new-instance p1, Lig7;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lig7;-><init>(I)V

    invoke-virtual {p0, p1}, Lo87;->a(Ldf7;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->access$getRouter$p(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;)Luf3;

    move-result-object p0

    new-instance p1, Lcom/warefly/checkscan/presentation/c;

    sget-object v0, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$CashbackProfile;->c:Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$CashbackProfile;

    invoke-direct {p1, v0}, Lcom/warefly/checkscan/presentation/c;-><init>(Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow;)V

    invoke-virtual {p0, p1}, Lo87;->h(Ldf7;)V

    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
