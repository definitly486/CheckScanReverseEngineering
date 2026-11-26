.class public final Lyads/oq5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 5

    :try_start_0
    new-instance v0, Lld4;

    invoke-direct {v0}, Lld4;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lrc4;->a:Li54;

    if-nez v1, :cond_0

    sget-object v1, Lgd4;->INSTANCE:Lgd4;

    goto :goto_1

    :cond_0
    new-instance v3, Lcd4;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Lcd4;-><init>(Ljava/lang/Object;Z)V

    move-object v1, v3

    :goto_1
    invoke-virtual {v0, v2, v1}, Lld4;->a(Ljava/lang/String;Loc4;)Loc4;

    goto :goto_0

    :cond_1
    new-instance p0, Ljd4;

    iget-object v0, v0, Lld4;->a:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0}, Ljd4;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0}, Ljd4;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    new-instance v0, Lk57$a;

    invoke-direct {v0, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_2
    nop

    instance-of v0, p0, Lk57$a;

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    :cond_2
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Map;
    .locals 1

    .line 86
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lyads/oq5;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 87
    new-instance v0, Lk57$a;

    invoke-direct {v0, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    .line 88
    :goto_0
    nop

    instance-of v0, p0, Lk57$a;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 89
    :cond_0
    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 2

    .line 90
    :try_start_0
    invoke-static {p0}, Lyads/zq3;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 91
    new-instance v1, Lk57$a;

    invoke-direct {v1, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 92
    :goto_0
    invoke-static {v0}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 93
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    :cond_0
    instance-of p0, v0, Lk57$a;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 95
    :cond_1
    check-cast v0, Ljava/util/Map;

    return-object v0
.end method
