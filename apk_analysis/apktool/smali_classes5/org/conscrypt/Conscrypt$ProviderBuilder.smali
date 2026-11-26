.class public Lorg/conscrypt/Conscrypt$ProviderBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/Conscrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProviderBuilder"
.end annotation


# instance fields
.field private defaultTlsProtocol:Ljava/lang/String;

.field private deprecatedTlsV1:Z

.field private enabledTlsV1:Z

.field private name:Ljava/lang/String;

.field private provideTrustManager:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/conscrypt/Platform;->getDefaultProviderName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/Conscrypt$ProviderBuilder;->name:Ljava/lang/String;

    invoke-static {}, Lorg/conscrypt/Platform;->provideTrustManagerByDefault()Z

    move-result v0

    iput-boolean v0, p0, Lorg/conscrypt/Conscrypt$ProviderBuilder;->provideTrustManager:Z

    const-string v0, "TLSv1.3"

    iput-object v0, p0, Lorg/conscrypt/Conscrypt$ProviderBuilder;->defaultTlsProtocol:Ljava/lang/String;

    invoke-static {}, Lorg/conscrypt/Platform;->isTlsV1Deprecated()Z

    move-result v0

    iput-boolean v0, p0, Lorg/conscrypt/Conscrypt$ProviderBuilder;->deprecatedTlsV1:Z

    invoke-static {}, Lorg/conscrypt/Platform;->isTlsV1Supported()Z

    move-result v0

    iput-boolean v0, p0, Lorg/conscrypt/Conscrypt$ProviderBuilder;->enabledTlsV1:Z

    return-void
.end method

.method public synthetic constructor <init>(Lorg/conscrypt/Conscrypt$1;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/conscrypt/Conscrypt$ProviderBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Ljava/security/Provider;
    .locals 6

    new-instance v0, Lorg/conscrypt/OpenSSLProvider;

    iget-object v1, p0, Lorg/conscrypt/Conscrypt$ProviderBuilder;->name:Ljava/lang/String;

    iget-boolean v2, p0, Lorg/conscrypt/Conscrypt$ProviderBuilder;->provideTrustManager:Z

    iget-object v3, p0, Lorg/conscrypt/Conscrypt$ProviderBuilder;->defaultTlsProtocol:Ljava/lang/String;

    iget-boolean v4, p0, Lorg/conscrypt/Conscrypt$ProviderBuilder;->deprecatedTlsV1:Z

    iget-boolean v5, p0, Lorg/conscrypt/Conscrypt$ProviderBuilder;->enabledTlsV1:Z

    invoke-direct/range {v0 .. v5}, Lorg/conscrypt/OpenSSLProvider;-><init>(Ljava/lang/String;ZLjava/lang/String;ZZ)V

    return-object v0
.end method

.method public defaultTlsProtocol(Ljava/lang/String;)Lorg/conscrypt/Conscrypt$ProviderBuilder;
    .locals 0

    iput-object p1, p0, Lorg/conscrypt/Conscrypt$ProviderBuilder;->defaultTlsProtocol:Ljava/lang/String;

    return-object p0
.end method

.method public isTlsV1Deprecated(Z)Lorg/conscrypt/Conscrypt$ProviderBuilder;
    .locals 0

    iput-boolean p1, p0, Lorg/conscrypt/Conscrypt$ProviderBuilder;->deprecatedTlsV1:Z

    return-object p0
.end method

.method public isTlsV1Enabled(Z)Lorg/conscrypt/Conscrypt$ProviderBuilder;
    .locals 0

    iput-boolean p1, p0, Lorg/conscrypt/Conscrypt$ProviderBuilder;->enabledTlsV1:Z

    return-object p0
.end method

.method public provideTrustManager()Lorg/conscrypt/Conscrypt$ProviderBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/conscrypt/Conscrypt$ProviderBuilder;->provideTrustManager(Z)Lorg/conscrypt/Conscrypt$ProviderBuilder;

    move-result-object p0

    return-object p0
.end method

.method public provideTrustManager(Z)Lorg/conscrypt/Conscrypt$ProviderBuilder;
    .locals 0

    .line 6
    iput-boolean p1, p0, Lorg/conscrypt/Conscrypt$ProviderBuilder;->provideTrustManager:Z

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lorg/conscrypt/Conscrypt$ProviderBuilder;
    .locals 0

    iput-object p1, p0, Lorg/conscrypt/Conscrypt$ProviderBuilder;->name:Ljava/lang/String;

    return-object p0
.end method
