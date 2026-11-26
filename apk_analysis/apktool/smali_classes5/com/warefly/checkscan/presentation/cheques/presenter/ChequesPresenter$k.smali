.class public final Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhd3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->loadScreenContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhd3<",
        "Ljava/util/List<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lj91;

.field public final synthetic c:Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;


# direct methods
.method public constructor <init>(Lj91;Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$k;->b:Lj91;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$k;->c:Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;

    return-void
.end method


# virtual methods
.method public final collect(Lid3;Le02;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$k$a;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$k;->c:Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;

    invoke-direct {v0, p1, v1}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$k$a;-><init>(Lid3;Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$k;->b:Lj91;

    invoke-virtual {p0, v0, p2}, Lh91;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
