.class public final Lcom/warefly/checkscan/auth/presentation/flow/view/AuthFlowFragment$$PresentersBinder$a;
.super Lpf6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/auth/presentation/flow/view/AuthFlowFragment$$PresentersBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpf6<",
        "Lcom/warefly/checkscan/auth/presentation/flow/view/AuthFlowFragment;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Lih5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/auth/presentation/flow/view/AuthFlowFragment;

    check-cast p2, Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter;

    iput-object p2, p1, Lcom/warefly/checkscan/auth/presentation/flow/view/AuthFlowFragment;->presenter:Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter;

    return-void
.end method

.method public final b(Ljava/lang/Object;)Lih5;
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/auth/presentation/flow/view/AuthFlowFragment;

    invoke-virtual {p1}, Lcom/warefly/checkscan/auth/presentation/flow/view/AuthFlowFragment;->providePresenter()Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter;

    move-result-object p0

    return-object p0
.end method
