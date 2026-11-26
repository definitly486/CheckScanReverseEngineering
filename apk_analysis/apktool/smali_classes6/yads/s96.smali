.class public final Lyads/s96;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Lyads/fc6;

.field public c:Lyads/rl6;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Lyads/jh6;

.field public j:Ljava/lang/Integer;

.field public k:Ljava/lang/String;

.field public final l:Ljava/util/ArrayList;

.field public final m:Ljava/util/ArrayList;

.field public final n:Ljava/util/LinkedHashMap;

.field public o:Lyads/ba6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    new-instance v0, Lyads/fc6;

    invoke-direct {v0, p1}, Lyads/fc6;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lyads/s96;->a:Z

    iput-object v0, p0, Lyads/s96;->b:Lyads/fc6;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lyads/s96;->l:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lyads/s96;->m:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lyads/s96;->n:Ljava/util/LinkedHashMap;

    new-instance p1, Lyads/ba6;

    invoke-direct {p1}, Lyads/ba6;-><init>()V

    iput-object p1, p0, Lyads/s96;->o:Lyads/ba6;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/LinkedHashMap;)Lyads/s96;
    .locals 5

    if-nez p1, :cond_0

    .line 135
    sget-object p1, Lmx2;->b:Lmx2;

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2

    .line 136
    sget-object v0, Lkx2;->b:Lkx2;

    :cond_2
    invoke-static {v0}, Lqn1;->R(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 137
    iget-object v3, p0, Lyads/s96;->n:Ljava/util/LinkedHashMap;

    .line 138
    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 139
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 140
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_3
    check-cast v4, Ljava/util/List;

    .line 142
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public final a()Lyads/t96;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lyads/s96;->b:Lyads/fc6;

    iget-object v2, v0, Lyads/s96;->n:Ljava/util/LinkedHashMap;

    iget-object v3, v0, Lyads/s96;->i:Lyads/jh6;

    sget-object v4, Lyads/zg5;->l:Lyads/zg5;

    if-nez v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-object v5, Lyads/zg5;->l:Lyads/zg5;

    if-nez v5, :cond_0

    new-instance v5, Lyads/zg5;

    invoke-direct {v5}, Lyads/zg5;-><init>()V

    sput-object v5, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v4

    move-object v4, v5

    goto :goto_2

    :goto_1
    monitor-exit v4

    throw v0

    :cond_1
    :goto_2
    iget-object v1, v1, Lyads/fc6;->a:Landroid/content/Context;

    invoke-virtual {v4, v1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-boolean v1, v1, Lyads/fe5;->l:Z

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_3

    :goto_4
    move-object/from16 v19, v2

    goto :goto_7

    :cond_3
    invoke-static {v2}, Ln05;->n(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v2

    if-eqz v3, :cond_4

    iget-object v1, v3, Lyads/jh6;->a:Ljava/util/ArrayList;

    goto :goto_5

    :cond_4
    const/4 v1, 0x0

    :goto_5
    const-string v3, "impression"

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const-string v4, "impression"

    if-eqz v1, :cond_5

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_5
    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    const-string v1, "render_impression"

    if-eqz v3, :cond_6

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :goto_7
    new-instance v4, Lyads/t96;

    iget-boolean v5, v0, Lyads/s96;->a:Z

    iget-object v6, v0, Lyads/s96;->l:Ljava/util/ArrayList;

    iget-object v7, v0, Lyads/s96;->n:Ljava/util/LinkedHashMap;

    iget-object v8, v0, Lyads/s96;->o:Lyads/ba6;

    iget-object v9, v0, Lyads/s96;->d:Ljava/lang/String;

    iget-object v10, v0, Lyads/s96;->e:Ljava/lang/String;

    iget-object v11, v0, Lyads/s96;->f:Ljava/lang/String;

    iget-object v12, v0, Lyads/s96;->g:Ljava/lang/String;

    iget-object v13, v0, Lyads/s96;->h:Ljava/lang/String;

    iget-object v14, v0, Lyads/s96;->i:Lyads/jh6;

    iget-object v15, v0, Lyads/s96;->j:Ljava/lang/Integer;

    iget-object v1, v0, Lyads/s96;->k:Ljava/lang/String;

    iget-object v2, v0, Lyads/s96;->c:Lyads/rl6;

    iget-object v0, v0, Lyads/s96;->m:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-direct/range {v4 .. v19}, Lyads/t96;-><init>(ZLjava/util/ArrayList;Ljava/util/LinkedHashMap;Lyads/ba6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lyads/jh6;Ljava/lang/Integer;Ljava/lang/String;Lyads/rl6;Ljava/util/ArrayList;Ljava/util/Map;)V

    return-object v4
.end method
