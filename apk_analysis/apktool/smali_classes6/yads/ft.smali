.class public abstract Lyads/ft;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lxb4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lyads/zq3;->a:Lxb4;

    sput-object v0, Lyads/ft;->a:Lxb4;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 234
    const-string v0, "BiddingSettingsAdUnitIdsInfo_"

    .line 235
    invoke-static {v0, p0}, Lbj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lyads/zu3;)Lyads/dt;
    .locals 9

    .line 214
    check-cast p0, Lyads/av3;

    const-string v0, "BiddingSettingsAdUnitIdsSet"

    sget-object v1, Lox2;->b:Lox2;

    invoke-virtual {p0, v0, v1}, Lyads/av3;->a(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 215
    :cond_0
    const-string v2, "MediationPrefetchSettingsAdUnitIdsSet"

    invoke-virtual {p0, v2, v1}, Lyads/av3;->a(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 216
    :goto_0
    new-instance v2, Lyads/et;

    invoke-direct {v2}, Lyads/et;-><init>()V

    .line 217
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 218
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 219
    invoke-static {v4}, Lyads/ft;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lyads/av3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 220
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 221
    :cond_3
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lyads/et;->a(Lorg/json/JSONObject;)Lyads/la;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 222
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 223
    :cond_4
    const-string v0, "MediationPrefetchLoadTimeoutMillis"

    invoke-virtual {p0, v0}, Lyads/av3;->b(Ljava/lang/String;)J

    move-result-wide v4

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 225
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 226
    invoke-static {v6}, Lyads/ft;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lyads/av3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 227
    sget-object v7, Lyads/ft;->a:Lxb4;

    .line 228
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lyads/h74;->CREATOR:Lyads/g74;

    invoke-virtual {v8}, Lyads/g74;->serializer()Ldf4;

    move-result-object v8

    invoke-static {v8}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v8

    check-cast v8, Lxl2;

    invoke-virtual {v7, v8, v6}, Lxb4;->a(Lxl2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 229
    check-cast v6, Lyads/h74;

    if-eqz v6, :cond_5

    .line 230
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 231
    :cond_6
    new-instance p0, Lyads/o74;

    invoke-direct {p0, v4, v5, v0}, Lyads/o74;-><init>(JLjava/util/ArrayList;)V

    .line 232
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 p0, 0x0

    goto :goto_4

    .line 233
    :cond_8
    :goto_3
    new-instance v0, Lyads/dt;

    invoke-direct {v0, v3, p0}, Lyads/dt;-><init>(Ljava/util/ArrayList;Lyads/o74;)V

    move-object p0, v0

    :goto_4
    return-object p0
.end method

.method public static a(Lyads/zu3;Lyads/dt;)V
    .locals 8

    iget-object v0, p1, Lyads/dt;->b:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/la;

    iget-object v3, v2, Lyads/la;->b:Ljava/lang/String;

    iget-object v2, v2, Lyads/la;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lyads/ft;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, p0

    check-cast v4, Lyads/av3;

    invoke-virtual {v4, v3, v2}, Lyads/av3;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    check-cast p0, Lyads/av3;

    const-string v0, "BiddingSettingsAdUnitIdsSet"

    sget-object v2, Lox2;->b:Lox2;

    invoke-virtual {p0, v0, v2}, Lyads/av3;->a(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v2

    :cond_1
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Lyads/ft;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lyads/av3;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0, v1}, Lyads/av3;->a(Ljava/lang/String;Ljava/util/HashSet;)V

    iget-object p1, p1, Lyads/dt;->c:Lyads/o74;

    if-eqz p1, :cond_4

    iget-wide v0, p1, Lyads/o74;->b:J

    goto :goto_2

    :cond_4
    const-wide/16 v0, 0x0

    :goto_2
    if-eqz p1, :cond_5

    iget-object p1, p1, Lyads/o74;->c:Ljava/util/List;

    if-nez p1, :cond_6

    :cond_5
    sget-object p1, Lkx2;->b:Lkx2;

    :cond_6
    new-instance v3, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/h74;

    iget-object v5, v4, Lyads/h74;->b:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v5, v4, Lyads/h74;->b:Ljava/lang/String;

    invoke-static {v5}, Lyads/ft;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lyads/ft;->a:Lxb4;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lyads/h74;->CREATOR:Lyads/g74;

    invoke-virtual {v7}, Lyads/g74;->serializer()Ldf4;

    move-result-object v7

    check-cast v7, Lxp7;

    invoke-virtual {v6, v7, v4}, Lxb4;->b(Lxp7;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Lyads/av3;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const-string p1, "MediationPrefetchSettingsAdUnitIdsSet"

    invoke-virtual {p0, p1, v2}, Lyads/av3;->a(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    if-nez v4, :cond_8

    goto :goto_4

    :cond_8
    move-object v2, v4

    :goto_4
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {v4}, Lyads/ft;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lyads/av3;->d(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    invoke-virtual {p0, p1, v3}, Lyads/av3;->a(Ljava/lang/String;Ljava/util/HashSet;)V

    const-string p1, "MediationPrefetchLoadTimeoutMillis"

    invoke-virtual {p0, p1, v0, v1}, Lyads/av3;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 78
    const-string v0, "MediationPrefetchSettingsAdUnitIdsInfo_"

    .line 79
    invoke-static {v0, p0}, Lbj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lyads/zu3;)V
    .locals 5

    check-cast p0, Lyads/av3;

    const-string v0, "BiddingSettingsAdUnitIdsSet"

    sget-object v1, Lox2;->b:Lox2;

    invoke-virtual {p0, v0, v1}, Lyads/av3;->a(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v2, v1

    :cond_0
    const-string v3, "MediationPrefetchSettingsAdUnitIdsSet"

    invoke-virtual {p0, v3, v1}, Lyads/av3;->a(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v4

    :goto_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lyads/ft;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lyads/av3;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lyads/ft;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lyads/av3;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v0}, Lyads/av3;->d(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lyads/av3;->d(Ljava/lang/String;)V

    return-void
.end method
