.class public final Lyads/fn4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/w45;

.field public final b:Lyads/y45;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lyads/w45;

    invoke-direct {v0}, Lyads/w45;-><init>()V

    sget-object v1, Lyads/y45;->b:Lyads/x45;

    invoke-virtual {v1}, Lyads/x45;->a()Lyads/y45;

    move-result-object v1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/fn4;->a:Lyads/w45;

    iput-object v1, p0, Lyads/fn4;->b:Lyads/y45;

    return-void
.end method


# virtual methods
.method public final a(Lyads/r75;)Lyads/en4;
    .locals 3

    iget-object v0, p0, Lyads/fn4;->b:Lyads/y45;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lyads/y45;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lyads/y45;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v0, v0, Lyads/y45;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    if-eqz v2, :cond_0

    :try_start_1
    iget-object p0, p0, Lyads/fn4;->a:Lyads/w45;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lyads/w45;->a(Ljava/lang/String;)Lyads/u45;

    move-result-object p0

    iget-object p1, p0, Lyads/u45;->b:Ljava/lang/String;

    sget-object v0, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lyads/u45;->a:Ljava/util/HashMap;

    new-instance v0, Lyads/en4;

    const/16 v1, 0xc8

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p0, v2}, Lyads/en4;-><init>(I[BLjava/util/Map;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method
