.class public final synthetic Loh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Loh;->b:I

    iput-object p1, p0, Loh;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Loh;->b:I

    iget-object p0, p0, Loh;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/q25;

    invoke-static {p0}, Lyads/q25;->a(Lyads/q25;)V

    return-void

    :pswitch_0
    check-cast p0, Ldc6;

    iget-object v0, p0, Ldc6;->d:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;

    sget v0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->C:I

    invoke-virtual {p0}, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->d()V

    invoke-virtual {p0}, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->c()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->b:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->e()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0

    :pswitch_2
    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeView$Companion;->b(Landroidx/compose/ui/platform/AndroidComposeView;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
