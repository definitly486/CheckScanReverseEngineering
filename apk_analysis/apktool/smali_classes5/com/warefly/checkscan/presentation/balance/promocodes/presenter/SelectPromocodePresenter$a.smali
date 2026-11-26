.class public final Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltf3$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ltf3$d<",
        "Lfr6;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter$a;->a:Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final showData(Ljava/util/List;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter$a;->a:Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeView;->showErrorLoading(Z)V

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeView;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeView;->showPromocodes(Ljava/util/List;)V

    :cond_1
    return-void
.end method
