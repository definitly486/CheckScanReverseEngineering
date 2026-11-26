.class public final Lpe1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;

.field public final synthetic g:Lvg6;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;Lvg6;)V
    .locals 0

    iput-object p1, p0, Lpe1;->f:Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;

    iput-object p2, p0, Lpe1;->g:Lvg6;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lpe1;->f:Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->o()Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;

    move-result-object v0

    iget-object p0, p0, Lpe1;->g:Lvg6;

    invoke-virtual {v0, p0}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->onReportProduct(Lvg6;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
