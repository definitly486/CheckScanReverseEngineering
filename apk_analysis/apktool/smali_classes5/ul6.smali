.class public final Lul6;
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
.field public final synthetic f:Lrl6;

.field public final synthetic g:Lvl6;


# direct methods
.method public constructor <init>(Lrl6;Lvl6;)V
    .locals 0

    iput-object p1, p0, Lul6;->f:Lrl6;

    iput-object p2, p0, Lul6;->g:Lvl6;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lul6;->g:Lvl6;

    iget-object p1, p1, Lvl6;->b:Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;

    iget-object p0, p0, Lul6;->f:Lrl6;

    invoke-interface {p0, p1}, Lql6;->e(Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
