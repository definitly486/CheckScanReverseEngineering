.class public final Lyads/ve5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/q84;

.field public final b:Lyads/ws5;

.field public final c:Lyads/eu5;

.field public final d:Lyads/on2;

.field public final e:Lyads/et;

.field public final f:Lyads/lp2;

.field public final g:Lyads/b7;

.field public final h:Lyads/oq5;

.field public final i:Lyads/ej5;

.field public final j:Lyads/mv4;


# direct methods
.method public constructor <init>(Lyads/q84;)V
    .locals 9

    new-instance v0, Lyads/ws5;

    invoke-direct {v0}, Lyads/ws5;-><init>()V

    new-instance v1, Lyads/eu5;

    invoke-direct {v1}, Lyads/eu5;-><init>()V

    new-instance v2, Lyads/on2;

    invoke-direct {v2}, Lyads/on2;-><init>()V

    new-instance v3, Lyads/et;

    invoke-direct {v3}, Lyads/et;-><init>()V

    new-instance v4, Lyads/lp2;

    invoke-direct {v4}, Lyads/lp2;-><init>()V

    new-instance v5, Lyads/b7;

    invoke-direct {v5}, Lyads/b7;-><init>()V

    new-instance v6, Lyads/oq5;

    invoke-direct {v6}, Lyads/oq5;-><init>()V

    new-instance v7, Lyads/ej5;

    invoke-direct {v7}, Lyads/ej5;-><init>()V

    new-instance v8, Lyads/mv4;

    invoke-direct {v8}, Lyads/mv4;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ve5;->a:Lyads/q84;

    iput-object v0, p0, Lyads/ve5;->b:Lyads/ws5;

    iput-object v1, p0, Lyads/ve5;->c:Lyads/eu5;

    iput-object v2, p0, Lyads/ve5;->d:Lyads/on2;

    iput-object v3, p0, Lyads/ve5;->e:Lyads/et;

    iput-object v4, p0, Lyads/ve5;->f:Lyads/lp2;

    iput-object v5, p0, Lyads/ve5;->g:Lyads/b7;

    iput-object v6, p0, Lyads/ve5;->h:Lyads/oq5;

    iput-object v7, p0, Lyads/ve5;->i:Lyads/ej5;

    iput-object v8, p0, Lyads/ve5;->j:Lyads/mv4;

    return-void
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Integer;
    .locals 2

    .line 144
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    .line 145
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 146
    new-instance p1, Lk57$a;

    invoke-direct {p1, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    .line 147
    :goto_1
    nop

    instance-of p1, p0, Lk57$a;

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    move-object v1, p0

    .line 148
    :goto_2
    check-cast v1, Ljava/lang/Integer;

    :cond_2
    return-object v1
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {}, Lu96;->e()Lar4;

    move-result-object v2

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_a

    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_5

    :cond_1
    const-string v6, "ad_unit_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    goto :goto_1

    :cond_2
    move-object v6, v0

    :goto_1
    if-nez v6, :cond_3

    goto :goto_5

    :cond_3
    sget-object v7, Lyads/sz4;->Companion:Lyads/rz4;

    const-string v8, "format"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    goto :goto_2

    :cond_4
    move-object v5, v0

    :goto_2
    if-eqz v5, :cond_7

    sget-object v7, Lyads/sz4;->e:Lg03;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lyads/sz4;

    iget-object v9, v9, Lyads/sz4;->b:Ljava/lang/String;

    invoke-static {v9, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_3

    :cond_6
    move-object v8, v0

    :goto_3
    check-cast v8, Lyads/sz4;

    goto :goto_4

    :cond_7
    move-object v8, v0

    :goto_4
    if-nez v8, :cond_8

    goto :goto_5

    :cond_8
    new-instance v5, Lb36;

    invoke-direct {v5, v6, v8}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    new-instance v5, Lyads/qz4;

    invoke-direct {v5, v6, v8}, Lyads/qz4;-><init>(Ljava/lang/String;Lyads/sz4;)V

    invoke-virtual {v2, v5}, Lar4;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_a
    invoke-static {v2}, Lu96;->d(Lar4;)Lar4;

    move-result-object p0

    invoke-virtual {p0}, Lar4;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    return-object p0

    :cond_b
    :goto_6
    return-object v0
.end method
