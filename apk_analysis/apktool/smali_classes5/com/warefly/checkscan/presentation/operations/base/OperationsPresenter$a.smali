.class public final Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls26$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls26$m<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$c;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$a;->a:Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$a;->a:Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$c;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$c;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/operations/base/OperationsView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsView;->showAllOperationsLoaded()V

    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$a;->a:Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$c;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$c;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/operations/base/OperationsView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/operations/base/OperationsView;->showPageOfOperationsProgress(Z)V

    :cond_0
    return-void
.end method

.method public final d(Ljava/util/List;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$a;->a:Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$c;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$c;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/operations/base/OperationsView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2, p1}, Lcom/warefly/checkscan/presentation/operations/base/OperationsView;->showOperations(ZLjava/util/List;)V

    :cond_0
    return-void
.end method

.method public final e(Z)V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$a;->a:Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$c;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$c;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/operations/base/OperationsView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/operations/base/OperationsView;->showEmptyOperationsProgress(Z)V

    :cond_0
    return-void
.end method

.method public final f(Z)V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$a;->a:Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$c;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$c;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/operations/base/OperationsView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/operations/base/OperationsView;->showRefreshOperationsProgress(Z)V

    :cond_0
    return-void
.end method

.method public final g(Z)V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$a;->a:Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$c;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$c;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/operations/base/OperationsView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/operations/base/OperationsView;->showEmptyOperations(Z)V

    :cond_0
    return-void
.end method

.method public final h(Z)V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$a;->a:Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$c;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter$c;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/operations/base/OperationsView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/operations/base/OperationsView;->showEmptyOperations(Z)V

    :cond_0
    return-void
.end method
