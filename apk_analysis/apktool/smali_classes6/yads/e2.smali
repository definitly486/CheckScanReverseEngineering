.class public abstract Lyads/e2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/yandex/mobile/ads/common/AdActivity;Landroid/widget/RelativeLayout;Lyads/i2;Lyads/f2;)Lyads/n2;
    .locals 9

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v7, 0x0

    if-eqz p3, :cond_0

    :try_start_0
    iget-object v0, p3, Lyads/f2;->c:Lyads/h9;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object v0, v7

    :goto_0
    new-instance v3, Lyads/x2;

    invoke-direct {v3, p0, v0}, Lyads/x2;-><init>(Lcom/yandex/mobile/ads/common/AdActivity;Lyads/h9;)V

    sget-object v0, Lyads/q2;->b:Lyads/p2;

    invoke-virtual {v0}, Lyads/p2;->a()Lyads/q2;

    move-result-object v8

    monitor-enter v8

    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "window_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_1
    move-object v0, v7

    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, v8, Lyads/q2;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/o2;

    if-eqz v0, :cond_2

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lyads/o2;->a(Lcom/yandex/mobile/ads/common/AdActivity;Landroid/widget/RelativeLayout;Lyads/x2;Lyads/i2;Landroid/view/Window;Lyads/f2;)Lyads/n2;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v8

    goto :goto_2

    :cond_2
    monitor-exit v8

    :goto_2
    return-object v7

    :goto_3
    monitor-exit v8

    throw p0
.end method
