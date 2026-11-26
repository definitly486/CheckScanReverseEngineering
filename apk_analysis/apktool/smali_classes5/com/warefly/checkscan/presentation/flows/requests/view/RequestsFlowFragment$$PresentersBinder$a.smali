.class public final Lcom/warefly/checkscan/presentation/flows/requests/view/RequestsFlowFragment$$PresentersBinder$a;
.super Lpf6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/flows/requests/view/RequestsFlowFragment$$PresentersBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpf6<",
        "Lcom/warefly/checkscan/presentation/flows/requests/view/RequestsFlowFragment;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Lih5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/flows/requests/view/RequestsFlowFragment;

    check-cast p2, Lcom/warefly/checkscan/presentation/flows/requests/presenter/RequestsPresenter;

    iput-object p2, p1, Lcom/warefly/checkscan/presentation/flows/requests/view/RequestsFlowFragment;->presenter:Lcom/warefly/checkscan/presentation/flows/requests/presenter/RequestsPresenter;

    return-void
.end method

.method public final b(Ljava/lang/Object;)Lih5;
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/flows/requests/view/RequestsFlowFragment;

    invoke-virtual {p1}, Lcom/warefly/checkscan/presentation/flows/requests/view/RequestsFlowFragment;->providePresenter()Lcom/warefly/checkscan/presentation/flows/requests/presenter/RequestsPresenter;

    move-result-object p0

    return-object p0
.end method
