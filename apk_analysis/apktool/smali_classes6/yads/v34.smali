.class public Lyads/v34;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/e4;

.field public final b:Lyads/qi5;


# direct methods
.method public constructor <init>(Lyads/e4;)V
    .locals 1

    new-instance v0, Lyads/qi5;

    invoke-direct {v0}, Lyads/qi5;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/v34;->a:Lyads/e4;

    iput-object v0, p0, Lyads/v34;->b:Lyads/qi5;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/LinkedHashMap;)V
    .locals 2

    .line 141
    sget-object v0, Lyads/zg5;->l:Lyads/zg5;

    if-nez v0, :cond_1

    .line 142
    sget-object v0, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_0
    sget-object v1, Lyads/zg5;->l:Lyads/zg5;

    if-nez v1, :cond_0

    .line 144
    new-instance v1, Lyads/zg5;

    invoke-direct {v1}, Lyads/zg5;-><init>()V

    .line 145
    sput-object v1, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 146
    :cond_0
    :goto_0
    monitor-exit v0

    move-object v0, v1

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    .line 147
    :cond_1
    :goto_2
    invoke-virtual {v0, p0}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 148
    iget-object p0, p0, Lyads/fe5;->a0:Ljava/lang/Boolean;

    goto :goto_3

    :cond_2
    const/4 p0, 0x0

    :goto_3
    if-eqz p0, :cond_3

    .line 149
    const-string v0, "user_consent"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/util/Map;
    .locals 4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lyads/v34;->a:Lyads/e4;

    iget-object v1, v1, Lyads/e4;->e:Lyads/n8;

    if-eqz v1, :cond_7

    iget-object v2, v1, Lyads/n8;->g:Ljava/util/Map;

    if-eqz v2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    iget-object v2, v1, Lyads/n8;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v3, "age"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v2, v1, Lyads/n8;->e:Ljava/util/List;

    if-eqz v2, :cond_2

    const-string v3, "context_tags"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, v1, Lyads/n8;->c:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "gender"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v1, Lyads/zg5;->l:Lyads/zg5;

    if-nez v1, :cond_5

    sget-object v1, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lyads/zg5;->l:Lyads/zg5;

    if-nez v2, :cond_4

    new-instance v2, Lyads/zg5;

    invoke-direct {v2}, Lyads/zg5;-><init>()V

    sput-object v2, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_4
    :goto_0
    monitor-exit v1

    move-object v1, v2

    goto :goto_2

    :goto_1
    monitor-exit v1

    throw p0

    :cond_5
    :goto_2
    invoke-virtual {v1}, Lyads/zg5;->c()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v2, "age_restricted_user"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-static {p1, v0}, Lyads/v34;->a(Landroid/content/Context;Ljava/util/LinkedHashMap;)V

    :cond_7
    iget-object v1, p0, Lyads/v34;->a:Lyads/e4;

    iget-object v1, v1, Lyads/e4;->b:Lyads/c40;

    iget-object v1, v1, Lyads/c40;->b:Lyads/ed;

    iget-object v1, v1, Lyads/ed;->a:Lyads/id;

    iget-object v2, p0, Lyads/v34;->b:Lyads/qi5;

    invoke-virtual {v2, p1}, Lyads/qi5;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz v1, :cond_8

    iget-boolean v2, v1, Lyads/id;->b:Z

    iget-object v1, v1, Lyads/id;->a:Ljava/lang/String;

    if-nez p1, :cond_8

    if-nez v2, :cond_8

    if-eqz v1, :cond_8

    const-string p1, "google_aid"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string p1, "gms_available"

    iget-object p0, p0, Lyads/v34;->a:Lyads/e4;

    iget-object p0, p0, Lyads/e4;->b:Lyads/c40;

    iget-object p0, p0, Lyads/c40;->a:Lyads/vn2;

    iget-boolean p0, p0, Lyads/vn2;->f:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "sdk_version"

    const-string p1, "8.2.0"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
