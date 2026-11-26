.class public final Lh70;
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
.field public final synthetic f:Li70;


# direct methods
.method public constructor <init>(Li70;)V
    .locals 0

    iput-object p1, p0, Lh70;->f:Li70;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lh70;->f:Li70;

    iget-object p0, p0, Li70;->b:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    invoke-interface {p0}, Lf70;->onTitleWithButtonClick()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
