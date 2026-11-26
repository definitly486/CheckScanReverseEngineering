.class public final Lyads/r1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic m:[Lze4;


# instance fields
.field public final a:Lyads/e4;

.field public final b:Lyads/d9;

.field public final c:Lyads/mt2;

.field public final d:Lyads/u8;

.field public final e:Lyads/q84;

.field public final f:Lyads/tt2;

.field public final g:Lyads/qt2;

.field public final h:Z

.field public final i:Lyads/e55;

.field public j:Lyads/q1;

.field public k:Lyads/zh4;

.field public l:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lyads/r1;

    const-string v1, "activityInteractionEventListener"

    const-string v2, "getActivityInteractionEventListener()Lcom/monetization/ads/base/tracker/interaction/ActivityInteractionEventListener;"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lyads/cb;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lbf4;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v3

    sput-object v1, Lyads/r1;->m:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/d9;Lyads/p1;Lyads/mt2;)V
    .locals 5

    new-instance v0, Lyads/u8;

    invoke-direct {v0}, Lyads/u8;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p3

    check-cast v1, Lyads/do6;

    new-instance v2, Lyads/lm6;

    iget-object v1, v1, Lyads/do6;->a:Landroid/content/Context;

    invoke-direct {v2, v1}, Lyads/lm6;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v2}, Lyads/re;->a(Landroid/content/Context;Lyads/lm6;)Lyads/q84;

    move-result-object v1

    if-eqz p6, :cond_0

    new-instance v2, Lyads/tt2;

    invoke-direct {v2, p1, p2, p3, p6}, Lyads/tt2;-><init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/mt2;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {p1}, Lyads/pt2;->a(Landroid/content/Context;)Lyads/qt2;

    move-result-object p3

    sget-object v3, Lyads/zg5;->l:Lyads/zg5;

    if-nez v3, :cond_2

    sget-object v3, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lyads/zg5;->l:Lyads/zg5;

    if-nez v4, :cond_1

    new-instance v4, Lyads/zg5;

    invoke-direct {v4}, Lyads/zg5;-><init>()V

    sput-object v4, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v3

    move-object v3, v4

    goto :goto_3

    :goto_2
    monitor-exit v3

    throw p0

    :cond_2
    :goto_3
    invoke-virtual {v3, p1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-boolean p1, p1, Lyads/fe5;->J:Z

    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    goto :goto_4

    :cond_3
    const/4 v3, 0x0

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/r1;->a:Lyads/e4;

    iput-object p4, p0, Lyads/r1;->b:Lyads/d9;

    iput-object p6, p0, Lyads/r1;->c:Lyads/mt2;

    iput-object v0, p0, Lyads/r1;->d:Lyads/u8;

    iput-object v1, p0, Lyads/r1;->e:Lyads/q84;

    iput-object v2, p0, Lyads/r1;->f:Lyads/tt2;

    iput-object p3, p0, Lyads/r1;->g:Lyads/qt2;

    iput-boolean v3, p0, Lyads/r1;->h:Z

    new-instance p1, Lyads/e55;

    invoke-direct {p1, p5}, Lyads/e55;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lyads/r1;->i:Lyads/e55;

    return-void
.end method


# virtual methods
.method public final a(Lyads/q1;Ljava/lang/String;)Lyads/g75;
    .locals 2

    iget-object v0, p0, Lyads/r1;->d:Lyads/u8;

    iget-object v1, p0, Lyads/r1;->a:Lyads/e4;

    iget-object v1, v1, Lyads/e4;->e:Lyads/n8;

    invoke-virtual {v0, v1}, Lyads/u8;->a(Lyads/n8;)Lyads/h75;

    move-result-object v0

    const-string v1, "type"

    iget-object p1, p1, Lyads/q1;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lyads/r1;->a:Lyads/e4;

    iget-object p1, p1, Lyads/e4;->a:Lyads/n70;

    iget-object p1, p1, Lyads/n70;->b:Ljava/lang/String;

    const-string v1, "ad_type"

    invoke-virtual {v0, p1, v1}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lyads/r1;->a:Lyads/e4;

    iget-object p1, p1, Lyads/e4;->c:Lyads/ma;

    iget-object p1, p1, Lyads/ma;->a:Ljava/lang/String;

    const-string v1, "ad_unit_id"

    invoke-virtual {v0, p1, v1}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "interval"

    invoke-virtual {v0, p2, p1}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lyads/r1;->k:Lyads/zh4;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lyads/zh4;->a()Lyads/h75;

    move-result-object p1

    invoke-static {v0, p1}, Lyads/i75;->a(Lyads/h75;Lyads/h75;)Lyads/h75;

    move-result-object v0

    :cond_0
    new-instance p1, Lyads/g75;

    sget-object p2, Lyads/e75;->c:Lyads/e75;

    iget-object p2, v0, Lyads/h75;->a:Ljava/util/Map;

    iget-object p0, p0, Lyads/r1;->b:Lyads/d9;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lyads/d9;->i:Lyads/c;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    const-string v0, "returned_to_app"

    invoke-static {p2}, Ln05;->n(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p2

    invoke-direct {p1, v0, p2, p0}, Lyads/g75;-><init>(Ljava/lang/String;Ljava/util/Map;Lyads/c;)V

    return-object p1
.end method

.method public final a(Lyads/q1;)V
    .locals 6

    .line 80
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    iget-wide v0, p0, Lyads/r1;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lyads/r1;->j:Lyads/q1;

    if-ne v0, p1, :cond_3

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 83
    iget-wide v4, p0, Lyads/r1;->l:J

    sub-long/2addr v0, v4

    .line 84
    invoke-static {v0, v1}, Lyads/zp3;->a(J)Ljava/lang/String;

    move-result-object v4

    .line 85
    invoke-virtual {p0, p1, v4}, Lyads/r1;->a(Lyads/q1;Ljava/lang/String;)Lyads/g75;

    move-result-object p1

    .line 86
    iget-object v4, p0, Lyads/r1;->e:Lyads/q84;

    invoke-virtual {v4, p1}, Lyads/q84;->a(Lyads/g75;)V

    .line 87
    iget-object p1, p0, Lyads/r1;->i:Lyads/e55;

    sget-object v4, Lyads/r1;->m:[Lze4;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    .line 88
    iget-object p1, p1, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    .line 89
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    .line 90
    check-cast p1, Lyads/p1;

    if-eqz p1, :cond_0

    .line 91
    invoke-interface {p1}, Lyads/p1;->onReturnedToApplication()V

    .line 92
    :cond_0
    iget-object p1, p0, Lyads/r1;->f:Lyads/tt2;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0, v1}, Lyads/tt2;->a(J)V

    .line 93
    :cond_1
    iget-boolean p1, p0, Lyads/r1;->h:Z

    if-eqz p1, :cond_2

    .line 94
    iget-object p1, p0, Lyads/r1;->g:Lyads/qt2;

    iget-wide v0, p0, Lyads/r1;->l:J

    invoke-virtual {p1, v0, v1}, Lyads/qt2;->a(J)V

    .line 95
    :cond_2
    iput-wide v2, p0, Lyads/r1;->l:J

    const/4 p1, 0x0

    .line 96
    iput-object p1, p0, Lyads/r1;->j:Lyads/q1;

    :cond_3
    return-void
.end method

.method public final b(Lyads/q1;)V
    .locals 10

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lyads/r1;->l:J

    iput-object p1, p0, Lyads/r1;->j:Lyads/q1;

    sget-object v0, Lyads/q1;->c:Lyads/q1;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lyads/r1;->h:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lyads/r1;->a(Lyads/q1;Ljava/lang/String;)Lyads/g75;

    move-result-object v1

    invoke-virtual {v1}, Lyads/g75;->b()Ljava/util/Map;

    move-result-object v8

    iget-object v1, p0, Lyads/r1;->b:Lyads/d9;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lyads/d9;->a()Lyads/c;

    move-result-object v0

    :cond_0
    move-object v9, v0

    new-instance v2, Lyads/nt2;

    iget-object v0, p0, Lyads/r1;->a:Lyads/e4;

    invoke-virtual {v0}, Lyads/e4;->a()Lyads/n70;

    move-result-object v3

    iget-wide v4, p0, Lyads/r1;->l:J

    iget-object v7, p0, Lyads/r1;->c:Lyads/mt2;

    move-object v6, p1

    invoke-direct/range {v2 .. v9}, Lyads/nt2;-><init>(Lyads/n70;JLyads/q1;Lyads/mt2;Ljava/util/Map;Lyads/c;)V

    iget-object p0, p0, Lyads/r1;->g:Lyads/qt2;

    invoke-virtual {p0, v2}, Lyads/qt2;->a(Lyads/nt2;)V

    :cond_1
    return-void
.end method
