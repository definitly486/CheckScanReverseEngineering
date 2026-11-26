.class public final Lyads/wl0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Lyads/ut5;

.field public static final i:Ljava/util/Random;


# instance fields
.field public final a:Lyads/jx5;

.field public final b:Lyads/hx5;

.field public final c:Ljava/util/HashMap;

.field public final d:Lyads/ut5;

.field public e:Lyads/w04;

.field public f:Lyads/kx5;

.field public g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmga;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/wl0;->h:Lyads/ut5;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lyads/wl0;->i:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lyads/wl0;->h:Lyads/ut5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/wl0;->d:Lyads/ut5;

    new-instance v0, Lyads/jx5;

    invoke-direct {v0}, Lyads/jx5;-><init>()V

    iput-object v0, p0, Lyads/wl0;->a:Lyads/jx5;

    new-instance v0, Lyads/hx5;

    invoke-direct {v0}, Lyads/hx5;-><init>()V

    iput-object v0, p0, Lyads/wl0;->b:Lyads/hx5;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lyads/wl0;->c:Ljava/util/HashMap;

    sget-object v0, Lyads/kx5;->b:Lyads/gx5;

    iput-object v0, p0, Lyads/wl0;->f:Lyads/kx5;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    const/16 v0, 0xc

    .line 168
    new-array v0, v0, [B

    .line 169
    sget-object v1, Lyads/wl0;->i:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    const/16 v1, 0xa

    .line 170
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(ILyads/h14;)Lyads/vl0;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lyads/wl0;->c:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const-wide v5, 0x7fffffffffffffffL

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyads/vl0;

    iget-wide v8, v7, Lyads/vl0;->c:J

    const-wide/16 v10, -0x1

    cmp-long v12, v8, v10

    if-nez v12, :cond_1

    iget v12, v7, Lyads/vl0;->b:I

    if-ne v1, v12, :cond_1

    if-eqz v2, :cond_1

    iget-wide v8, v2, Lyads/b14;->d:J

    iput-wide v8, v7, Lyads/vl0;->c:J

    :cond_1
    if-nez v2, :cond_2

    iget v12, v7, Lyads/vl0;->b:I

    if-ne v1, v12, :cond_0

    move-wide v15, v10

    goto :goto_1

    :cond_2
    iget-object v12, v7, Lyads/vl0;->d:Lyads/h14;

    if-nez v12, :cond_3

    invoke-virtual {v2}, Lyads/b14;->a()Z

    move-result v8

    if-nez v8, :cond_0

    iget-wide v8, v2, Lyads/b14;->d:J

    iget-wide v12, v7, Lyads/vl0;->c:J

    cmp-long v8, v8, v12

    if-nez v8, :cond_0

    move-wide v15, v10

    move-wide v8, v12

    goto :goto_1

    :cond_3
    iget-wide v13, v2, Lyads/b14;->d:J

    move-wide v15, v10

    iget-wide v10, v12, Lyads/b14;->d:J

    cmp-long v10, v13, v10

    if-nez v10, :cond_0

    iget v10, v2, Lyads/b14;->b:I

    iget v11, v12, Lyads/b14;->b:I

    if-ne v10, v11, :cond_0

    iget v10, v2, Lyads/b14;->c:I

    iget v11, v12, Lyads/b14;->c:I

    if-ne v10, v11, :cond_0

    :goto_1
    cmp-long v10, v8, v15

    if-eqz v10, :cond_5

    cmp-long v10, v8, v5

    if-gez v10, :cond_4

    goto :goto_2

    :cond_4
    if-nez v10, :cond_0

    sget v8, Lyads/u56;->a:I

    iget-object v8, v4, Lyads/vl0;->d:Lyads/h14;

    if-eqz v8, :cond_0

    iget-object v8, v7, Lyads/vl0;->d:Lyads/h14;

    if-eqz v8, :cond_0

    move-object v4, v7

    goto :goto_0

    :cond_5
    :goto_2
    move-object v4, v7

    move-wide v5, v8

    goto :goto_0

    :cond_6
    if-nez v4, :cond_7

    iget-object v3, v0, Lyads/wl0;->d:Lyads/ut5;

    invoke-interface {v3}, Lyads/ut5;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lyads/vl0;

    invoke-direct {v4, v0, v3, v1, v2}, Lyads/vl0;-><init>(Lyads/wl0;Ljava/lang/String;ILyads/h14;)V

    iget-object v0, v0, Lyads/wl0;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-object v4
.end method

.method public final declared-synchronized a(Lyads/ne;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 149
    :try_start_0
    iput-object v0, p0, Lyads/wl0;->g:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lyads/wl0;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 151
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/vl0;

    .line 153
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 154
    iget-boolean v2, v1, Lyads/vl0;->e:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lyads/wl0;->e:Lyads/w04;

    if-eqz v2, :cond_0

    .line 155
    iget-object v1, v1, Lyads/vl0;->a:Ljava/lang/String;

    invoke-virtual {v2, p1, v1}, Lyads/w04;->b(Lyads/ne;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(Lyads/ne;I)V
    .locals 3

    monitor-enter p0

    .line 156
    :try_start_0
    iget-object p2, p0, Lyads/wl0;->e:Lyads/w04;

    .line 157
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    iget-object p2, p0, Lyads/wl0;->c:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 159
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/vl0;

    .line 161
    invoke-virtual {v0, p1}, Lyads/vl0;->a(Lyads/ne;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 163
    iget-boolean v1, v0, Lyads/vl0;->e:Z

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, v0, Lyads/vl0;->a:Ljava/lang/String;

    iget-object v2, p0, Lyads/wl0;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 165
    iput-object v1, p0, Lyads/wl0;->g:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 166
    :cond_1
    :goto_1
    iget-object v1, p0, Lyads/wl0;->e:Lyads/w04;

    iget-object v0, v0, Lyads/vl0;->a:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Lyads/w04;->b(Lyads/ne;Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_2
    invoke-virtual {p0, p1}, Lyads/wl0;->b(Lyads/ne;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(Lyads/ne;)V
    .locals 6

    iget-object v0, p1, Lyads/ne;->b:Lyads/kx5;

    invoke-virtual {v0}, Lyads/kx5;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lyads/wl0;->g:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p0, Lyads/wl0;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lyads/wl0;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/vl0;

    iget v1, p1, Lyads/ne;->c:I

    iget-object v2, p1, Lyads/ne;->d:Lyads/h14;

    invoke-virtual {p0, v1, v2}, Lyads/wl0;->a(ILyads/h14;)Lyads/vl0;

    move-result-object v1

    iget-object v1, v1, Lyads/vl0;->a:Ljava/lang/String;

    iput-object v1, p0, Lyads/wl0;->g:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lyads/wl0;->c(Lyads/ne;)V

    iget-object v1, p1, Lyads/ne;->d:Lyads/h14;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lyads/b14;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    iget-wide v1, v0, Lyads/vl0;->c:J

    iget-object v3, p1, Lyads/ne;->d:Lyads/h14;

    iget-wide v4, v3, Lyads/b14;->d:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_1

    iget-object v0, v0, Lyads/vl0;->d:Lyads/h14;

    if-eqz v0, :cond_1

    iget v1, v0, Lyads/b14;->b:I

    iget v2, v3, Lyads/b14;->b:I

    if-ne v1, v2, :cond_1

    iget v0, v0, Lyads/b14;->c:I

    iget v1, v3, Lyads/b14;->c:I

    if-eq v0, v1, :cond_2

    :cond_1
    new-instance v0, Lyads/h14;

    iget-object v1, p1, Lyads/ne;->d:Lyads/h14;

    iget-object v2, v1, Lyads/b14;->a:Ljava/lang/Object;

    iget-wide v3, v1, Lyads/b14;->d:J

    invoke-direct {v0, v2, v3, v4}, Lyads/h14;-><init>(Ljava/lang/Object;J)V

    iget p1, p1, Lyads/ne;->c:I

    invoke-virtual {p0, p1, v0}, Lyads/wl0;->a(ILyads/h14;)Lyads/vl0;

    iget-object p0, p0, Lyads/wl0;->e:Lyads/w04;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    return-void
.end method

.method public final declared-synchronized c(Lyads/ne;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lyads/wl0;->e:Lyads/w04;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lyads/ne;->b:Lyads/kx5;

    invoke-virtual {v0}, Lyads/kx5;->c()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lyads/wl0;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lyads/wl0;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/vl0;

    iget-object v1, p1, Lyads/ne;->d:Lyads/h14;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-wide v2, v0, Lyads/vl0;->c:J

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    iget v0, v0, Lyads/vl0;->b:I

    iget v2, p1, Lyads/ne;->c:I

    if-eq v0, v2, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_1
    iget-wide v4, v1, Lyads/b14;->d:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v4, v2

    if-gez v0, :cond_2

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget v0, p1, Lyads/ne;->c:I

    invoke-virtual {p0, v0, v1}, Lyads/wl0;->a(ILyads/h14;)Lyads/vl0;

    move-result-object v0

    iget-object v1, p0, Lyads/wl0;->g:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, v0, Lyads/vl0;->a:Ljava/lang/String;

    iput-object v1, p0, Lyads/wl0;->g:Ljava/lang/String;

    :cond_3
    iget-object v1, p1, Lyads/ne;->d:Lyads/h14;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lyads/b14;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lyads/h14;

    iget-object v3, p1, Lyads/ne;->d:Lyads/h14;

    iget-object v4, v3, Lyads/b14;->a:Ljava/lang/Object;

    iget-wide v5, v3, Lyads/b14;->d:J

    iget v3, v3, Lyads/b14;->b:I

    invoke-direct {v1, v4, v5, v6, v3}, Lyads/h14;-><init>(Ljava/lang/Object;JI)V

    iget v3, p1, Lyads/ne;->c:I

    invoke-virtual {p0, v3, v1}, Lyads/wl0;->a(ILyads/h14;)Lyads/vl0;

    move-result-object v1

    iget-boolean v3, v1, Lyads/vl0;->e:Z

    if-nez v3, :cond_4

    iput-boolean v2, v1, Lyads/vl0;->e:Z

    iget-object v1, p1, Lyads/ne;->b:Lyads/kx5;

    iget-object v3, p1, Lyads/ne;->d:Lyads/h14;

    iget-object v3, v3, Lyads/b14;->a:Ljava/lang/Object;

    iget-object v4, p0, Lyads/wl0;->b:Lyads/hx5;

    invoke-virtual {v1, v3, v4}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    iget-object v1, p0, Lyads/wl0;->b:Lyads/hx5;

    iget-object v3, p1, Lyads/ne;->d:Lyads/h14;

    iget v3, v3, Lyads/b14;->b:I

    iget-object v1, v1, Lyads/hx5;->h:Lyads/a6;

    invoke-virtual {v1, v3}, Lyads/a6;->a(I)Lyads/z5;

    move-result-object v1

    iget-wide v3, v1, Lyads/z5;->b:J

    invoke-static {v3, v4}, Lyads/u56;->b(J)J

    move-result-wide v3

    iget-object v1, p0, Lyads/wl0;->b:Lyads/hx5;

    iget-wide v5, v1, Lyads/hx5;->f:J

    invoke-static {v5, v6}, Lyads/u56;->b(J)J

    move-result-wide v5

    add-long/2addr v5, v3

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    iget-object v1, p0, Lyads/wl0;->e:Lyads/w04;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    iget-boolean v1, v0, Lyads/vl0;->e:Z

    if-nez v1, :cond_5

    iput-boolean v2, v0, Lyads/vl0;->e:Z

    iget-object v1, p0, Lyads/wl0;->e:Lyads/w04;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_5
    iget-object v1, v0, Lyads/vl0;->a:Ljava/lang/String;

    iget-object v3, p0, Lyads/wl0;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Lyads/vl0;->f:Z

    if-nez v1, :cond_6

    iput-boolean v2, v0, Lyads/vl0;->f:Z

    iget-object v1, p0, Lyads/wl0;->e:Lyads/w04;

    iget-object v0, v0, Lyads/vl0;->a:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Lyads/w04;->a(Lyads/ne;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
