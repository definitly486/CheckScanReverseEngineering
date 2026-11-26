.class public final Lo30;
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
.field public final synthetic f:Lr30;

.field public final synthetic g:Ln30;


# direct methods
.method public constructor <init>(Lr30;Ln30;)V
    .locals 0

    iput-object p1, p0, Lo30;->f:Lr30;

    iput-object p2, p0, Lo30;->g:Ln30;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lo30;->f:Lr30;

    iget-object p1, p1, Lr30;->c:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lo30;->g:Ln30;

    iget-object p0, p0, Ln30;->b:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    invoke-interface {p0, p1}, Ln30$a;->onHidableBannerClicked(Ljava/lang/String;)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
