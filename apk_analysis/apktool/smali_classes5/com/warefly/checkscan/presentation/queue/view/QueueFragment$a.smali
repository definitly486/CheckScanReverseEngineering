.class public final Lcom/warefly/checkscan/presentation/queue/view/QueueFragment$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/queue/view/QueueFragment;->showQueueSortDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lmz6;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/queue/view/QueueFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/queue/view/QueueFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/queue/view/QueueFragment$a;->f:Lcom/warefly/checkscan/presentation/queue/view/QueueFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lmz6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/queue/view/QueueFragment$a;->f:Lcom/warefly/checkscan/presentation/queue/view/QueueFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/queue/view/QueueFragment;->n()Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;->changeSort(Lmz6;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
