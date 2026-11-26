.class public final Lcom/yandex/mobile/ads/common/AdActivity;
.super Landroidx/activity/ComponentActivity;
.source "SourceFile"


# instance fields
.field private a:Lyads/iq4;

.field private b:Lyads/d2;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/common/AdActivity;->b:Lyads/d2;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lyads/d2;->c:Lyads/n2;

    invoke-interface {v0}, Lyads/n2;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/common/AdActivity;->b:Lyads/d2;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lyads/d2;->d:Lyads/i2;

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v0, p0, Lyads/i2;->c:I

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lyads/i2;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    iput p1, p0, Lyads/i2;->c:I

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lyads/i2;

    invoke-direct {p1, p0}, Lyads/i2;-><init>(Lcom/yandex/mobile/ads/common/AdActivity;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sget-object v1, Lyads/h2;->c:Lyads/h2;

    if-nez v1, :cond_1

    sget-object v1, Lyads/h2;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lyads/h2;->c:Lyads/h2;

    if-nez v2, :cond_0

    new-instance v2, Lyads/h2;

    invoke-direct {v2}, Lyads/h2;-><init>()V

    sput-object v2, Lyads/h2;->c:Lyads/h2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    move-object v1, v2

    goto :goto_2

    :goto_1
    monitor-exit v1

    throw p0

    :cond_1
    :goto_2
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "data_identifier"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "data_identifier"

    const-wide/16 v5, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    :catch_0
    :cond_2
    move-object v7, v2

    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lyads/h2;->a(J)Lyads/f2;

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object v1, v2

    :goto_3
    sget-object v3, Lyads/w2;->a:Lyads/kd0;

    if-nez v3, :cond_6

    if-eqz v1, :cond_6

    iget-object v3, v1, Lyads/f2;->d:Lyads/bf5;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_5

    move-object v4, p0

    :cond_5
    new-instance v5, Lyads/kd0;

    invoke-direct {v5, v4, v3}, Lyads/kd0;-><init>(Landroid/content/Context;Lyads/bf5;)V

    sput-object v5, Lyads/w2;->a:Lyads/kd0;

    :cond_6
    sget-object v3, Lyads/w2;->a:Lyads/kd0;

    if-eqz v3, :cond_7

    new-instance v4, Lyads/h75;

    const/4 v5, 0x3

    invoke-direct {v4, v2, v5}, Lyads/h75;-><init>(Ljava/util/Map;I)V

    new-instance v5, Lyads/jd0;

    iget-object v3, v3, Lyads/kd0;->a:Lyads/q84;

    invoke-direct {v5, v3, v4}, Lyads/jd0;-><init>(Lyads/q84;Lyads/h75;)V

    goto :goto_4

    :cond_7
    move-object v5, v2

    :goto_4
    if-eqz v1, :cond_8

    if-eqz v5, :cond_9

    sget-object v3, Lyads/id0;->d:Lyads/id0;

    invoke-virtual {v5, v3}, Lyads/jd0;->a(Lyads/id0;)V

    goto :goto_5

    :cond_8
    if-eqz v5, :cond_9

    sget-object v3, Lyads/id0;->e:Lyads/id0;

    invoke-virtual {v5, v3}, Lyads/jd0;->a(Lyads/id0;)V

    :cond_9
    :goto_5
    invoke-static {p0, v0, p1, v1}, Lyads/e2;->a(Lcom/yandex/mobile/ads/common/AdActivity;Landroid/widget/RelativeLayout;Lyads/i2;Lyads/f2;)Lyads/n2;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v3, Lyads/d2;

    invoke-direct {v3, p0, v0, v1, p1}, Lyads/d2;-><init>(Lcom/yandex/mobile/ads/common/AdActivity;Landroid/widget/RelativeLayout;Lyads/n2;Lyads/i2;)V

    goto :goto_6

    :cond_a
    move-object v3, v2

    :goto_6
    iput-object v3, p0, Lcom/yandex/mobile/ads/common/AdActivity;->b:Lyads/d2;

    if-eqz v3, :cond_b

    iget-object p1, v3, Lyads/d2;->c:Lyads/n2;

    invoke-interface {p1}, Lyads/n2;->f()V

    iget-object p1, v3, Lyads/d2;->c:Lyads/n2;

    invoke-interface {p1}, Lyads/n2;->c()V

    iget-object p1, v3, Lyads/d2;->b:Landroid/widget/RelativeLayout;

    const-string v0, "root_layout"

    invoke-static {v0}, Lyads/bh6;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p1, v3, Lyads/d2;->a:Lcom/yandex/mobile/ads/common/AdActivity;

    iget-object v0, v3, Lyads/d2;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;)V

    sget-object v2, Lj59;->a:Lj59;

    :cond_b
    if-nez v2, :cond_c

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_c
    iget-object p1, p0, Lcom/yandex/mobile/ads/common/AdActivity;->b:Lyads/d2;

    invoke-static {p0, p1}, Lyads/lq4;->a(Lcom/yandex/mobile/ads/common/AdActivity;Lyads/d2;)Lyads/iq4;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/common/AdActivity;->a:Lyads/iq4;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Lyads/iq4;->a()V

    :cond_d
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/common/AdActivity;->b:Lyads/d2;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lyads/d2;->c:Lyads/n2;

    invoke-interface {v1}, Lyads/n2;->onAdClosed()V

    iget-object v1, v0, Lyads/d2;->c:Lyads/n2;

    invoke-interface {v1}, Lyads/n2;->g()V

    iget-object v0, v0, Lyads/d2;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/common/AdActivity;->a:Lyads/iq4;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lyads/iq4;->destroy()V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public final onPause()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/common/AdActivity;->b:Lyads/d2;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lyads/d2;->c:Lyads/n2;

    invoke-interface {v1}, Lyads/n2;->b()V

    iget-object v0, v0, Lyads/d2;->d:Lyads/i2;

    iget-object v0, v0, Lyads/i2;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/j2;

    invoke-interface {v1}, Lyads/j2;->b()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/common/AdActivity;->b:Lyads/d2;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lyads/d2;->c:Lyads/n2;

    invoke-interface {v0}, Lyads/n2;->a()V

    iget-object p0, p0, Lyads/d2;->d:Lyads/i2;

    iget-object p0, p0, Lyads/i2;->b:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/j2;

    invoke-interface {v0}, Lyads/j2;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method
