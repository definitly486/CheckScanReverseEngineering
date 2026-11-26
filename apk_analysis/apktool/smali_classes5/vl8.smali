.class public final Lvl8;
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
.field public final synthetic f:Ltl8;

.field public final synthetic g:Lzl8;


# direct methods
.method public constructor <init>(Ltl8;Lzl8;)V
    .locals 0

    iput-object p1, p0, Lvl8;->f:Ltl8;

    iput-object p2, p0, Lvl8;->g:Lzl8;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lvl8;->f:Ltl8;

    iget-object p1, p1, Ltl8;->b:Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    iget-object p0, p0, Lvl8;->g:Lzl8;

    iget-object p0, p0, Lzl8;->d:Lb06;

    invoke-interface {p1, p0}, Ltl8$a;->onBannerOrdClicked(Lb06;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
