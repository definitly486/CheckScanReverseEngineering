.class public final Lio/appmetrica/analytics/impl/Zg;
.super Lio/appmetrica/analytics/impl/Ug;
.source "SourceFile"


# instance fields
.field public final b:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;)V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    invoke-direct {v0}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/appmetrica/analytics/impl/Zg;-><init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Ug;-><init>(Lio/appmetrica/analytics/impl/i5;)V

    .line 10
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Zg;->b:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/a6;)Z
    .locals 8

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ug;->a:Lio/appmetrica/analytics/impl/i5;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/i5;->t:Lio/appmetrica/analytics/impl/Go;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Go;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/i5;->y()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lio/appmetrica/analytics/impl/i5;->c:Lio/appmetrica/analytics/impl/jf;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/Ug;->a:Lio/appmetrica/analytics/impl/i5;

    iget-object v3, v3, Lio/appmetrica/analytics/impl/i5;->c:Lio/appmetrica/analytics/impl/jf;

    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/jf;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v3, v2

    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_1

    new-instance v6, Lio/appmetrica/analytics/impl/ea;

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lio/appmetrica/analytics/impl/ea;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    :goto_1
    const/4 v4, 0x0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Zg;->b()Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {v4, p0}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->areCollectionsEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/i5;->v()V

    goto :goto_3

    :cond_2
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/appmetrica/analytics/impl/ea;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "name"

    iget-object v7, v4, Lio/appmetrica/analytics/impl/ea;->a:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "required"

    iget-boolean v7, v4, Lio/appmetrica/analytics/impl/ea;->c:Z

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v5

    iget v4, v4, Lio/appmetrica/analytics/impl/ea;->b:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_3

    const-string v6, "version"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_4
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "features"

    invoke-virtual {p0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lio/appmetrica/analytics/impl/a6;->a(Lio/appmetrica/analytics/impl/a6;Ljava/lang/String;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p0

    iget-object p1, v0, Lio/appmetrica/analytics/impl/i5;->n:Lio/appmetrica/analytics/impl/w9;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/w9;->c:Lio/appmetrica/analytics/impl/jl;

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/jl;->b(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/Tk;

    move-result-object v0

    iget-wide v4, p0, Lio/appmetrica/analytics/impl/a6;->i:J

    invoke-static {v0, v4, v5}, Lio/appmetrica/analytics/impl/jl;->a(Lio/appmetrica/analytics/impl/Tk;J)Lio/appmetrica/analytics/impl/ml;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lio/appmetrica/analytics/impl/w9;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/ml;)V

    iget p0, p1, Lio/appmetrica/analytics/impl/w9;->j:I

    iput p0, p1, Lio/appmetrica/analytics/impl/w9;->l:I

    iget-object p1, p1, Lio/appmetrica/analytics/impl/w9;->a:Lio/appmetrica/analytics/impl/jf;

    invoke-virtual {p1, p0}, Lio/appmetrica/analytics/impl/jf;->a(I)Lio/appmetrica/analytics/impl/jf;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lio/appmetrica/analytics/impl/jf;->i(Ljava/lang/String;)Lio/appmetrica/analytics/impl/jf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_5
    :goto_3
    return v2
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ug;->a:Lio/appmetrica/analytics/impl/i5;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Zg;->b:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/i5;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-virtual {p0, v0, v1, v2}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x18

    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/AndroidUtils;->isApiAchieved(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lio/appmetrica/analytics/impl/ba;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/ba;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lio/appmetrica/analytics/impl/ca;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/ca;-><init>()V

    :goto_0
    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    if-eqz p0, :cond_1

    array-length v2, p0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    invoke-virtual {v1, v4}, Lio/appmetrica/analytics/impl/da;->a(Landroid/content/pm/FeatureInfo;)Lio/appmetrica/analytics/impl/ea;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method
