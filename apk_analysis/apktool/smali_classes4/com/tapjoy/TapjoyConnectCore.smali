.class public Lcom/tapjoy/TapjoyConnectCore;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static j:Lcom/tapjoy/TapjoyConnectCore;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/tapjoy/TJConnectListener;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Landroid/content/pm/PackageManager;

.field public g:Ljava/util/Hashtable;

.field public final h:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final i:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tapjoy/TapjoyConnectCore;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyConnectCore;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->j:Lcom/tapjoy/TapjoyConnectCore;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->b:Lcom/tapjoy/TJConnectListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyConnectCore;->c:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->e:Ljava/lang/String;

    sget-object v0, Lcom/tapjoy/TapjoyConnectFlag;->CONNECT_FLAG_DEFAULTS:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->g:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->i:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static getInstance()Lcom/tapjoy/TapjoyConnectCore;
    .locals 1

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->j:Lcom/tapjoy/TapjoyConnectCore;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tapjoy/TapjoyConnectCore;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyConnectCore;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->j:Lcom/tapjoy/TapjoyConnectCore;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 382
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lm97;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lm97;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic a(ILjava/lang/String;)V
    .locals 0

    .line 385
    iget-object p0, p0, Lcom/tapjoy/TapjoyConnectCore;->b:Lcom/tapjoy/TJConnectListener;

    if-eqz p0, :cond_0

    .line 386
    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/TJConnectListener;->onConnectFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    iput-object p1, p0, Lcom/tapjoy/TapjoyConnectCore;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->f:Landroid/content/pm/PackageManager;

    sget-object v0, Lcom/tapjoy/TJApiDecoded;->INSTANCE:Lcom/tapjoy/TJApiDecoded;

    invoke-virtual {v0, p2}, Lcom/tapjoy/TJApiDecoded;->decode(Ljava/lang/String;)V

    sget-object p2, Lcom/tapjoy/TJTracking;->INSTANCE:Lcom/tapjoy/TJTracking;

    invoke-virtual {p2}, Lcom/tapjoy/TJTracking;->init()V

    sget-object p2, Lcom/tapjoy/internal/i2;->c:Lcom/tapjoy/internal/i2;

    invoke-virtual {p2}, Lcom/tapjoy/internal/i2;->a()V

    invoke-static {}, Lcom/tapjoy/TJPrivacyPolicy;->getInstance()Lcom/tapjoy/TJPrivacyPolicy;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tapjoy/TJPrivacyPolicy;->a(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/tapjoy/TapjoyConnectCore;->g:Ljava/util/Hashtable;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/TapjoyConnectCore;->g:Ljava/util/Hashtable;

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/tapjoy/TapjoyConnectCore;->f:Landroid/content/pm/PackageManager;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/tapjoy/TapjoyConnectCore;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x80

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p2, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p2, :cond_3

    sget-object p2, Lcom/tapjoy/TapjoyConnectFlag;->FLAG_ARRAY:[Ljava/lang/String;

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tapjoy."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found manifest flag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/tapjoy/TapjoyConnectCore;->addConnectFlag(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "Metadata successfully loaded"

    invoke-static {p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string p1, "No metadata present."

    invoke-static {p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error reading manifest meta-data -- "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;)V

    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/tapjoy/TapjoyConnectCore;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/tapjoy/TapjoyConnectCore;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "raw/tapjoy_config"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_5

    :try_start_1
    new-instance p2, Ljava/util/Properties;

    invoke-direct {p2}, Ljava/util/Properties;-><init>()V

    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {p2}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v0, :cond_5

    :try_start_2
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/TapjoyConnectCore;->addConnectFlag(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_1
    :try_start_3
    const-string v0, "Error parsing configuration properties in tapjoy_config.txt"

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    :cond_5
    sget-object p1, Lcom/tapjoy/TJIntegrationCheck;->INSTANCE:Lcom/tapjoy/TJIntegrationCheck;

    invoke-virtual {p1}, Lcom/tapjoy/TJIntegrationCheck;->integrationCheck()V

    const-string p1, "TJC_OPTION_SERVICE_URL"

    invoke-virtual {p0, p1}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tapjoy/TapjoyUtil;->getRedirectDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/tapjoy/TapjoyConnectCore;->e:Ljava/lang/String;

    iget-object p2, p0, Lcom/tapjoy/TapjoyConnectCore;->g:Ljava/util/Hashtable;

    if-eqz p2, :cond_7

    const-string p2, "Connect Flags:"

    invoke-static {p2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;)V

    const-string p2, "--------------------"

    invoke-static {p2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->g:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hostURL: ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "redirectDomain: ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tapjoy/TapjoyConnectCore;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public final synthetic a(Ljava/lang/String;)V
    .locals 2

    .line 383
    sget-object v0, Lcom/tapjoy/TJTracking;->INSTANCE:Lcom/tapjoy/TJTracking;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJTracking;->setAppSetID(Ljava/lang/String;)V

    .line 384
    iget-object p1, p0, Lcom/tapjoy/TapjoyConnectCore;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v0, La80;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, La80;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addConnectFlag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "TJC_OPTION_SERVICE_URL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TJC_OPTION_PLACEMENT_SERVICE_URL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    iget-object p0, p0, Lcom/tapjoy/TapjoyConnectCore;->g:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final synthetic b()V
    .locals 2

    new-instance v0, Lcom/tapjoy/internal/h1;

    invoke-direct {v0}, Lcom/tapjoy/internal/h1;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnectCore;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/tapjoy/TapjoyConnectCore;->b:Lcom/tapjoy/TJConnectListener;

    invoke-virtual {v0, v1, p0}, Lcom/tapjoy/internal/h1;->a(Landroid/content/Context;Lcom/tapjoy/TJConnectListener;)V

    return-void
.end method

.method public final b(ILjava/lang/String;)V
    .locals 1

    .line 13
    new-instance v0, Llk8;

    invoke-direct {v0, p0, p1, p2}, Llk8;-><init>(Lcom/tapjoy/TapjoyConnectCore;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic c()V
    .locals 4

    new-instance v0, Lcom/tapjoy/TJAppSetId;

    invoke-direct {v0}, Lcom/tapjoy/TJAppSetId;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnectCore;->a:Landroid/content/Context;

    new-instance v2, Ldh1;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Ldh1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TJAppSetId;->fetch(Landroid/content/Context;Lcom/tapjoy/TJTaskHandler;)V

    return-void
.end method

.method public getBaseURLParams()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Lcom/tapjoy/internal/e1;

    invoke-direct {p0}, Lcom/tapjoy/internal/e1;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/internal/e1;->f:Lcom/tapjoy/internal/s1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/tapjoy/internal/s1;->a:Ljava/lang/Boolean;

    const-string v3, "0"

    const-string v4, "1"

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v4

    goto :goto_0

    :cond_0
    move-object v2, v3

    goto :goto_0

    :cond_1
    move-object v2, v5

    :goto_0
    const-string v6, "below_consent_age"

    const/4 v7, 0x1

    invoke-static {v0, v6, v2, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v1, Lcom/tapjoy/internal/s1;->b:Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v4

    goto :goto_1

    :cond_2
    move-object v2, v3

    goto :goto_1

    :cond_3
    move-object v2, v5

    :goto_1
    const-string v6, "gdpr"

    invoke-static {v0, v6, v2, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v1, Lcom/tapjoy/internal/s1;->e:Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v3, v4

    goto :goto_2

    :cond_4
    move-object v3, v5

    :cond_5
    :goto_2
    const-string v2, "package_usage_stats_consent"

    invoke-static {v0, v2, v3, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v1, Lcom/tapjoy/internal/s1;->c:Ljava/lang/String;

    const-string v3, "cgdpr"

    invoke-static {v0, v3, v2, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, v1, Lcom/tapjoy/internal/s1;->d:Ljava/lang/String;

    const-string v2, "us_privacy"

    invoke-static {v0, v2, v1, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/tapjoy/internal/e1;->g:Lcom/tapjoy/internal/y1;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/y1;->a(Ljava/util/HashMap;)V

    iget-object v1, p0, Lcom/tapjoy/internal/e1;->c:Lcom/tapjoy/internal/u1;

    if-eqz v1, :cond_7

    iget-object v2, v1, Lcom/tapjoy/internal/u1;->a:Ljava/lang/String;

    const-string v3, "verifier"

    invoke-static {v0, v3, v2, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v1, Lcom/tapjoy/internal/u1;->b:Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_6
    const-string v2, "debug"

    invoke-static {v0, v2, v5, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v1, Lcom/tapjoy/internal/u1;->f:Ljava/lang/String;

    const-string v3, "test_id"

    invoke-static {v0, v3, v2, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v1, Lcom/tapjoy/internal/u1;->g:Ljava/lang/String;

    const-string v3, "install_id"

    invoke-static {v0, v3, v2, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v1, Lcom/tapjoy/internal/u1;->e:Ljava/lang/String;

    const-string v3, "plugin"

    invoke-static {v0, v3, v2, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v1, Lcom/tapjoy/internal/u1;->c:Ljava/lang/String;

    const-string v3, "sdk_type"

    invoke-static {v0, v3, v2, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v1, Lcom/tapjoy/internal/u1;->h:Ljava/lang/String;

    const-string v3, "library_version"

    invoke-static {v0, v3, v2, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v1, Lcom/tapjoy/internal/u1;->i:Ljava/lang/String;

    const-string v3, "library_revision"

    invoke-static {v0, v3, v2, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v1, Lcom/tapjoy/internal/u1;->j:Ljava/lang/String;

    const-string v3, "bridge_version"

    invoke-static {v0, v3, v2, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v1, Lcom/tapjoy/internal/u1;->d:Ljava/lang/Long;

    const-string v3, "installed"

    invoke-static {v0, v3, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    iget-object v1, v1, Lcom/tapjoy/internal/u1;->k:Lcom/tapjoy/internal/v1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/tapjoy/internal/v1;->a:Ljava/lang/String;

    const-string v3, "session_id"

    invoke-static {v0, v3, v2, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v1, Lcom/tapjoy/internal/v1;->g:Ljava/lang/Integer;

    const-string v3, "fq7"

    invoke-static {v0, v3, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    iget-object v2, v1, Lcom/tapjoy/internal/v1;->h:Ljava/lang/Integer;

    const-string v3, "fq30"

    invoke-static {v0, v3, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    iget-object v2, v1, Lcom/tapjoy/internal/v1;->d:Ljava/lang/Integer;

    const-string v3, "session_total_count"

    invoke-static {v0, v3, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    iget-object v2, v1, Lcom/tapjoy/internal/v1;->e:Ljava/lang/Long;

    const-string v3, "session_total_length"

    invoke-static {v0, v3, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    iget-object v2, v1, Lcom/tapjoy/internal/v1;->c:Ljava/lang/Long;

    const-string v3, "session_last_at"

    invoke-static {v0, v3, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    iget-object v2, v1, Lcom/tapjoy/internal/v1;->b:Ljava/lang/Long;

    const-string v3, "session_last_length"

    invoke-static {v0, v3, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    iget-object v1, v1, Lcom/tapjoy/internal/v1;->f:Ljava/lang/Long;

    const-string v2, "session_duration"

    invoke-static {v0, v2, v1}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    :cond_7
    iget-object v1, p0, Lcom/tapjoy/internal/e1;->e:Lcom/tapjoy/internal/z0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/tapjoy/internal/z0;->a:Ljava/lang/String;

    const-string v3, "app_id"

    invoke-static {v0, v3, v2, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v1, Lcom/tapjoy/internal/z0;->d:Ljava/lang/String;

    const-string v3, "app_version"

    invoke-static {v0, v3, v2, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v1, Lcom/tapjoy/internal/z0;->h:Ljava/lang/String;

    const-string v3, "app_group_id"

    invoke-static {v0, v3, v2, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v1, Lcom/tapjoy/internal/z0;->f:Ljava/lang/String;

    const-string v3, "pkg_ver"

    invoke-static {v0, v3, v2, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v1, Lcom/tapjoy/internal/z0;->g:Ljava/lang/String;

    const-string v3, "pkg_rev"

    invoke-static {v0, v3, v2, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v1, Lcom/tapjoy/internal/z0;->e:Ljava/lang/String;

    const-string v3, "pkg_id"

    invoke-static {v0, v3, v2, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v1, Lcom/tapjoy/internal/z0;->i:Ljava/lang/String;

    const-string v3, "category"

    invoke-static {v0, v3, v2, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, v1, Lcom/tapjoy/internal/z0;->j:Lcom/tapjoy/internal/q1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/tapjoy/internal/q1;->a:Ljava/lang/String;

    const-string v2, "cp"

    invoke-static {v0, v2, v1, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/tapjoy/internal/e1;->d:Lcom/tapjoy/internal/j1;

    if-eqz v1, :cond_8

    iget-object v2, v1, Lcom/tapjoy/internal/j1;->a:Ljava/lang/String;

    const-string v3, "managed_device_id"

    invoke-static {v0, v3, v2, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v1, Lcom/tapjoy/internal/j1;->e:Ljava/lang/String;

    const-string v3, "device_name"

    invoke-static {v0, v3, v2, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v1, Lcom/tapjoy/internal/j1;->b:Ljava/lang/String;

    const-string v3, "device_type"

    invoke-static {v0, v3, v2, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v1, Lcom/tapjoy/internal/j1;->c:Ljava/lang/String;

    const-string v3, "connection_type"

    invoke-static {v0, v3, v2, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v1, Lcom/tapjoy/internal/j1;->d:Ljava/lang/String;

    const-string v3, "connection_subtype"

    invoke-static {v0, v3, v2, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v1, Lcom/tapjoy/internal/j1;->f:Ljava/lang/Float;

    const-string v3, "volume"

    invoke-static {v0, v3, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    iget-object v2, v1, Lcom/tapjoy/internal/j1;->h:Ljava/lang/Float;

    const-string v3, "brightness"

    invoke-static {v0, v3, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    iget-object v2, v1, Lcom/tapjoy/internal/j1;->g:Ljava/lang/Float;

    const-string v3, "battery"

    invoke-static {v0, v3, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    iget-object v2, v1, Lcom/tapjoy/internal/j1;->i:Ljava/lang/Integer;

    const-string v3, "display_w"

    invoke-static {v0, v3, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    iget-object v2, v1, Lcom/tapjoy/internal/j1;->j:Ljava/lang/Integer;

    const-string v3, "display_h"

    invoke-static {v0, v3, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    iget-object v2, v1, Lcom/tapjoy/internal/j1;->k:Ljava/lang/Integer;

    const-string v3, "display_d"

    invoke-static {v0, v3, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    iget-object v2, v1, Lcom/tapjoy/internal/j1;->k:Ljava/lang/Integer;

    const-string v3, "screen_density"

    invoke-static {v0, v3, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    iget-object v2, v1, Lcom/tapjoy/internal/j1;->l:Lcom/tapjoy/internal/k1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lcom/tapjoy/internal/k1;->a:Ljava/lang/String;

    const-string v3, "country_code"

    invoke-static {v0, v3, v2, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v1, Lcom/tapjoy/internal/j1;->n:Lcom/tapjoy/internal/n1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Lcom/tapjoy/internal/n1;->e:Ljava/lang/String;

    const-string v4, "advertising_id"

    invoke-static {v0, v4, v3, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, v2, Lcom/tapjoy/internal/n1;->f:Ljava/lang/String;

    const-string v4, "platform"

    invoke-static {v0, v4, v3, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, v2, Lcom/tapjoy/internal/n1;->g:Ljava/lang/String;

    const-string v4, "os_version"

    invoke-static {v0, v4, v3, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, v2, Lcom/tapjoy/internal/n1;->a:Ljava/lang/String;

    const-string v4, "language_code"

    invoke-static {v0, v4, v3, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, v2, Lcom/tapjoy/internal/n1;->i:Ljava/lang/String;

    const-string v4, "theme"

    invoke-static {v0, v4, v3, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, v2, Lcom/tapjoy/internal/n1;->h:Ljava/lang/String;

    const-string v4, "timezone"

    invoke-static {v0, v4, v3, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, v2, Lcom/tapjoy/internal/n1;->b:Ljava/lang/String;

    const-string v4, "store"

    invoke-static {v0, v4, v3, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, v2, Lcom/tapjoy/internal/n1;->c:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "store_view"

    invoke-static {v0, v4, v3, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v3, v2, Lcom/tapjoy/internal/n1;->d:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ad_tracking_enabled"

    invoke-static {v0, v4, v3, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v2, Lcom/tapjoy/internal/n1;->j:Lcom/tapjoy/internal/x0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Lcom/tapjoy/internal/x0;->d:Ljava/lang/String;

    const-string v4, "android_id"

    invoke-static {v0, v4, v3, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, v2, Lcom/tapjoy/internal/x0;->e:Ljava/lang/String;

    const-string v4, "device_manufacturer"

    invoke-static {v0, v4, v3, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, v2, Lcom/tapjoy/internal/x0;->b:Ljava/lang/String;

    const-string v4, "installer"

    invoke-static {v0, v4, v3, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, v2, Lcom/tapjoy/internal/x0;->i:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ad_id_check_disabled"

    invoke-static {v0, v4, v3, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, v2, Lcom/tapjoy/internal/x0;->j:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "legacy_id_fallback_allowed"

    invoke-static {v0, v4, v3, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, v2, Lcom/tapjoy/internal/x0;->g:Ljava/lang/String;

    const-string v4, "packaged_gps_version"

    invoke-static {v0, v4, v3, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, v2, Lcom/tapjoy/internal/x0;->f:Ljava/lang/String;

    const-string v4, "device_gps_version"

    invoke-static {v0, v4, v3, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, v2, Lcom/tapjoy/internal/x0;->h:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "optout_adid"

    invoke-static {v0, v4, v3, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, v2, Lcom/tapjoy/internal/x0;->c:Ljava/lang/String;

    const-string v4, "app_set_id"

    invoke-static {v0, v4, v3, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, v2, Lcom/tapjoy/internal/x0;->k:Ljava/lang/String;

    const-string v4, "pkg_sign"

    invoke-static {v0, v4, v3, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, v2, Lcom/tapjoy/internal/x0;->a:Ljava/lang/Integer;

    const-string v4, "screen_layout_size"

    invoke-static {v0, v4, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    iget-object v3, v2, Lcom/tapjoy/internal/x0;->l:Ljava/lang/Long;

    const-string v4, "avail_disk"

    invoke-static {v0, v4, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    iget-object v3, v2, Lcom/tapjoy/internal/x0;->m:Ljava/lang/Long;

    const-string v4, "total_disk"

    invoke-static {v0, v4, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    iget-object v3, v2, Lcom/tapjoy/internal/x0;->q:Ljava/lang/Integer;

    const-string v4, "target_sdk"

    invoke-static {v0, v4, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    iget-object v3, v2, Lcom/tapjoy/internal/x0;->p:Ljava/lang/Integer;

    const-string v4, "min_sdk"

    invoke-static {v0, v4, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    iget-object v3, v2, Lcom/tapjoy/internal/x0;->n:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ad_unit_theme_changed"

    invoke-static {v0, v4, v3, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v2, Lcom/tapjoy/internal/x0;->o:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "web_theme_changed"

    invoke-static {v0, v3, v2, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, v1, Lcom/tapjoy/internal/j1;->m:Lcom/tapjoy/internal/f1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/tapjoy/internal/f1;->a:Ljava/lang/String;

    const-string v3, "carrier_name"

    invoke-static {v0, v3, v2, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v1, Lcom/tapjoy/internal/f1;->c:Ljava/lang/String;

    const-string v3, "carrier_country_code"

    invoke-static {v0, v3, v2, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v1, Lcom/tapjoy/internal/f1;->e:Ljava/lang/String;

    const-string v3, "mobile_network_code"

    invoke-static {v0, v3, v2, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v1, Lcom/tapjoy/internal/f1;->d:Ljava/lang/String;

    const-string v3, "mobile_country_code"

    invoke-static {v0, v3, v2, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, v1, Lcom/tapjoy/internal/f1;->f:Ljava/lang/String;

    const-string v2, "country_sim"

    invoke-static {v0, v2, v1, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_8
    iget-wide v1, p0, Lcom/tapjoy/internal/e1;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v1, "timestamp"

    invoke-static {v0, v1, p0}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    return-object v0
.end method

.method public getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->g:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tapjoy/TapjoyConnectCore;->g:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    sget-object v0, Lcom/tapjoy/internal/i;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    sget-object v0, Lcom/tapjoy/internal/i;->c:Lcom/tapjoy/internal/v2;

    iget-object v0, v0, Lcom/tapjoy/internal/v2;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroid/content/Context;

    :cond_1
    iput-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->a:Landroid/content/Context;

    :cond_2
    return-object v0
.end method

.method public getCustomParameter()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TapjoyConnectCore;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getHostURL()Ljava/lang/String;
    .locals 1

    const-string v0, "TJC_OPTION_SERVICE_URL"

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPlacementURL()Ljava/lang/String;
    .locals 1

    const-string v0, "TJC_OPTION_PLACEMENT_SERVICE_URL"

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRedirectDomain()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TapjoyConnectCore;->e:Ljava/lang/String;

    return-object p0
.end method

.method public isConnected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tapjoy/TapjoyConnectCore;->c:Z

    return p0
.end method

.method public isViewOpen()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isViewOpen: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/TapjoyConnectCore;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tapjoy/TapjoyConnectCore;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public release()V
    .locals 0

    const/4 p0, 0x0

    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->j:Lcom/tapjoy/TapjoyConnectCore;

    const-string p0, "Releasing core static instance."

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/tapjoy/TJConnectListener;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->g:Ljava/util/Hashtable;

    invoke-virtual {v0, p3}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    sget-object v0, Lcom/tapjoy/internal/i2;->c:Lcom/tapjoy/internal/i2;

    iget-object v0, v0, Lcom/tapjoy/internal/i2;->a:Lcom/tapjoy/internal/m0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p3}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    sget-object v3, Lcom/tapjoy/internal/m0;->f:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :cond_0
    iget-object v4, v0, Lcom/tapjoy/internal/m0;->c:Lcom/tapjoy/internal/k;

    iget-object v4, v4, Lcom/tapjoy/internal/k;->a:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p3, v0, Lcom/tapjoy/internal/m0;->d:Lcom/tapjoy/internal/k;

    iput-object v1, p3, Lcom/tapjoy/internal/k;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/tapjoy/internal/l;->setChanged()V

    :cond_2
    iput-object p4, p0, Lcom/tapjoy/TapjoyConnectCore;->b:Lcom/tapjoy/TJConnectListener;

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/TapjoyConnectCore;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tapjoy/TapjoyConnectCore;->a()V
    :try_end_0
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1}, Lcom/tapjoy/TapjoyConnectCore;->b(ILjava/lang/String;)V

    sget-object p0, Lcom/tapjoy/internal/s;->b:Lcom/tapjoy/internal/r;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/r;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/tapjoy/TapjoyConnectCore;->b(ILjava/lang/String;)V

    sget-object p0, Lcom/tapjoy/internal/s;->b:Lcom/tapjoy/internal/r;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/r;->notifyObservers(Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public setConnected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tapjoy/TapjoyConnectCore;->c:Z

    return-void
.end method

.method public setCustomParameter(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TapjoyConnectCore;->d:Ljava/lang/String;

    return-void
.end method

.method public viewDidClose(Ljava/lang/String;)V
    .locals 1

    const-string v0, "viewDidClose: "

    invoke-static {v0, p1}, Ljg;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tapjoy/TapjoyConnectCore;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    sget-object p0, Lcom/tapjoy/internal/s;->d:Lcom/tapjoy/internal/r;

    invoke-virtual {p0}, Lcom/tapjoy/internal/r;->notifyObservers()V

    return-void
.end method

.method public viewWillOpen(Ljava/lang/String;)V
    .locals 1

    const-string v0, "viewWillOpen: "

    invoke-static {v0, p1}, Ljg;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tapjoy/TapjoyConnectCore;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method
