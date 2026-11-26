.class public final synthetic Lxl;
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

    iput p2, p0, Lxl;->b:I

    iput-object p1, p0, Lxl;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, Lxl;->b:I

    iget-object p0, p0, Lxl;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/q25;

    invoke-static {p0}, Lyads/q25;->b(Lyads/q25;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/my/target/n0;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/my/target/n0;->b:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/my/target/n0;->g:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-static {v1}, Ll3a;->a(Landroid/view/View;)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/my/target/n0;->e:Ls5a;

    iget-object v4, v4, Ls5a;->b:Ljava/util/List;

    iget-object v5, p0, Lcom/my/target/n0;->d:Ls5a;

    iget-object v6, v5, Ls5a;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_7

    :cond_1
    const/high16 v7, -0x40800000    # -1.0f

    if-nez v1, :cond_2

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsna;

    iput v7, v0, Lsna;->j:F

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ls5a;->a()Ls5a;

    move-result-object v1

    iget-object v5, v1, Ls5a;->b:Ljava/util/List;

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v8, :cond_8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v10

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lht9;

    iget v11, v11, Lht9;->i:F

    invoke-static {v11, v0}, Ly14;->a(FF)I

    move-result v11

    if-ne v11, v10, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v6, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lht9;

    iget v11, v8, Lo2a;->f:I

    iget-boolean v12, v8, Lht9;->h:Z

    int-to-double v13, v11

    cmpg-double v11, v13, v2

    if-gtz v11, :cond_5

    move v9, v10

    :cond_5
    if-eqz v9, :cond_6

    if-nez v12, :cond_7

    :cond_6
    if-nez v9, :cond_3

    if-nez v12, :cond_3

    :cond_7
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsna;

    iget v8, v6, Lo2a;->f:I

    iget v11, v6, Lsna;->j:F

    int-to-double v12, v8

    cmpg-double v8, v2, v12

    if-gez v8, :cond_9

    move v8, v10

    goto :goto_5

    :cond_9
    move v8, v9

    :goto_5
    const/4 v12, 0x0

    cmpg-float v12, v11, v12

    if-gez v12, :cond_a

    move v12, v10

    goto :goto_6

    :cond_a
    move v12, v9

    :goto_6
    if-eqz v8, :cond_b

    iput v7, v6, Lsna;->j:F

    goto :goto_4

    :cond_b
    if-eqz v12, :cond_c

    iput v0, v6, Lsna;->j:F

    goto :goto_4

    :cond_c
    sub-float v8, v0, v11

    iget v11, v6, Lsna;->h:F

    invoke-static {v8, v11}, Ly14;->a(FF)I

    move-result v8

    const/4 v11, -0x1

    if-ne v8, v11, :cond_d

    goto :goto_4

    :cond_d
    iget-boolean v8, v6, Lsna;->i:Z

    if-eqz v8, :cond_e

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    :cond_f
    iget-object p0, p0, Lcom/my/target/n0;->h:Lcom/my/target/m1$b;

    invoke-static {v1, p0}, Lcom/my/target/m1;->g(Ls5a;Lcom/my/target/m1$b;)V

    :cond_10
    :goto_7
    return-void

    :pswitch_1
    check-cast p0, Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;

    invoke-static {p0}, Landroidx/webkit/WebViewCompat;->b(Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;

    new-instance v0, Lv89$c;

    invoke-direct {v0}, Lv89$c;-><init>()V

    sget-object v1, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->f:Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog$a;

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->g(Lv89;)V

    return-void

    :pswitch_3
    check-cast p0, Landroidx/room/RoomTrackingLiveData;

    invoke-static {p0}, Landroidx/room/RoomTrackingLiveData$observer$1;->a(Landroidx/room/RoomTrackingLiveData;)V

    return-void

    :pswitch_4
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/fragment/app/Fragment;->c(Landroidx/fragment/app/Fragment;)V

    return-void

    :pswitch_5
    check-cast p0, Landroidx/core/util/Consumer;

    invoke-static {p0}, Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi0;->a(Landroidx/core/util/Consumer;)V

    return-void

    :pswitch_6
    check-cast p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;

    sget v0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->C:I

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->b:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_11

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_11

    iget-object v0, p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->e()V

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_9

    :cond_11
    :goto_8
    sget-object v0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_9
    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
