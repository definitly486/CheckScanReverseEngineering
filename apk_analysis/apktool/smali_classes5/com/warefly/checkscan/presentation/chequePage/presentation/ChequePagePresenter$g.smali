.class public final Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$g;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->onRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lhd1;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$g;->f:Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lhd1;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$g;->f:Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->access$setCheque$p(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;Lhd1;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->access$showCheque(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;Lhd1;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
