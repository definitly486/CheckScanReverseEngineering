.class public final Lyads/b76;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/z66;


# instance fields
.field public final a:Lyads/z66;

.field public final b:Ljava/util/LinkedHashMap;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/LinkedHashMap;

.field public final e:Ljava/util/LinkedHashMap;

.field public final f:Ljava/util/LinkedHashMap;

.field public final g:Lnl3;

.field public final h:Lyads/a76;


# direct methods
.method public constructor <init>(Lyads/z66;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/b76;->a:Lyads/z66;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lyads/b76;->b:Ljava/util/LinkedHashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lyads/b76;->c:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lyads/b76;->d:Ljava/util/LinkedHashMap;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lyads/b76;->e:Ljava/util/LinkedHashMap;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lyads/b76;->f:Ljava/util/LinkedHashMap;

    new-instance p1, Lim1;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v0}, Lim1;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lyads/b76;->g:Lnl3;

    new-instance p1, Lyads/a76;

    invoke-direct {p1}, Lyads/a76;-><init>()V

    iput-object p1, p0, Lyads/b76;->h:Lyads/a76;

    return-void
.end method

.method public static final a(Lyads/b76;Lnl3;Lyads/u66;)Lj59;
    .locals 1

    .line 217
    iget-object p0, p0, Lyads/b76;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Lyads/u66;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-interface {p1, p2}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/b76;Lyads/u66;)Lj59;
    .locals 0

    .line 227
    invoke-virtual {p0, p1}, Lyads/b76;->b(Lyads/u66;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Ljava/util/List;Ljava/util/List;Lyads/b76;Lnl3;)V
    .locals 3

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p2, Lyads/b76;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/gp4;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Lyads/gp4;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/tp0;

    instance-of p2, p1, Ljava/lang/AutoCloseable;

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_1

    :cond_3
    instance-of p2, p1, Ljava/util/concurrent/ExecutorService;

    if-eqz p2, :cond_7

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object p2

    if-ne p1, p2, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 p3, 0x0

    :cond_5
    :goto_2
    if-nez p2, :cond_6

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-interface {p1, v1, v2, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    if-nez p3, :cond_5

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 p3, 0x1

    goto :goto_2

    :cond_6
    if-eqz p3, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_7
    instance-of p2, p1, Landroid/content/res/TypedArray;

    if-eqz p2, :cond_8

    check-cast p1, Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :cond_8
    instance-of p2, p1, Landroid/media/MediaMetadataRetriever;

    if-eqz p2, :cond_9

    check-cast p1, Landroid/media/MediaMetadataRetriever;

    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    :cond_9
    instance-of p2, p1, Landroid/media/MediaDrm;

    if-eqz p2, :cond_a

    check-cast p1, Landroid/media/MediaDrm;

    invoke-virtual {p1}, Landroid/media/MediaDrm;->release()V

    goto :goto_1

    :cond_a
    invoke-static {}, Lmi2;->b()V

    :cond_b
    return-void
.end method

.method public static final a(Ljava/util/List;Lyads/b76;Lnl3;)V
    .locals 2

    .line 228
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 229
    iget-object v1, p1, Lyads/b76;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/gp4;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lyads/gp4;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final a(Lyads/b76;Ljava/lang/String;Lnl3;)V
    .locals 0

    .line 177
    iget-object p0, p0, Lyads/b76;->d:Ljava/util/LinkedHashMap;

    .line 178
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/gp4;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lyads/gp4;->b(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lyads/ao2;ZLnl3;)Lyads/tp0;
    .locals 1

    .line 157
    iget-object v0, p0, Lyads/b76;->b:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lyads/b76;->a:Lyads/z66;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lyads/z66;->a(Ljava/lang/String;)Lyads/u66;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 158
    iget-object p0, p0, Lyads/b76;->a:Lyads/z66;

    invoke-interface {p0, p1, p2, p3, p4}, Lyads/z66;->a(Ljava/lang/String;Lyads/ao2;ZLnl3;)Lyads/tp0;

    move-result-object p0

    return-object p0

    .line 159
    :cond_1
    invoke-virtual {p0, p1}, Lyads/b76;->a(Ljava/lang/String;)Lyads/u66;

    move-result-object v0

    if-nez v0, :cond_4

    if-eqz p2, :cond_2

    .line 160
    invoke-static {p1}, Lyads/gt4;->b(Ljava/lang/String;)Lyads/ft4;

    move-result-object p3

    .line 161
    iget-object v0, p2, Lyads/ao2;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-virtual {p2}, Lyads/ao2;->a()V

    .line 163
    :cond_2
    iget-object p2, p0, Lyads/b76;->d:Ljava/util/LinkedHashMap;

    .line 164
    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_3

    .line 165
    new-instance p3, Lyads/gp4;

    invoke-direct {p3}, Lyads/gp4;-><init>()V

    .line 166
    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_3
    check-cast p3, Lyads/gp4;

    .line 168
    invoke-virtual {p3, p4}, Lyads/gp4;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_5

    .line 169
    invoke-interface {p4, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_5
    iget-object p2, p0, Lyads/b76;->d:Ljava/util/LinkedHashMap;

    .line 171
    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_6

    .line 172
    new-instance p3, Lyads/gp4;

    invoke-direct {p3}, Lyads/gp4;-><init>()V

    .line 173
    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_6
    check-cast p3, Lyads/gp4;

    .line 175
    invoke-virtual {p3, p4}, Lyads/gp4;->a(Ljava/lang/Object;)V

    .line 176
    :goto_1
    new-instance p2, Lco9;

    invoke-direct {p2, p0, p1, p4}, Lco9;-><init>(Lyads/b76;Ljava/lang/String;Lnl3;)V

    return-object p2
.end method

.method public final a(Ljava/util/ArrayList;Lnl3;)Lyads/tp0;
    .locals 6

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 141
    iget-object v3, p0, Lyads/b76;->b:Ljava/util/LinkedHashMap;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lyads/b76;->a:Lyads/z66;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v3, v2}, Lyads/z66;->a(Ljava/lang/String;)Lyads/u66;

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_1

    .line 142
    iget-object v3, p0, Lyads/b76;->a:Lyads/z66;

    const/4 v5, 0x0

    invoke-interface {v3, v2, v4, v5, p2}, Lyads/z66;->a(Ljava/lang/String;Lyads/ao2;ZLnl3;)Lyads/tp0;

    move-result-object v2

    .line 143
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p0, v2}, Lyads/b76;->a(Ljava/lang/String;)Lyads/u66;

    move-result-object v3

    .line 145
    iget-object v4, p0, Lyads/b76;->d:Ljava/util/LinkedHashMap;

    if-nez v3, :cond_3

    .line 146
    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 147
    new-instance v3, Lyads/gp4;

    invoke-direct {v3}, Lyads/gp4;-><init>()V

    .line 148
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_2
    check-cast v3, Lyads/gp4;

    .line 150
    invoke-virtual {v3, p2}, Lyads/gp4;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 151
    :cond_3
    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    .line 152
    new-instance v3, Lyads/gp4;

    invoke-direct {v3}, Lyads/gp4;-><init>()V

    .line 153
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_4
    check-cast v3, Lyads/gp4;

    .line 155
    invoke-virtual {v3, p2}, Lyads/gp4;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 156
    :cond_5
    new-instance v1, Ldo9;

    invoke-direct {v1, p1, v0, p0, p2}, Ldo9;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lyads/b76;Lnl3;)V

    return-object v1
.end method

.method public final a(Ljava/util/List;Lnl3;)Lyads/tp0;
    .locals 4

    .line 219
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 220
    iget-object v2, p0, Lyads/b76;->e:Ljava/util/LinkedHashMap;

    .line 221
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 222
    new-instance v3, Lyads/gp4;

    invoke-direct {v3}, Lyads/gp4;-><init>()V

    .line 223
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_0
    check-cast v3, Lyads/gp4;

    .line 225
    invoke-virtual {v3, p2}, Lyads/gp4;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 226
    :cond_1
    new-instance v0, Leo9;

    invoke-direct {v0, p1, p0, p2}, Leo9;-><init>(Ljava/util/List;Lyads/b76;Lnl3;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lyads/u66;
    .locals 4

    .line 179
    iget-object v0, p0, Lyads/b76;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/u66;

    if-eqz v0, :cond_0

    return-object v0

    .line 180
    :cond_0
    iget-object v0, p0, Lyads/b76;->a:Lyads/z66;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lyads/z66;->a(Ljava/lang/String;)Lyads/u66;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 181
    :cond_1
    iget-object p0, p0, Lyads/b76;->c:Ljava/util/ArrayList;

    .line 182
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/zc4;

    .line 183
    iget-object v2, v0, Lyads/zc4;->b:Lnl3;

    .line 184
    invoke-interface {v2, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, v0, Lyads/zc4;->a:Lyads/yf2;

    .line 186
    iget-object v2, v0, Lyads/yf2;->c:Ljava/util/LinkedHashSet;

    .line 187
    monitor-enter v2

    .line 188
    :try_start_0
    iget-object v3, v0, Lyads/yf2;->c:Ljava/util/LinkedHashSet;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit v2

    if-eqz v3, :cond_3

    .line 190
    iget-object v0, v0, Lyads/yf2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lyads/u66;

    :cond_3
    if-eqz v1, :cond_2

    return-object v1

    :catchall_0
    move-exception p0

    .line 191
    monitor-exit v2

    throw p0

    :cond_4
    return-object v1
.end method

.method public final a()V
    .locals 5

    .line 192
    iget-object v0, p0, Lyads/b76;->c:Ljava/util/ArrayList;

    .line 193
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/zc4;

    .line 194
    iget-object v2, p0, Lyads/b76;->g:Lnl3;

    .line 195
    iget-object v3, v1, Lyads/zc4;->a:Lyads/yf2;

    .line 196
    iget-object v3, v3, Lyads/yf2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 197
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 198
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/u66;

    .line 199
    iget-object v4, v4, Lyads/u66;->a:Lyads/gp4;

    .line 200
    invoke-virtual {v4, v2}, Lyads/gp4;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 201
    :cond_0
    iget-object v2, p0, Lyads/b76;->h:Lyads/a76;

    .line 202
    iget-object v1, v1, Lyads/zc4;->a:Lyads/yf2;

    .line 203
    iget-object v1, v1, Lyads/yf2;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 204
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 205
    :cond_1
    iget-object p0, p0, Lyads/b76;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public final a(Lyads/gs2;Lnl3;)V
    .locals 3

    .line 215
    iget-object v0, p0, Lyads/b76;->f:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Lyads/b76;->a:Lyads/z66;

    if-eqz v0, :cond_0

    new-instance v1, Lol1;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, p2}, Lol1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lyads/z66;->a(Lyads/gs2;Lnl3;)V

    :cond_0
    return-void
.end method

.method public final a(Lyads/u66;)V
    .locals 2

    .line 206
    iget-object v0, p0, Lyads/b76;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lyads/u66;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/u66;

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lyads/b76;->g:Lnl3;

    .line 208
    iget-object v1, p1, Lyads/u66;->a:Lyads/gp4;

    .line 209
    invoke-virtual {v1, v0}, Lyads/gp4;->a(Ljava/lang/Object;)V

    .line 210
    invoke-virtual {p0, p1}, Lyads/b76;->b(Lyads/u66;)V

    return-void

    .line 211
    :cond_0
    iget-object p0, p0, Lyads/b76;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lyads/u66;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    new-instance p0, Lyads/d76;

    invoke-virtual {p1}, Lyads/u66;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Variable \'"

    const-string v1, "\' already declared!"

    .line 213
    invoke-static {v0, p1, v1}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 214
    invoke-direct {p0, p1}, Lyads/d76;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()Ljava/util/List;
    .locals 0

    .line 68
    iget-object p0, p0, Lyads/b76;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lyads/u66;)V
    .locals 2

    iget-object v0, p0, Lyads/b76;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnl3;

    invoke-interface {v1, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lyads/b76;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lyads/u66;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/gp4;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lyads/gp4;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    move-object v0, p0

    check-cast v0, Lyads/fp4;

    invoke-virtual {v0}, Lyads/fp4;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lyads/fp4;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnl3;

    invoke-interface {v0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Lyads/b76;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/zc4;

    iget-object v2, p0, Lyads/b76;->g:Lnl3;

    iget-object v3, v1, Lyads/zc4;->a:Lyads/yf2;

    invoke-virtual {v3, v2}, Lyads/yf2;->a(Lnl3;)V

    iget-object v2, p0, Lyads/b76;->g:Lnl3;

    iget-object v3, v1, Lyads/zc4;->a:Lyads/yf2;

    iget-object v3, v3, Lyads/yf2;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/u66;

    invoke-interface {v2, v4}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lyads/b76;->h:Lyads/a76;

    iget-object v1, v1, Lyads/zc4;->a:Lyads/yf2;

    iget-object v1, v1, Lyads/yf2;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Lyads/b76;->a(Ljava/lang/String;)Lyads/u66;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lyads/u66;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroid/net/Uri;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lyads/q46;

    invoke-direct {v2, v0}, Lyads/q46;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    if-nez v0, :cond_3

    iget-object p0, p0, Lyads/b76;->a:Lyads/z66;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lyads/m76;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1

    :cond_3
    return-object v0
.end method
