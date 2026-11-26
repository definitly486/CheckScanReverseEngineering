.class public final Lyads/xi0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/gv5;


# instance fields
.field public final a:Lyads/e4;

.field public final b:Lyads/d9;

.field public final c:Lyads/h9;

.field public final d:Lyads/v2;

.field public final e:Lyads/wn2;

.field public final f:Z

.field public final g:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/bf5;Lyads/e4;Lyads/d9;Lyads/h9;Z)V
    .locals 3

    new-instance v0, Lyads/v2;

    invoke-direct {v0, p2}, Lyads/v2;-><init>(Lyads/bf5;)V

    sget-object p2, Lyads/wn2;->c:Lyads/wn2;

    if-nez p2, :cond_1

    sget-object p2, Lyads/wn2;->d:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    sget-object v1, Lyads/wn2;->c:Lyads/wn2;

    if-nez v1, :cond_0

    new-instance v1, Lyads/wn2;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lyads/wn2;-><init>(Landroid/content/Context;)V

    sput-object v1, Lyads/wn2;->c:Lyads/wn2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p2

    move-object p2, v1

    goto :goto_2

    :goto_1
    monitor-exit p2

    throw p0

    :cond_1
    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lyads/xi0;->a:Lyads/e4;

    iput-object p4, p0, Lyads/xi0;->b:Lyads/d9;

    iput-object p5, p0, Lyads/xi0;->c:Lyads/h9;

    iput-object v0, p0, Lyads/xi0;->d:Lyads/v2;

    iput-object p2, p0, Lyads/xi0;->e:Lyads/wn2;

    iput-boolean p6, p0, Lyads/xi0;->f:Z

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lyads/xi0;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lyads/fv5;
    .locals 14

    iget-object v0, p0, Lyads/xi0;->e:Lyads/wn2;

    iget-object v0, v0, Lyads/wn2;->a:Lyads/vn2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lyads/xi0;->b:Lyads/d9;

    iget-boolean v0, v0, Lyads/d9;->C:Z

    iget-object v1, p0, Lyads/xi0;->d:Lyads/v2;

    iget-object v2, p0, Lyads/xi0;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/content/Context;

    iget-object v5, p0, Lyads/xi0;->a:Lyads/e4;

    iget-object v6, p0, Lyads/xi0;->b:Lyads/d9;

    iget-object v7, p0, Lyads/xi0;->c:Lyads/h9;

    iget-boolean p0, p0, Lyads/xi0;->f:Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v4, :cond_f

    sget-object v2, Lyads/u2;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-object v8, Lyads/u2;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v8

    sub-long/2addr v2, v8

    const-wide/16 v8, 0x0

    cmp-long v8, v8, v2

    if-gtz v8, :cond_0

    const-wide/16 v8, 0x3e9

    cmp-long v2, v2, v8

    if-gez v2, :cond_0

    goto/16 :goto_a

    :cond_0
    sget-object v2, Lyads/zg5;->l:Lyads/zg5;

    if-nez v2, :cond_2

    sget-object v2, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lyads/zg5;->l:Lyads/zg5;

    if-nez v3, :cond_1

    new-instance v3, Lyads/zg5;

    invoke-direct {v3}, Lyads/zg5;-><init>()V

    sput-object v3, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v2

    move-object v2, v3

    goto :goto_2

    :goto_1
    monitor-exit v2

    throw p0

    :cond_2
    :goto_2
    invoke-virtual {v2, v4}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v2

    iget-object v3, v1, Lyads/v2;->d:Lyads/n50;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v9, 0x0

    if-nez v2, :cond_3

    goto :goto_4

    :cond_3
    iget-object v2, v2, Lyads/fe5;->W:Ljava/lang/String;

    if-eqz v2, :cond_5

    sget-object v8, Lyads/d00;->c:Lyads/c00;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lyads/d00;->values()[Lyads/d00;

    move-result-object v8

    array-length v10, v8

    move v11, v3

    :goto_3
    if-ge v11, v10, :cond_5

    aget-object v12, v8, v11

    iget-object v13, v12, Lyads/d00;->b:Ljava/lang/String;

    invoke-static {v13, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    move-object v12, v9

    :goto_5
    if-nez p0, :cond_7

    if-eqz v0, :cond_6

    if-eqz v12, :cond_7

    :cond_6
    sget-object p0, Lyads/d00;->d:Lyads/d00;

    if-ne p0, v12, :cond_b

    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_8

    goto :goto_7

    :cond_8
    const-string p0, "http(s?)://"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, ""

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lyads/d56;->values()[Lyads/d56;

    move-result-object v0

    array-length v2, v0

    move v8, v3

    :goto_6
    if-ge v8, v2, :cond_a

    aget-object v10, v0, v8

    iget-object v10, v10, Lyads/d56;->b:Ljava/lang/String;

    invoke-static {p0, v10, v3}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_8

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_a
    :goto_7
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    sget-object p0, Lyads/yz;->a:Lyads/yz;

    iget-object v0, v1, Lyads/v2;->a:Lyads/b00;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lyads/a00;->a(Lyads/zz;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "{CLICK_DEST}"

    invoke-static {v2, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lyads/v2;->b:Lyads/zv3;

    invoke-virtual {v2, p1, v0}, Lyads/zv3;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    iget-object v3, v1, Lyads/v2;->c:Lyads/dv;

    invoke-virtual/range {v3 .. v8}, Lyads/dv;->a(Landroid/content/Context;Lyads/e4;Lyads/d9;Lyads/h9;Ljava/lang/String;)Z

    move-result v3

    goto :goto_9

    :cond_b
    :goto_8
    sget-object p0, Lyads/xz;->a:Lyads/xz;

    iget-object v0, v1, Lyads/v2;->a:Lyads/b00;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lyads/a00;->a(Lyads/zz;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "{CLICK_DEST}"

    invoke-static {v2, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lyads/v2;->b:Lyads/zv3;

    invoke-virtual {v2, p1, v0}, Lyads/zv3;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    iget-object p1, v1, Lyads/v2;->e:Lyads/q56;

    invoke-virtual {p1, v4, v8}, Lyads/q56;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x7

    invoke-virtual {v7, p1, v9}, Lyads/h9;->a(ILandroid/os/Bundle;)V

    const/4 v3, 0x1

    goto :goto_9

    :cond_c
    invoke-static {v8}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object v3, v1, Lyads/v2;->c:Lyads/dv;

    invoke-virtual/range {v3 .. v8}, Lyads/dv;->a(Landroid/content/Context;Lyads/e4;Lyads/d9;Lyads/h9;Ljava/lang/String;)Z

    move-result v3

    :cond_d
    :goto_9
    const/16 p1, 0x9

    invoke-virtual {v7, p1, v9}, Lyads/h9;->a(ILandroid/os/Bundle;)V

    if-eqz v3, :cond_e

    new-instance p1, Lyads/ev5;

    sget-object v0, Lyads/d75;->d:Lyads/d75;

    invoke-direct {p1, v0, p0, v8}, Lyads/ev5;-><init>(Lyads/d75;Lyads/zz;Ljava/lang/String;)V

    return-object p1

    :cond_e
    new-instance p0, Lyads/dv5;

    sget-object p1, Lyads/d75;->d:Lyads/d75;

    invoke-direct {p0, p1}, Lyads/dv5;-><init>(Lyads/d75;)V

    return-object p0

    :cond_f
    :goto_a
    new-instance p0, Lyads/dv5;

    sget-object p1, Lyads/d75;->d:Lyads/d75;

    invoke-direct {p0, p1}, Lyads/dv5;-><init>(Lyads/d75;)V

    return-object p0
.end method
