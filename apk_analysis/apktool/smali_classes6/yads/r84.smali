.class public abstract Lyads/r84;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/zg5;

.field public static volatile b:Lyads/q84;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lyads/zg5;->l:Lyads/zg5;

    if-nez v0, :cond_1

    sget-object v0, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyads/zg5;->l:Lyads/zg5;

    if-nez v1, :cond_0

    new-instance v1, Lyads/zg5;

    invoke-direct {v1}, Lyads/zg5;-><init>()V

    sput-object v1, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    move-object v0, v1

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    :goto_2
    sput-object v0, Lyads/r84;->a:Lyads/zg5;

    return-void
.end method

.method public static final a(Lyads/io6;Landroid/content/Context;)Lyads/ho6;
    .locals 5

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    sget-object p0, Lyads/io6;->c:Lyads/ho6;

    if-nez p0, :cond_3

    sget-object p0, Lyads/io6;->b:Ljava/lang/Object;

    monitor-enter p0

    .line 90
    :try_start_0
    sget-object v0, Lyads/io6;->c:Lyads/ho6;

    if-nez v0, :cond_2

    .line 91
    invoke-static {p1}, Lyads/za;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "322a737a-a0ca-44e0-bc85-649b1c7c1db6"

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string v0, "478cb909-6ad1-4e12-84cc-b3629a789f93"

    .line 92
    :goto_0
    new-instance v1, Lyads/eg;

    .line 93
    new-instance v2, Lyads/lg;

    invoke-direct {v2, p1}, Lyads/lg;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-direct {v1, v2, p1}, Lyads/eg;-><init>(Lyads/lg;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :try_start_1
    iget-object v2, v1, Lyads/eg;->a:Lyads/j95;

    sget-object v3, Lyads/eg;->b:[Lze4;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v1, v3}, Lyads/j95;->getValue(Ljava/lang/Object;Lze4;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/wm0;

    if-eqz v2, :cond_1

    .line 96
    iget-object v2, v2, Lyads/wm0;->a:Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter;

    .line 97
    iget-object v3, v2, Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter;->b:Lcom/yandex/varioqub/appmetricaadapter/impl/d;

    .line 98
    iget-object v2, v2, Lcom/yandex/varioqub/appmetricaadapter/AppMetricaAdapter;->a:Landroid/content/Context;

    invoke-interface {v3, v2, v0}, Lcom/yandex/varioqub/appmetricaadapter/impl/d;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 99
    :catchall_1
    :cond_1
    :try_start_2
    new-instance v0, Lyads/ho6;

    invoke-direct {v0, p1, v1}, Lyads/ho6;-><init>(Landroid/content/Context;Lyads/eg;)V

    .line 100
    sput-object v0, Lyads/io6;->c:Lyads/ho6;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    :cond_2
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw p1

    :cond_3
    return-object p0
.end method

.method public static a(Landroid/content/Context;Lyads/fe5;Lyads/lm6;)Lyads/q84;
    .locals 4

    sget-object v0, Lyads/io6;->a:Lyads/io6;

    new-instance v1, Lyads/ng;

    invoke-direct {v1}, Lyads/ng;-><init>()V

    invoke-static {p0}, Lyads/dg;->a(Landroid/content/Context;)Lyads/vg;

    move-result-object v2

    invoke-static {p0}, Lyads/za;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "322a737a-a0ca-44e0-bc85-649b1c7c1db6"

    goto :goto_0

    :cond_0
    const-string v3, "478cb909-6ad1-4e12-84cc-b3629a789f93"

    :goto_0
    invoke-virtual {v2, p0, v3, p2}, Lyads/vg;->a(Landroid/content/Context;Ljava/lang/String;Lyads/lm6;)Lyads/wg;

    move-result-object p2

    new-instance v2, Lp7a;

    invoke-direct {v2, v0, p0}, Lp7a;-><init>(Lyads/io6;Landroid/content/Context;)V

    new-instance v0, Lfh8;

    invoke-direct {v0, v2}, Lfh8;-><init>(Lll3;)V

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lyads/fe5;->i0:Z

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    new-instance p1, Lyads/q84;

    invoke-direct {p1, p2, v0, v2}, Lyads/q84;-><init>(Lyads/wg;Lcl4;Z)V

    new-instance p2, Lyads/ge5;

    invoke-direct {p2, p0, v1}, Lyads/ge5;-><init>(Landroid/content/Context;Lyads/ng;)V

    iget-object p0, p2, Lyads/ge5;->b:Lyads/pe5;

    iget-object p2, p2, Lyads/ge5;->a:Lyads/he5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lyads/pe5;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lyads/pe5;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lyads/pe5;->a:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    :goto_3
    monitor-exit v0

    throw p0
.end method
