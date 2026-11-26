.class public final Lcom/my/tracker/MyTrackerConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/tracker/MyTrackerConfig$InstalledPackagesProvider;,
        Lcom/my/tracker/MyTrackerConfig$LocationTrackingMode;,
        Lcom/my/tracker/MyTrackerConfig$OkHttpClientProvider;
    }
.end annotation


# instance fields
.field private final a:Lcom/my/tracker/obfuscated/c3;


# direct methods
.method private constructor <init>(Lcom/my/tracker/obfuscated/c3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/tracker/MyTrackerConfig;->a:Lcom/my/tracker/obfuscated/c3;

    return-void
.end method

.method public static a(Lcom/my/tracker/obfuscated/c3;)Lcom/my/tracker/MyTrackerConfig;
    .locals 1

    new-instance v0, Lcom/my/tracker/MyTrackerConfig;

    invoke-direct {v0, p0}, Lcom/my/tracker/MyTrackerConfig;-><init>(Lcom/my/tracker/obfuscated/c3;)V

    return-object v0
.end method


# virtual methods
.method public getAntiFraudConfig()Lcom/my/tracker/config/AntiFraudConfig;
    .locals 0

    iget-object p0, p0, Lcom/my/tracker/MyTrackerConfig;->a:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/c3;->a()Lcom/my/tracker/config/AntiFraudConfig;

    move-result-object p0

    return-object p0
.end method

.method public getApkPreinstallParams()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/my/tracker/MyTrackerConfig;->a:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/c3;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBufferingPeriod()I
    .locals 0

    iget-object p0, p0, Lcom/my/tracker/MyTrackerConfig;->a:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/c3;->e()I

    move-result p0

    return p0
.end method

.method public getForcingPeriod()I
    .locals 0

    iget-object p0, p0, Lcom/my/tracker/MyTrackerConfig;->a:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/c3;->f()I

    move-result p0

    return p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/my/tracker/MyTrackerConfig;->a:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/c3;->g()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLaunchTimeout()I
    .locals 0

    iget-object p0, p0, Lcom/my/tracker/MyTrackerConfig;->a:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/c3;->i()I

    move-result p0

    return p0
.end method

.method public getLocationTrackingMode()I
    .locals 0

    iget-object p0, p0, Lcom/my/tracker/MyTrackerConfig;->a:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/c3;->j()I

    move-result p0

    return p0
.end method

.method public getVendorAppPackage()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/my/tracker/MyTrackerConfig;->a:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/c3;->r()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAutotrackingPurchaseEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/my/tracker/MyTrackerConfig;->a:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/c3;->s()Z

    move-result p0

    return p0
.end method

.method public isKidMode()Z
    .locals 0

    iget-object p0, p0, Lcom/my/tracker/MyTrackerConfig;->a:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/c3;->t()Z

    move-result p0

    return p0
.end method

.method public isTrackingEnvironmentEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/my/tracker/MyTrackerConfig;->a:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/c3;->u()Z

    move-result p0

    return p0
.end method

.method public isTrackingLaunchEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/my/tracker/MyTrackerConfig;->a:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/c3;->v()Z

    move-result p0

    return p0
.end method

.method public isTrackingLocationEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/my/tracker/MyTrackerConfig;->a:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/c3;->j()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public isTrackingPreinstallEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/my/tracker/MyTrackerConfig;->a:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/c3;->w()Z

    move-result p0

    return p0
.end method

.method public isTrackingPreinstallThirdPartyEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/my/tracker/MyTrackerConfig;->a:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {p0}, Lcom/my/tracker/obfuscated/c3;->x()Z

    move-result p0

    return p0
.end method

.method public setAntiFraudConfig(Lcom/my/tracker/config/AntiFraudConfig;)V
    .locals 0

    iget-object p0, p0, Lcom/my/tracker/MyTrackerConfig;->a:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {p0, p1}, Lcom/my/tracker/obfuscated/c3;->a(Lcom/my/tracker/config/AntiFraudConfig;)V

    return-void
.end method

.method public setApkPreinstallParams(Ljava/lang/String;)Lcom/my/tracker/MyTrackerConfig;
    .locals 1

    iget-object v0, p0, Lcom/my/tracker/MyTrackerConfig;->a:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {v0, p1}, Lcom/my/tracker/obfuscated/c3;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public setAutotrackingPurchaseEnabled(Z)Lcom/my/tracker/MyTrackerConfig;
    .locals 1

    iget-object v0, p0, Lcom/my/tracker/MyTrackerConfig;->a:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {v0, p1}, Lcom/my/tracker/obfuscated/c3;->b(Z)V

    return-object p0
.end method

.method public setBufferingPeriod(I)Lcom/my/tracker/MyTrackerConfig;
    .locals 1

    iget-object v0, p0, Lcom/my/tracker/MyTrackerConfig;->a:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {v0, p1}, Lcom/my/tracker/obfuscated/c3;->a(I)V

    return-object p0
.end method

.method public setDefaultVendorAppPackage()Lcom/my/tracker/MyTrackerConfig;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/my/tracker/MyTrackerConfig;->a:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {v0}, Lcom/my/tracker/obfuscated/c3;->A()V

    return-object p0
.end method

.method public setForcingPeriod(I)Lcom/my/tracker/MyTrackerConfig;
    .locals 1

    iget-object v0, p0, Lcom/my/tracker/MyTrackerConfig;->a:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {v0, p1}, Lcom/my/tracker/obfuscated/c3;->b(I)V

    return-object p0
.end method

.method public setInstalledPackagesProvider(Lcom/my/tracker/MyTrackerConfig$InstalledPackagesProvider;)Lcom/my/tracker/MyTrackerConfig;
    .locals 1

    iget-object v0, p0, Lcom/my/tracker/MyTrackerConfig;->a:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {v0, p1}, Lcom/my/tracker/obfuscated/c3;->a(Lcom/my/tracker/MyTrackerConfig$InstalledPackagesProvider;)V

    return-object p0
.end method

.method public setKidMode(Z)Lcom/my/tracker/MyTrackerConfig;
    .locals 1

    iget-object v0, p0, Lcom/my/tracker/MyTrackerConfig;->a:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {v0, p1}, Lcom/my/tracker/obfuscated/c3;->c(Z)V

    return-object p0
.end method

.method public setLaunchTimeout(I)Lcom/my/tracker/MyTrackerConfig;
    .locals 1

    iget-object v0, p0, Lcom/my/tracker/MyTrackerConfig;->a:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {v0, p1}, Lcom/my/tracker/obfuscated/c3;->c(I)V

    return-object p0
.end method

.method public setLocationTrackingMode(I)Lcom/my/tracker/MyTrackerConfig;
    .locals 1

    iget-object v0, p0, Lcom/my/tracker/MyTrackerConfig;->a:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {v0, p1}, Lcom/my/tracker/obfuscated/c3;->d(I)V

    return-object p0
.end method

.method public setOkHttpClientProvider(Lcom/my/tracker/MyTrackerConfig$OkHttpClientProvider;)Lcom/my/tracker/MyTrackerConfig;
    .locals 1

    iget-object v0, p0, Lcom/my/tracker/MyTrackerConfig;->a:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {v0, p1}, Lcom/my/tracker/obfuscated/c3;->a(Lcom/my/tracker/MyTrackerConfig$OkHttpClientProvider;)V

    return-object p0
.end method

.method public setProxyHost(Ljava/lang/String;)Lcom/my/tracker/MyTrackerConfig;
    .locals 1

    iget-object v0, p0, Lcom/my/tracker/MyTrackerConfig;->a:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {v0, p1}, Lcom/my/tracker/obfuscated/c3;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public setTrackingEnvironmentEnabled(Z)Lcom/my/tracker/MyTrackerConfig;
    .locals 1

    iget-object v0, p0, Lcom/my/tracker/MyTrackerConfig;->a:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {v0, p1}, Lcom/my/tracker/obfuscated/c3;->d(Z)V

    return-object p0
.end method

.method public setTrackingLaunchEnabled(Z)Lcom/my/tracker/MyTrackerConfig;
    .locals 1

    iget-object v0, p0, Lcom/my/tracker/MyTrackerConfig;->a:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {v0, p1}, Lcom/my/tracker/obfuscated/c3;->e(Z)V

    return-object p0
.end method

.method public setTrackingLocationEnabled(Z)Lcom/my/tracker/MyTrackerConfig;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/my/tracker/MyTrackerConfig;->a:Lcom/my/tracker/obfuscated/c3;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/my/tracker/obfuscated/c3;->d(I)V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/my/tracker/obfuscated/c3;->d(I)V

    return-object p0
.end method

.method public setTrackingPreinstallEnabled(Z)Lcom/my/tracker/MyTrackerConfig;
    .locals 1

    iget-object v0, p0, Lcom/my/tracker/MyTrackerConfig;->a:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {v0, p1}, Lcom/my/tracker/obfuscated/c3;->f(Z)V

    return-object p0
.end method

.method public setTrackingPreinstallThirdPartyEnabled(Z)Lcom/my/tracker/MyTrackerConfig;
    .locals 1

    iget-object v0, p0, Lcom/my/tracker/MyTrackerConfig;->a:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {v0, p1}, Lcom/my/tracker/obfuscated/c3;->g(Z)V

    return-object p0
.end method

.method public setVendorAppPackage(Ljava/lang/String;)Lcom/my/tracker/MyTrackerConfig;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/my/tracker/MyTrackerConfig;->a:Lcom/my/tracker/obfuscated/c3;

    invoke-virtual {v0, p1}, Lcom/my/tracker/obfuscated/c3;->e(Ljava/lang/String;)V

    return-object p0
.end method
