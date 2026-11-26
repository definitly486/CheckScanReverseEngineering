.class public final Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallFragment$$PresentersBinder$a;
.super Lpf6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallFragment$$PresentersBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpf6<",
        "Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallFragment;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Lih5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallFragment;

    check-cast p2, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;

    iput-object p2, p1, Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallFragment;->presenter:Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;

    return-void
.end method

.method public final b(Ljava/lang/Object;)Lih5;
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallFragment;

    invoke-virtual {p1}, Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallFragment;->providePresenter()Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;

    move-result-object p0

    return-object p0
.end method
