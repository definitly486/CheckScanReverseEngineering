.class public final Lzh4;
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
.field public final synthetic f:Lai4;

.field public final synthetic g:Lqj4;


# direct methods
.method public constructor <init>(Lai4;Lqj4;)V
    .locals 0

    iput-object p1, p0, Lzh4;->f:Lai4;

    iput-object p2, p0, Lzh4;->g:Lqj4;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lzh4;->f:Lai4;

    iget-object p1, p1, Lai4;->b:Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;

    iget-object p0, p0, Lzh4;->g:Lqj4;

    iget p0, p0, Lqj4;->c:I

    invoke-interface {p1, p0}, Ljh4;->onDoActionButtonClick(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
