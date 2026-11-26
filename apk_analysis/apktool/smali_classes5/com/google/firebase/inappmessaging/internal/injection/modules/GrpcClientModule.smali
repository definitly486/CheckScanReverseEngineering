.class public Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/firebase/inappmessaging/dagger/Module;
.end annotation


# instance fields
.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    return-void
.end method

.method public static getSignature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x40

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_1

    array-length p1, p0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    aget-object p0, p0, p1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;->signatureDigest(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    :goto_0
    return-object v1
.end method

.method private static signatureDigest(Landroid/content/pm/Signature;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    :try_start_0
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    sget-object v0, Lcom/google/common/io/BaseEncoding;->c:Lcom/google/common/io/BaseEncoding$b;

    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding$d;->h()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/io/BaseEncoding;->c([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public providesApiKeyHeaders()Lla5;
    .locals 6
    .annotation runtime Lcom/google/firebase/inappmessaging/dagger/Provides;
    .end annotation

    sget-object v0, Lla5;->d:Lla5$a;

    sget-object v1, Lla5$d;->d:Ljava/util/BitSet;

    new-instance v1, Lla5$b;

    const-string v2, "X-Goog-Api-Key"

    invoke-direct {v1, v2, v0}, Lla5$b;-><init>(Ljava/lang/String;Lla5$c;)V

    new-instance v2, Lla5$b;

    const-string v3, "X-Android-Package"

    invoke-direct {v2, v3, v0}, Lla5$b;-><init>(Ljava/lang/String;Lla5$c;)V

    new-instance v3, Lla5$b;

    const-string v4, "X-Android-Cert"

    invoke-direct {v3, v4, v0}, Lla5$b;-><init>(Ljava/lang/String;Lla5$c;)V

    new-instance v0, Lla5;

    invoke-direct {v0}, Lla5;-><init>()V

    iget-object v4, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v4}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v5}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/FirebaseOptions;->getApiKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lla5;->e(Lla5$d;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v4}, Lla5;->e(Lla5$d;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p0, v4}, Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;->getSignature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, v3, p0}, Lla5;->e(Lla5$d;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public providesInAppMessagingSdkServingStub(Ly81;Lla5;)Ly34$a;
    .locals 1
    .annotation runtime Lcom/google/firebase/inappmessaging/dagger/Provides;
    .end annotation

    new-instance p0, Lpa5;

    invoke-direct {p0, p2}, Lpa5;-><init>(Lla5;)V

    const/4 p2, 0x1

    new-array p2, p2, [Lxl1;

    const/4 v0, 0x0

    aput-object p0, p2, v0

    sget p0, Lyl1;->a:I

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string p2, "channel"

    invoke-static {p1, p2}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lxl1;

    new-instance v0, Lyl1$b;

    invoke-direct {v0, p1, p2}, Lyl1$b;-><init>(Ly81;Lxl1;)V

    move-object p1, v0

    goto :goto_0

    :cond_0
    sget-object p0, Lio/grpc/b;->h:Lio/grpc/b;

    sget-object p2, Lul1;->c:Lio/grpc/b$b;

    sget-object v0, Lul1$c;->BLOCKING:Lul1$c;

    invoke-virtual {p0, p2, v0}, Lio/grpc/b;->d(Lio/grpc/b$b;Ljava/lang/Object;)Lio/grpc/b;

    move-result-object p0

    new-instance p2, Ly34$a;

    invoke-direct {p2, p1, p0}, Lv1;-><init>(Ly81;Lio/grpc/b;)V

    return-object p2
.end method
