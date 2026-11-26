.class public Lcom/google/firebase/inappmessaging/internal/ApiClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FETCHING_CAMPAIGN_MESSAGE:Ljava/lang/String; = "Fetching campaigns from service."


# instance fields
.field private final application:Landroid/app/Application;

.field private final clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;

.field private final grpcClient:Lws6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lws6<",
            "Lcom/google/firebase/inappmessaging/internal/GrpcClient;",
            ">;"
        }
    .end annotation
.end field

.field private final providerInstaller:Lcom/google/firebase/inappmessaging/internal/ProviderInstaller;


# direct methods
.method public constructor <init>(Lws6;Lcom/google/firebase/FirebaseApp;Landroid/app/Application;Lcom/google/firebase/inappmessaging/internal/time/Clock;Lcom/google/firebase/inappmessaging/internal/ProviderInstaller;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lws6<",
            "Lcom/google/firebase/inappmessaging/internal/GrpcClient;",
            ">;",
            "Lcom/google/firebase/FirebaseApp;",
            "Landroid/app/Application;",
            "Lcom/google/firebase/inappmessaging/internal/time/Clock;",
            "Lcom/google/firebase/inappmessaging/internal/ProviderInstaller;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/ApiClient;->grpcClient:Lws6;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/ApiClient;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    iput-object p3, p0, Lcom/google/firebase/inappmessaging/internal/ApiClient;->application:Landroid/app/Application;

    iput-object p4, p0, Lcom/google/firebase/inappmessaging/internal/ApiClient;->clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

    iput-object p5, p0, Lcom/google/firebase/inappmessaging/internal/ApiClient;->providerInstaller:Lcom/google/firebase/inappmessaging/internal/ProviderInstaller;

    return-void
.end method

.method private getClientAppInfo(Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;)Lql1;
    .locals 1

    invoke-static {}, Lql1;->b()Lql1$b;

    move-result-object v0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/ApiClient;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lql1$b;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;->installationId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lql1$b;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;->installationTokenResult()Lcom/google/firebase/installations/InstallationTokenResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/installations/InstallationTokenResult;->getToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lql1$b;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/protobuf/o$a;->build()Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lql1;

    return-object p0
.end method

.method private getClientSignals()Lbm1;
    .locals 2

    invoke-static {}, Lbm1;->b()Lbm1$a;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbm1$a;->d(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbm1$a;->c(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbm1$a;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/ApiClient;->getVersionName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Lbm1$a;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/o$a;->build()Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lbm1;

    return-object p0
.end method

.method private getVersionName()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ApiClient;->application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/ApiClient;->application:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error finding versionName : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/Logging;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private withCacheExpirationSafeguards(Lf73;)Lf73;
    .locals 6

    invoke-virtual {p1}, Lf73;->c()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/internal/ApiClient;->clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

    invoke-interface {v2}, Lcom/google/firebase/inappmessaging/internal/time/Clock;->now()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Lf73;->c()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/internal/ApiClient;->clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

    invoke-interface {v2}, Lcom/google/firebase/inappmessaging/internal/time/Clock;->now()J

    move-result-wide v2

    const-wide/32 v4, 0xf731400

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/o;->toBuilder()Lcom/google/protobuf/o$a;

    move-result-object p1

    check-cast p1, Lf73$b;

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/ApiClient;->clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

    invoke-interface {p0}, Lcom/google/firebase/inappmessaging/internal/time/Clock;->now()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lf73$b;->b(J)V

    invoke-virtual {p1}, Lcom/google/protobuf/o$a;->build()Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lf73;

    return-object p0
.end method


# virtual methods
.method public getFiams(Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;Lj21;)Lf73;
    .locals 3

    const-string v0, "Fetching campaigns from service."

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ApiClient;->providerInstaller:Lcom/google/firebase/inappmessaging/internal/ProviderInstaller;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/ProviderInstaller;->install()V

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ApiClient;->grpcClient:Lws6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/GrpcClient;

    invoke-static {}, Le73;->d()Le73$b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/internal/ApiClient;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v2}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/FirebaseOptions;->getGcmSenderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Le73$b;->d(Ljava/lang/String;)V

    invoke-virtual {p2}, Lj21;->c()Lcom/google/protobuf/q$j;

    move-result-object p2

    invoke-virtual {v1, p2}, Le73$b;->b(Lcom/google/protobuf/q$j;)V

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/ApiClient;->getClientSignals()Lbm1;

    move-result-object p2

    invoke-virtual {v1, p2}, Le73$b;->c(Lbm1;)V

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/ApiClient;->getClientAppInfo(Lcom/google/firebase/inappmessaging/internal/InstallationIdResult;)Lql1;

    move-result-object p1

    invoke-virtual {v1, p1}, Le73$b;->e(Lql1;)V

    invoke-virtual {v1}, Lcom/google/protobuf/o$a;->build()Lcom/google/protobuf/o;

    move-result-object p1

    check-cast p1, Le73;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/GrpcClient;->fetchEligibleCampaigns(Le73;)Lf73;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/ApiClient;->withCacheExpirationSafeguards(Lf73;)Lf73;

    move-result-object p0

    return-object p0
.end method
