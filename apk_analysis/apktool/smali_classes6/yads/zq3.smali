.class public abstract Lyads/zq3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lxb4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Luf0;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Luf0;-><init>(I)V

    invoke-static {v0}, Lbd4;->a(Lnl3;)Lad4;

    move-result-object v0

    sput-object v0, Lyads/zq3;->a:Lxb4;

    return-void
.end method

.method public static final a(Ldc4;)Lj59;
    .locals 1

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Ldc4;->a:Z

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Ldc4;->b:Z

    .line 61
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Integer;
    .locals 0

    .line 55
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 56
    new-instance p1, Lk57$a;

    invoke-direct {p1, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    .line 57
    :goto_0
    nop

    instance-of p1, p0, Lk57$a;

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 58
    :cond_0
    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5

    new-instance v0, Luz4;

    invoke-direct {v0}, Luz4;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "null"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v2, v3}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Luz4;->b()Luz4;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .line 51
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 52
    new-instance v0, Lk57$a;

    invoke-direct {v0, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    .line 53
    :goto_0
    instance-of p0, v0, Lk57$a;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 54
    :cond_0
    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public static b(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/List;
    .locals 4

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_3

    invoke-static {}, Lu96;->e()Lar4;

    move-result-object p1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "null"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v2}, Lar4;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lu96;->d(Lar4;)Lar4;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
