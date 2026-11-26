.class public final Lwa1;
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
.field public final synthetic f:Lxa1;

.field public final synthetic g:Lva1;


# direct methods
.method public constructor <init>(Lxa1;Lva1;)V
    .locals 0

    iput-object p1, p0, Lwa1;->f:Lxa1;

    iput-object p2, p0, Lwa1;->g:Lva1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lwa1;->g:Lva1;

    iget-object v0, v0, Lva1;->b:Lcom/warefly/checkscan/presentation/tasks/checkbox/presenter/CheckboxTaskDetailsPresenter;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lwa1;->f:Lxa1;

    iget-object p1, p0, Lxa1;->a:Lxa1$a;

    sget-object v1, Lva1$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lva1$a;->onCheckRewardClicked()V

    goto :goto_0

    :cond_1
    iget-boolean p0, p0, Lxa1;->e:Z

    invoke-interface {v0, p0}, Lva1$a;->onActivateClicked(Z)V

    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
