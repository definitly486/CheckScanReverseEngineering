.class public final Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltf3$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ltf3$d<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$o;

.field public final b:Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$p;

.field public final synthetic c:Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$o;Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$a;->c:Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$a;->a:Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$o;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$a;->b:Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$p;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$a;->b:Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$p;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$p;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$a;->a:Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$o;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$o;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;->showNoChequesForSelectedFilter(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$a;->c:Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->access$checkHaveIncorrectCheques(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;)V

    return-void
.end method

.method public final showData(Ljava/util/List;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$a;->a:Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$o;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$o;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;->showCheques(Ljava/util/List;Z)V

    :cond_0
    return-void
.end method
