.class public final Ll5a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj5a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll5a$a;,
        Ll5a$c;,
        Ll5a$b;
    }
.end annotation


# instance fields
.field public final b:Ld9a;

.field public final c:Lpo9;

.field public final d:Lm6a;

.field public e:Lzs9;

.field public f:J

.field public g:J

.field public volatile h:Ljava/util/HashMap;

.field public final i:Ljava/util/WeakHashMap;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lw4a;->h:Landroid/os/Handler;

    new-instance v1, Ld9a;

    const/16 v2, 0x3a98

    invoke-direct {v1, v2, v0}, Ld9a;-><init>(ILandroid/os/Handler;)V

    iput-object v1, p0, Ll5a;->b:Ld9a;

    new-instance v0, Lpo9;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lpo9;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Ll5a;->c:Lpo9;

    new-instance v0, Lm6a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ll5a;->d:Lm6a;

    new-instance v0, Lzs9;

    invoke-direct {v0}, Lzs9;-><init>()V

    iput-object v0, p0, Ll5a;->e:Lzs9;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ll5a;->h:Ljava/util/HashMap;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Ll5a;->i:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public final b(Lpp9;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Ll5a;->f:J

    iget-wide v4, p0, Ll5a;->g:J

    sub-long/2addr v0, v4

    add-long v8, v0, v2

    iget-object v0, p1, Lpp9;->a:Lz8a;

    iget v1, v0, Lz8a;->h:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    new-instance v4, Ll5a$c;

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v4 .. v11}, Ll5a$c;-><init>(IIIJLjava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget p2, v0, Lz8a;->h:I

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_1
    iget-object p2, p0, Ll5a;->h:Ljava/util/HashMap;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Ll5a;->i:Ljava/util/WeakHashMap;

    :goto_0
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll5a$a;

    if-nez v1, :cond_3

    new-instance v1, Ll5a$a;

    invoke-direct {v1}, Ll5a$a;-><init>()V

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object p2, v1, Ll5a$a;->b:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ll5a$b;

    if-nez p2, :cond_4

    new-instance p2, Ll5a$b;

    invoke-direct {p2}, Ll5a$b;-><init>()V

    iget-object v0, v1, Ll5a$a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object p1, p2, Ll5a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(Lz8a;ZLr8a;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p3}, Lr8a;->run()V

    iget-object p3, p0, Ll5a;->i:Ljava/util/WeakHashMap;

    invoke-virtual {p3, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ll5a$a;

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object p2, p0, Ll5a;->h:Ljava/util/HashMap;

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d(Lz8a;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Ll5a;->f:J

    iget-wide v4, p0, Ll5a;->g:J

    sub-long/2addr v0, v4

    add-long v8, v0, v2

    iget v0, p1, Lz8a;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v4, Ll5a$c;

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v4 .. v11}, Ll5a$c;-><init>(IIIJLjava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget p2, p1, Lz8a;->h:I

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_1
    iget-object p2, p0, Ll5a;->h:Ljava/util/HashMap;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Ll5a;->i:Ljava/util/WeakHashMap;

    :goto_0
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll5a$a;

    if-nez v0, :cond_3

    new-instance v0, Ll5a$a;

    invoke-direct {v0}, Ll5a$a;-><init>()V

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object p1, v0, Ll5a$a;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
