.class public final Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr26$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr26$a<",
        "Lpz3;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter$a;->a:Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter$a;->a:Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;->access$getPlaceholderState$p(Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;)Lr86;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lr86;->a(Z)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsView;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsView;->showLoading(Z)V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsView;

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsView;->showError(Z)V

    :cond_1
    return-void
.end method

.method public final showData(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lpz3;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter$a;->a:Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsView;->showError(Z)V

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpz3;

    instance-of v3, v2, Lzn7;

    if-nez v3, :cond_3

    instance-of v2, v2, Lvp6;

    if-eqz v2, :cond_2

    :cond_3
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsView;

    if-eqz v0, :cond_4

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsView;->showLoading(Z)V

    :cond_4
    :goto_0
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsView;

    if-eqz p0, :cond_5

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsView;->showContent(Ljava/util/List;)V

    :cond_5
    return-void
.end method
