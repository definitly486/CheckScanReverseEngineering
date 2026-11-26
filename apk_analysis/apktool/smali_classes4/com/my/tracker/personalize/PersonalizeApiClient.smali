.class public final Lcom/my/tracker/personalize/PersonalizeApiClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/tracker/personalize/PersonalizeApiClient$Builder;,
        Lcom/my/tracker/personalize/PersonalizeApiClient$OnCompleteListener;
    }
.end annotation


# instance fields
.field private final a:Lcom/my/tracker/personalize/a;


# direct methods
.method public constructor <init>(Lcom/my/tracker/personalize/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/tracker/personalize/PersonalizeApiClient;->a:Lcom/my/tracker/personalize/a;

    return-void
.end method

.method private a(Lcom/my/tracker/personalize/PersonalizeRequest;Lcom/my/tracker/personalize/a;)Ljava/lang/String;
    .locals 4

    .line 151
    invoke-virtual {p1}, Lcom/my/tracker/personalize/PersonalizeRequest;->a()Ljava/lang/String;

    move-result-object p0

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/my/tracker/personalize/a;->b:Ljava/lang/String;

    const-string v2, "/api/v1/recommendation"

    .line 153
    invoke-static {v0, v1, v2, p0}, Lkh;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 154
    invoke-virtual {p1}, Lcom/my/tracker/personalize/PersonalizeRequest;->b()Ljava/util/Map;

    move-result-object p1

    .line 155
    const-string v0, "sdk_key"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    .line 157
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    .line 158
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 159
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 160
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 161
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 162
    invoke-virtual {p0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 163
    :cond_2
    iget-object p1, p2, Lcom/my/tracker/personalize/a;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 164
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic a(Lcom/my/tracker/personalize/PersonalizeApiClient$OnCompleteListener;Lcom/my/tracker/personalize/PersonalizeRequest;Lcom/my/tracker/personalize/PersonalizeResponse;)V
    .locals 0

    .line 149
    invoke-interface {p1, p0, p2, p3}, Lcom/my/tracker/personalize/PersonalizeApiClient$OnCompleteListener;->onRequestComplete(Lcom/my/tracker/personalize/PersonalizeApiClient;Lcom/my/tracker/personalize/PersonalizeRequest;Lcom/my/tracker/personalize/PersonalizeResponse;)V

    return-void
.end method

.method private synthetic a(Lcom/my/tracker/personalize/PersonalizeApiClient$OnCompleteListener;Lcom/my/tracker/personalize/PersonalizeRequest;Ljava/lang/String;)V
    .locals 2

    .line 148
    new-instance v0, Lcom/my/tracker/personalize/PersonalizeResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p3, v1}, Lcom/my/tracker/personalize/PersonalizeResponse;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p0, p2, v0}, Lcom/my/tracker/personalize/PersonalizeApiClient$OnCompleteListener;->onRequestComplete(Lcom/my/tracker/personalize/PersonalizeApiClient;Lcom/my/tracker/personalize/PersonalizeRequest;Lcom/my/tracker/personalize/PersonalizeResponse;)V

    return-void
.end method

.method public static synthetic a(Lcom/my/tracker/personalize/PersonalizeApiClient;Lcom/my/tracker/personalize/PersonalizeApiClient$OnCompleteListener;Lcom/my/tracker/personalize/PersonalizeRequest;Ljava/lang/String;)V
    .locals 0

    .line 150
    invoke-direct {p0, p1, p2, p3}, Lcom/my/tracker/personalize/PersonalizeApiClient;->a(Lcom/my/tracker/personalize/PersonalizeApiClient$OnCompleteListener;Lcom/my/tracker/personalize/PersonalizeRequest;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/my/tracker/personalize/PersonalizeRequest;Lcom/my/tracker/obfuscated/w0$b;Landroid/os/Handler;Lcom/my/tracker/personalize/PersonalizeApiClient$OnCompleteListener;)V
    .locals 14

    if-nez p2, :cond_0

    const-string v0, "PersonalizeApiClient: MyTracker hasn\'t been initialized yet"

    invoke-static {v0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    const/4 v4, 0x0

    const-string v6, "MyTracker hasn\'t been initialized yet"

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v5, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/my/tracker/personalize/PersonalizeApiClient;->a(Lcom/my/tracker/personalize/PersonalizeRequest;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;Lcom/my/tracker/personalize/PersonalizeApiClient$OnCompleteListener;)V

    return-void

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/my/tracker/obfuscated/w0$b;->b()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "PersonalizeApiClient: HTTP response is empty"

    invoke-static {v0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    const/4 v10, 0x0

    const-string v12, "HTTP response is empty"

    const/4 v9, 0x0

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v11, p3

    move-object/from16 v13, p4

    invoke-direct/range {v7 .. v13}, Lcom/my/tracker/personalize/PersonalizeApiClient;->a(Lcom/my/tracker/personalize/PersonalizeRequest;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;Lcom/my/tracker/personalize/PersonalizeApiClient$OnCompleteListener;)V

    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/my/tracker/personalize/PersonalizeRequest;->c()Lcom/my/tracker/personalize/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/my/tracker/personalize/b;->a(Lorg/json/JSONObject;)Lcom/my/tracker/personalize/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/tracker/personalize/c;->a()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v11, p3

    move-object/from16 v13, p4

    invoke-direct/range {v7 .. v13}, Lcom/my/tracker/personalize/PersonalizeApiClient;->a(Lcom/my/tracker/personalize/PersonalizeRequest;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;Lcom/my/tracker/personalize/PersonalizeApiClient$OnCompleteListener;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/my/tracker/personalize/c;->b()Ljava/lang/Object;

    move-result-object v9

    const/4 v12, 0x0

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v11, p3

    move-object/from16 v13, p4

    invoke-direct/range {v7 .. v13}, Lcom/my/tracker/personalize/PersonalizeApiClient;->a(Lcom/my/tracker/personalize/PersonalizeRequest;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;Lcom/my/tracker/personalize/PersonalizeApiClient$OnCompleteListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t parse JSON with error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v0, "PersonalizeApiClient: "

    invoke-virtual {v0, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/tracker/obfuscated/b3;->a(Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v11, p3

    move-object/from16 v13, p4

    invoke-direct/range {v7 .. v13}, Lcom/my/tracker/personalize/PersonalizeApiClient;->a(Lcom/my/tracker/personalize/PersonalizeRequest;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;Lcom/my/tracker/personalize/PersonalizeApiClient$OnCompleteListener;)V

    return-void
.end method

.method private a(Lcom/my/tracker/personalize/PersonalizeRequest;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;Lcom/my/tracker/personalize/PersonalizeApiClient$OnCompleteListener;)V
    .locals 1

    if-nez p4, :cond_0

    .line 142
    sget-object p4, Lcom/my/tracker/obfuscated/m;->a:Landroid/os/Handler;

    .line 143
    :cond_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "PersonalizeApiClient: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/my/tracker/obfuscated/b3;->b(Ljava/lang/String;)V

    .line 145
    new-instance p2, Lf76;

    invoke-direct {p2, p0, p6, p1, p5}, Lf76;-><init>(Lcom/my/tracker/personalize/PersonalizeApiClient;Lcom/my/tracker/personalize/PersonalizeApiClient$OnCompleteListener;Lcom/my/tracker/personalize/PersonalizeRequest;Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 146
    :cond_1
    new-instance p5, Lcom/my/tracker/personalize/PersonalizeResponse;

    const/4 v0, 0x0

    invoke-direct {p5, p2, v0, p3}, Lcom/my/tracker/personalize/PersonalizeResponse;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    new-instance p2, Lg76;

    invoke-direct {p2, p0, p6, p1, p5}, Lg76;-><init>(Lcom/my/tracker/personalize/PersonalizeApiClient;Lcom/my/tracker/personalize/PersonalizeApiClient$OnCompleteListener;Lcom/my/tracker/personalize/PersonalizeRequest;Lcom/my/tracker/personalize/PersonalizeResponse;)V

    invoke-virtual {p4, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Lcom/my/tracker/personalize/PersonalizeRequest;Landroid/os/Handler;Lcom/my/tracker/personalize/PersonalizeApiClient$OnCompleteListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-static {v0}, Lcom/my/tracker/obfuscated/w0;->a(Lcom/my/tracker/MyTrackerConfig$OkHttpClientProvider;)Lcom/my/tracker/obfuscated/w0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/my/tracker/obfuscated/w0;->a(Ljava/lang/String;)Lcom/my/tracker/obfuscated/w0$b;

    move-result-object p1

    .line 141
    invoke-direct {p0, p2, p1, p3, p4}, Lcom/my/tracker/personalize/PersonalizeApiClient;->a(Lcom/my/tracker/personalize/PersonalizeRequest;Lcom/my/tracker/obfuscated/w0$b;Landroid/os/Handler;Lcom/my/tracker/personalize/PersonalizeApiClient$OnCompleteListener;)V

    return-void
.end method

.method public static synthetic b(Lcom/my/tracker/personalize/PersonalizeApiClient;Ljava/lang/String;Lcom/my/tracker/personalize/PersonalizeRequest;Landroid/os/Handler;Lcom/my/tracker/personalize/PersonalizeApiClient$OnCompleteListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/my/tracker/personalize/PersonalizeApiClient;->a(Ljava/lang/String;Lcom/my/tracker/personalize/PersonalizeRequest;Landroid/os/Handler;Lcom/my/tracker/personalize/PersonalizeApiClient$OnCompleteListener;)V

    return-void
.end method

.method public static synthetic c(Lcom/my/tracker/personalize/PersonalizeApiClient;Lcom/my/tracker/personalize/PersonalizeApiClient$OnCompleteListener;Lcom/my/tracker/personalize/PersonalizeRequest;Lcom/my/tracker/personalize/PersonalizeResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/my/tracker/personalize/PersonalizeApiClient;->a(Lcom/my/tracker/personalize/PersonalizeApiClient$OnCompleteListener;Lcom/my/tracker/personalize/PersonalizeRequest;Lcom/my/tracker/personalize/PersonalizeResponse;)V

    return-void
.end method

.method public static newBuilder()Lcom/my/tracker/personalize/PersonalizeApiClient$Builder;
    .locals 1

    new-instance v0, Lcom/my/tracker/personalize/PersonalizeApiClient$Builder;

    invoke-direct {v0}, Lcom/my/tracker/personalize/PersonalizeApiClient$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public sendRequest(Lcom/my/tracker/personalize/PersonalizeRequest;Landroid/os/Handler;Lcom/my/tracker/personalize/PersonalizeApiClient$OnCompleteListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/my/tracker/personalize/PersonalizeRequest<",
            "TT;>;",
            "Landroid/os/Handler;",
            "Lcom/my/tracker/personalize/PersonalizeApiClient$OnCompleteListener<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/my/tracker/personalize/PersonalizeApiClient;->a:Lcom/my/tracker/personalize/a;

    invoke-direct {p0, p1, v0}, Lcom/my/tracker/personalize/PersonalizeApiClient;->a(Lcom/my/tracker/personalize/PersonalizeRequest;Lcom/my/tracker/personalize/a;)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Le76;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Le76;-><init>(Lcom/my/tracker/personalize/PersonalizeApiClient;Ljava/lang/String;Lcom/my/tracker/personalize/PersonalizeRequest;Landroid/os/Handler;Lcom/my/tracker/personalize/PersonalizeApiClient$OnCompleteListener;)V

    invoke-static {v1}, Lcom/my/tracker/obfuscated/m;->b(Ljava/lang/Runnable;)V

    return-void
.end method
