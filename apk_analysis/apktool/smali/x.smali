.class public final synthetic Lx;
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

    iput p2, p0, Lx;->b:I

    iput-object p1, p0, Lx;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lx;->b:I

    iget-object p0, p0, Lx;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lio/appmetrica/analytics/impl/x1;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/x1;->d()V

    return-void

    :pswitch_0
    check-cast p0, Lyads/pg6;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :pswitch_1
    check-cast p0, Lll3;

    invoke-static {p0}, Lyads/d46;->b(Lll3;)V

    return-void

    :pswitch_2
    check-cast p0, Ljk9;

    iget-object v0, p0, Ljk9;->d:Leh8;

    new-instance v1, Lup0;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lup0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Leh8;->a(Leh8$a;)Ljava/lang/Object;

    return-void

    :pswitch_3
    check-cast p0, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;

    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;->issueNextRequest()V

    return-void

    :pswitch_4
    check-cast p0, Lod6;

    iget-object v0, p0, Lod6;->e:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lod6;->e:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0

    :pswitch_5
    check-cast p0, Landroidx/compose/ui/platform/AbstractComposeView;

    invoke-static {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->a(Landroidx/compose/ui/platform/AbstractComposeView;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
