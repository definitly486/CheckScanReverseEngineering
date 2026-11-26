.class public final Lxo6;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Landroid/view/View;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lzo6;

.field public final synthetic g:Lvj9$a;

.field public final synthetic h:Lvj9;


# direct methods
.method public constructor <init>(Lzo6;Lvj9$a;Lvj9;)V
    .locals 0

    iput-object p1, p0, Lxo6;->f:Lzo6;

    iput-object p2, p0, Lxo6;->g:Lvj9$a;

    iput-object p3, p0, Lxo6;->h:Lvj9;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lxo6;->f:Lzo6;

    iget-object p1, p1, Lzo6;->b:Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;

    iget-object v0, p0, Lxo6;->g:Lvj9$a;

    iget-object v0, v0, Lvj9$a;->b:Lwi9;

    iget-object p0, p0, Lxo6;->h:Lvj9;

    iget-object p0, p0, Lvj9;->f:Lpw7;

    invoke-interface {p1, v0, p0}, Lrj9;->onWithdrawClicked(Lwi9;Lpw7;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
