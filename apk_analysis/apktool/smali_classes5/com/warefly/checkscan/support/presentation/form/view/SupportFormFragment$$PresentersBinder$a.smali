.class public final Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment$$PresentersBinder$a;
.super Lpf6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment$$PresentersBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpf6<",
        "Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Lih5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;

    check-cast p2, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;

    iput-object p2, p1, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->presenter:Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;

    return-void
.end method

.method public final b(Ljava/lang/Object;)Lih5;
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;

    invoke-virtual {p1}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->providePresenter()Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;

    move-result-object p0

    return-object p0
.end method
