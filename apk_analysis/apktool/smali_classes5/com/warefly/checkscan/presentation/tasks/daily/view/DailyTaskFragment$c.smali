.class public final Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment$c;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lbm3<",
        "Ljava/lang/String;",
        "Landroid/os/Bundle;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment$c;->f:Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment$c;->f:Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment;

    invoke-static {p0, p1}, Landroidx/fragment/app/FragmentKt;->clearFragmentResult(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment;->presenter:Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/daily/presenter/DailyTaskPresenter;->onBackClicked()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
