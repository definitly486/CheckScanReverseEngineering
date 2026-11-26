.class public final Lcom/tapjoy/TJUser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/tapjoy/TJUser;

.field public static a:Ljava/lang/String; = null

.field public static b:I = -0x1

.field public static c:I = -0x1

.field public static d:I = -0x1

.field public static e:Lcom/tapjoy/TJSegment;

.field public static final f:Ljava/util/HashSet;

.field public static final g:Lcom/tapjoy/TJKeyValueStorage;

.field public static final h:Lcl4;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/tapjoy/TJUser;

    invoke-direct {v0}, Lcom/tapjoy/TJUser;-><init>()V

    sput-object v0, Lcom/tapjoy/TJUser;->INSTANCE:Lcom/tapjoy/TJUser;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/tapjoy/TJUser;->f:Ljava/util/HashSet;

    new-instance v1, Lgi8;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lgi8;-><init>(I)V

    new-instance v3, Lfh8;

    invoke-direct {v3, v1}, Lfh8;-><init>(Lll3;)V

    sput-object v3, Lcom/tapjoy/TJUser;->h:Lcl4;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/TapjoyConnectCore;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_11

    new-instance v3, Lcom/tapjoy/TJKeyValueStorage;

    const-string v4, "tjcPrefrences"

    invoke-direct {v3, v1, v4}, Lcom/tapjoy/TJKeyValueStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v3, Lcom/tapjoy/TJUser;->g:Lcom/tapjoy/TJKeyValueStorage;

    new-instance v4, Lcom/tapjoy/TJPreferencesMigration;

    const-string v5, "fiverocks"

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lb36;

    const-string v6, "ui"

    const-string v7, "pref_user_id"

    invoke-direct {v5, v6, v7}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lb36;

    const-string v8, "ul"

    const-string v9, "pref_user_level"

    invoke-direct {v6, v8, v9}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Lb36;

    const-string v10, "utags"

    const-string v11, "pref_user_tags"

    invoke-direct {v8, v10, v11}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v5, v6, v8}, [Lb36;

    move-result-object v5

    invoke-static {v5}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object v5

    sget-object v6, Lkx2;->b:Lkx2;

    invoke-direct {v4, v3, v1, v5, v6}, Lcom/tapjoy/TJPreferencesMigration;-><init>(Lcom/tapjoy/TJKeyValueStorage;Landroid/content/SharedPreferences;Ljava/util/Map;Ljava/util/List;)V

    invoke-virtual {v4}, Lcom/tapjoy/TJPreferencesMigration;->migrateAllKeysIfExists()V

    sget v1, Lcom/tapjoy/TJUser;->c:I

    const-string v4, "pref_max_level"

    const/4 v5, -0x1

    if-gez v1, :cond_0

    invoke-virtual {v3, v4}, Lcom/tapjoy/TJKeyValueStorage;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v3, v4, v5}, Lcom/tapjoy/TJKeyValueStorage;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/tapjoy/TJUser;->c:I

    :cond_0
    sget-object v1, Lcom/tapjoy/TJUser;->e:Lcom/tapjoy/TJSegment;

    const-string v6, "pref_user_segment"

    if-nez v1, :cond_1

    invoke-virtual {v3, v6}, Lcom/tapjoy/TJKeyValueStorage;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tapjoy/TJSegment;->UNKNOWN:Lcom/tapjoy/TJSegment;

    invoke-virtual {v1}, Lcom/tapjoy/TJSegment;->getValue()I

    move-result v1

    invoke-virtual {v3, v6, v1}, Lcom/tapjoy/TJKeyValueStorage;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/tapjoy/TJSegment;->valueOf(I)Lcom/tapjoy/TJSegment;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TJUser;->e:Lcom/tapjoy/TJSegment;

    :cond_1
    sget-object v1, Lcom/tapjoy/TJUser;->a:Ljava/lang/String;

    const/4 v8, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-virtual {v3, v7}, Lcom/tapjoy/TJKeyValueStorage;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v3, v7, v8}, Lcom/tapjoy/TJKeyValueStorage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TJUser;->a:Ljava/lang/String;

    :cond_3
    invoke-virtual {v3, v9}, Lcom/tapjoy/TJKeyValueStorage;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v3, v9, v5}, Lcom/tapjoy/TJKeyValueStorage;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/tapjoy/TJUser;->b:I

    :cond_4
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v3, v11}, Lcom/tapjoy/TJKeyValueStorage;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v3, v11, v8}, Lcom/tapjoy/TJKeyValueStorage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x2

    :try_start_0
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-direct {v8, v0, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v1, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    :goto_0
    if-ge v2, v8, :cond_6

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    sget-object v1, Lcom/tapjoy/TJUser;->f:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    invoke-static {v0}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    :catch_0
    invoke-virtual {v3, v11}, Lcom/tapjoy/TJKeyValueStorage;->remove(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    invoke-virtual {v3, v11}, Lcom/tapjoy/TJKeyValueStorage;->remove(Ljava/lang/String;)V

    :catch_2
    :cond_7
    :goto_1
    sget-object v0, Lcom/tapjoy/TJUser;->INSTANCE:Lcom/tapjoy/TJUser;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lcom/tapjoy/TJUser;->c:I

    if-ge v0, v5, :cond_8

    goto :goto_2

    :cond_8
    sget-object v1, Lcom/tapjoy/TJUser;->g:Lcom/tapjoy/TJKeyValueStorage;

    if-eqz v1, :cond_9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    :goto_2
    sget-object v0, Lcom/tapjoy/TJUser;->e:Lcom/tapjoy/TJSegment;

    if-nez v0, :cond_a

    goto :goto_3

    :cond_a
    sget-object v1, Lcom/tapjoy/TJSegment;->UNKNOWN:Lcom/tapjoy/TJSegment;

    if-ne v0, v1, :cond_b

    sget-object v0, Lcom/tapjoy/TJUser;->g:Lcom/tapjoy/TJKeyValueStorage;

    if-eqz v0, :cond_c

    invoke-virtual {v0, v6}, Lcom/tapjoy/TJKeyValueStorage;->remove(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    sget-object v1, Lcom/tapjoy/TJUser;->g:Lcom/tapjoy/TJKeyValueStorage;

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/tapjoy/TJSegment;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_c
    :goto_3
    sget v0, Lcom/tapjoy/TJUser;->b:I

    if-ge v0, v5, :cond_d

    goto :goto_4

    :cond_d
    sget-object v1, Lcom/tapjoy/TJUser;->g:Lcom/tapjoy/TJKeyValueStorage;

    if-eqz v1, :cond_e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_e
    :goto_4
    sget-object v0, Lcom/tapjoy/TJUser;->a:Ljava/lang/String;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_5

    :cond_f
    sget-object v0, Lcom/tapjoy/TJUser;->g:Lcom/tapjoy/TJKeyValueStorage;

    if-eqz v0, :cond_10

    sget-object v1, Lcom/tapjoy/TJUser;->a:Ljava/lang/String;

    invoke-virtual {v0, v7, v1}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_10
    :goto_5
    invoke-static {}, Lcom/tapjoy/TJUser;->a()V

    :cond_11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 4

    sget-object v0, Lcom/tapjoy/TJUser;->f:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    const-string v2, "pref_user_tags"

    if-nez v1, :cond_2

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    invoke-static {v0}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/TJUser;->g:Lcom/tapjoy/TJKeyValueStorage;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2, v0}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    sget-object v1, Lcom/tapjoy/TJUser;->g:Lcom/tapjoy/TJKeyValueStorage;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Lcom/tapjoy/TJKeyValueStorage;->remove(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public static final a(Lcom/tapjoy/TJSetUserIDListener;)V
    .locals 2

    const-string v0, "userID http request failed"

    if-eqz p0, :cond_0

    .line 79
    invoke-interface {p0, v0}, Lcom/tapjoy/TJSetUserIDListener;->onSetUserIDFailure(Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_1

    const/4 v1, -0x1

    .line 80
    invoke-interface {p0, v1, v0}, Lcom/tapjoy/TJSetUserIDListener;->onSetUserIDFailure(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static final b()Lcom/tapjoy/internal/r2;
    .locals 1

    .line 14
    new-instance v0, Lcom/tapjoy/internal/r2;

    invoke-direct {v0}, Lcom/tapjoy/internal/r2;-><init>()V

    return-object v0
.end method

.method public static final b(Lcom/tapjoy/TJSetUserIDListener;)V
    .locals 2

    const-string v0, "userID cannot exceed 200 characters"

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Lcom/tapjoy/TJSetUserIDListener;->onSetUserIDFailure(Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_1

    const/4 v1, -0x1

    invoke-interface {p0, v1, v0}, Lcom/tapjoy/TJSetUserIDListener;->onSetUserIDFailure(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static final c(Lcom/tapjoy/TJSetUserIDListener;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/tapjoy/TJSetUserIDListener;->onSetUserIDSuccess()V

    :cond_0
    return-void
.end method

.method public static final d(Lcom/tapjoy/TJSetUserIDListener;)V
    .locals 2

    const-string v0, "Failed to set userID"

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Lcom/tapjoy/TJSetUserIDListener;->onSetUserIDFailure(Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_1

    const/4 v1, -0x1

    invoke-interface {p0, v1, v0}, Lcom/tapjoy/TJSetUserIDListener;->onSetUserIDFailure(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static final e(Lcom/tapjoy/TJSetUserIDListener;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/tapjoy/TJSetUserIDListener;->onSetUserIDSuccess()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final checkIfMaxLevelRequired()V
    .locals 8

    sget-object p0, Lcom/tapjoy/TJAppInfo;->INSTANCE:Lcom/tapjoy/TJAppInfo;

    invoke-virtual {p0}, Lcom/tapjoy/TJAppInfo;->getAppVersion()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_3

    :cond_0
    sget v0, Lcom/tapjoy/TJUser;->c:I

    if-gez v0, :cond_1

    goto :goto_3

    :cond_1
    sget-object v0, Lcom/tapjoy/TJUser;->g:Lcom/tapjoy/TJKeyValueStorage;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, "pref_max_level_cache"

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3, v2}, Lcom/tapjoy/TJKeyValueStorage;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v4, v1

    :goto_0
    const-string v5, "pref_app_version"

    if-eqz v0, :cond_3

    invoke-virtual {v0, v5}, Lcom/tapjoy/TJKeyValueStorage;->contains(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    invoke-virtual {v0, v5, v1}, Lcom/tapjoy/TJKeyValueStorage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0, v5, p0}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    move-object v1, p0

    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget v1, Lcom/tapjoy/TJUser;->c:I

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v1, :cond_9

    :cond_6
    :goto_2
    sget v1, Lcom/tapjoy/TJUser;->c:I

    if-le v1, v2, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    if-eqz v0, :cond_7

    sget v1, Lcom/tapjoy/TJUser;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0, v5, p0}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    sget p0, Lcom/tapjoy/TJUser;->c:I

    sput p0, Lcom/tapjoy/TJUser;->d:I

    :cond_9
    :goto_3
    return-void
.end method

.method public final getMaxLevelParam()Ljava/lang/Integer;
    .locals 0

    sget p0, Lcom/tapjoy/TJUser;->d:I

    if-lez p0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getUserID()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/tapjoy/TJUser;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getUserIdIfNotEmpty()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/tapjoy/TJUser;->a:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lta8;->f0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    sget-object p0, Lcom/tapjoy/TJUser;->a:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getUserLevel()I
    .locals 0

    sget p0, Lcom/tapjoy/TJUser;->b:I

    return p0
.end method

.method public final getUserLevelIfNeeded()Ljava/lang/Integer;
    .locals 1

    sget p0, Lcom/tapjoy/TJUser;->b:I

    const/4 v0, -0x1

    if-le p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getUserMaxLevel()I
    .locals 0

    sget p0, Lcom/tapjoy/TJUser;->c:I

    return p0
.end method

.method public final getUserRevenue(Lcom/tapjoy/TJGetUserRevenueListener;)V
    .locals 0

    new-instance p0, Lcom/tapjoy/internal/m1;

    invoke-direct {p0}, Lcom/tapjoy/internal/m1;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/m1;->a(Lcom/tapjoy/TJGetUserRevenueListener;)V

    return-void
.end method

.method public final getUserSegment()Lcom/tapjoy/TJSegment;
    .locals 0

    sget-object p0, Lcom/tapjoy/TJUser;->e:Lcom/tapjoy/TJSegment;

    if-nez p0, :cond_0

    sget-object p0, Lcom/tapjoy/TJSegment;->UNKNOWN:Lcom/tapjoy/TJSegment;

    :cond_0
    return-object p0
.end method

.method public final getUserSegmentInt()Ljava/lang/Integer;
    .locals 1

    sget-object p0, Lcom/tapjoy/TJUser;->e:Lcom/tapjoy/TJSegment;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/tapjoy/TJSegment;->UNKNOWN:Lcom/tapjoy/TJSegment;

    if-eq p0, v0, :cond_0

    invoke-virtual {p0}, Lcom/tapjoy/TJSegment;->getValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getUserSegmentString()Ljava/lang/String;
    .locals 1

    sget-object p0, Lcom/tapjoy/TJUser;->e:Lcom/tapjoy/TJSegment;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/tapjoy/TJSegment;->UNKNOWN:Lcom/tapjoy/TJSegment;

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getUserTags()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/tapjoy/TJUser;->f:Ljava/util/HashSet;

    return-object p0
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 1

    const-string p0, "pref_user_id"

    if-nez p1, :cond_0

    const/4 p1, 0x0

    sput-object p1, Lcom/tapjoy/TJUser;->a:Ljava/lang/String;

    sget-object p1, Lcom/tapjoy/TJUser;->g:Lcom/tapjoy/TJKeyValueStorage;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Lcom/tapjoy/TJKeyValueStorage;->remove(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Lta8;->f0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/tapjoy/TJUser;->a:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/tapjoy/TJUser;->g:Lcom/tapjoy/TJKeyValueStorage;

    if-eqz p1, :cond_2

    sget-object v0, Lcom/tapjoy/TJUser;->a:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setUserIdRequest(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V
    .locals 8

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc8

    if-le v2, v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/tapjoy/TJUser;->setUserId(Ljava/lang/String;)V

    const-string p0, "userID cannot exceed 200 characters"

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;)V

    new-instance p0, Liq2;

    invoke-direct {p0, p2, v0}, Liq2;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/tapjoy/TJUser;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance p0, Lhi8;

    invoke-direct {p0, p2}, Lhi8;-><init>(Lcom/tapjoy/TJSetUserIDListener;)V

    invoke-static {p0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    const-string v2, "Failed to set userID"

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/tapjoy/TJUser;->setUserId(Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tapjoy/TapjoyConnectCore;->getBaseURLParams()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "URL parameters: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    const-string v3, "Setting userID to "

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/tapjoy/TJUser;->h:Lcl4;

    invoke-interface {v4}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tapjoy/internal/r2;

    const-string v5, "set_publisher_user_id?"

    invoke-static {v3, v5}, Lni0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tapjoy/TapjoyConnectCore;->getBaseURLParams()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/tapjoy/internal/r2;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, v1, v1, v1}, Lcom/tapjoy/internal/r2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/s2;

    move-result-object v4

    iget-object v4, v4, Lcom/tapjoy/internal/s2;->b:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    invoke-static {v4}, Lcom/tapjoy/TapjoyUtil;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v7, "Success"

    invoke-interface {v4, v7}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-static {v4}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v7, "true"

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v6, v5

    :cond_4
    if-nez v6, :cond_5

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Lra8;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/TJUser;->setUserIdRequest(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V

    return-void

    :cond_5
    if-eqz v6, :cond_6

    const-string p0, "Set userID is successful"

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;)V

    new-instance p0, Lka;

    invoke-direct {p0, p2, v0}, Lka;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void

    :cond_6
    invoke-virtual {p0, v1}, Lcom/tapjoy/TJUser;->setUserId(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;)V

    new-instance p0, Lfp;

    invoke-direct {p0, p2, v5}, Lfp;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void

    :cond_7
    :goto_1
    invoke-virtual {p0, v1}, Lcom/tapjoy/TJUser;->setUserId(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;)V

    new-instance p0, Lgp;

    const/4 p1, 0x3

    invoke-direct {p0, p2, p1}, Lgp;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setUserLevel(I)V
    .locals 1

    sput p1, Lcom/tapjoy/TJUser;->b:I

    const/4 p0, -0x1

    if-ge p1, p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/tapjoy/TJUser;->g:Lcom/tapjoy/TJKeyValueStorage;

    if-eqz p0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "pref_user_level"

    invoke-virtual {p0, v0, p1}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setUserMaxLevel(I)V
    .locals 1

    sput p1, Lcom/tapjoy/TJUser;->c:I

    const/4 p0, -0x1

    if-ge p1, p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/tapjoy/TJUser;->g:Lcom/tapjoy/TJKeyValueStorage;

    if-eqz p0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "pref_max_level"

    invoke-virtual {p0, v0, p1}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setUserSegment(Lcom/tapjoy/TJSegment;)V
    .locals 1

    sput-object p1, Lcom/tapjoy/TJUser;->e:Lcom/tapjoy/TJSegment;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/tapjoy/TJSegment;->UNKNOWN:Lcom/tapjoy/TJSegment;

    const-string v0, "pref_user_segment"

    if-ne p1, p0, :cond_1

    sget-object p0, Lcom/tapjoy/TJUser;->g:Lcom/tapjoy/TJKeyValueStorage;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJKeyValueStorage;->remove(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object p0, Lcom/tapjoy/TJUser;->g:Lcom/tapjoy/TJKeyValueStorage;

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/tapjoy/TJSegment;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setUserTags(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lta8;->f0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc8

    if-gt v1, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/tapjoy/TJUser;->f:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    invoke-virtual {p1, p0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/tapjoy/TJUser;->a()V

    return-void
.end method
