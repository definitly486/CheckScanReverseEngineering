.class public final Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment$$PresentersBinder$a;
.super Lpf6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment$$PresentersBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpf6<",
        "Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Lih5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;

    check-cast p2, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;

    iput-object p2, p1, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;->presenter:Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;

    return-void
.end method

.method public final b(Ljava/lang/Object;)Lih5;
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;

    invoke-virtual {p1}, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;->providePresenter()Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;

    move-result-object p0

    return-object p0
.end method
