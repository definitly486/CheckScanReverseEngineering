.class public final Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment$$PresentersBinder$a;
.super Lpf6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment$$PresentersBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpf6<",
        "Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Lih5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;

    check-cast p2, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;

    iput-object p2, p1, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;->presenter:Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;

    return-void
.end method

.method public final b(Ljava/lang/Object;)Lih5;
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;

    invoke-virtual {p1}, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;->providePresenter()Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;

    move-result-object p0

    return-object p0
.end method
