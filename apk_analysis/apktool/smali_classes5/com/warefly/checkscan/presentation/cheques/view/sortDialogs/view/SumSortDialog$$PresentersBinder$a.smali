.class public final Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog$$PresentersBinder$a;
.super Lpf6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog$$PresentersBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpf6<",
        "Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Lih5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;

    check-cast p2, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/presenter/SumSortPresenter;

    iput-object p2, p1, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;->presenter:Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/presenter/SumSortPresenter;

    return-void
.end method

.method public final b(Ljava/lang/Object;)Lih5;
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;

    invoke-virtual {p1}, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;->providePresenter()Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/presenter/SumSortPresenter;

    move-result-object p0

    return-object p0
.end method
