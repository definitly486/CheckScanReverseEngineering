.class public final Lcom/warefly/checkscan/presentation/queue/view/QueueFragment$$PresentersBinder$a;
.super Lpf6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/queue/view/QueueFragment$$PresentersBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpf6<",
        "Lcom/warefly/checkscan/presentation/queue/view/QueueFragment;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Lih5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/queue/view/QueueFragment;

    check-cast p2, Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;

    iput-object p2, p1, Lcom/warefly/checkscan/presentation/queue/view/QueueFragment;->presenter:Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;

    return-void
.end method

.method public final b(Ljava/lang/Object;)Lih5;
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/queue/view/QueueFragment;

    invoke-virtual {p1}, Lcom/warefly/checkscan/presentation/queue/view/QueueFragment;->providePresenter()Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter;

    move-result-object p0

    return-object p0
.end method
