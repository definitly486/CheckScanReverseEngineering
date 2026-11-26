.class public Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final FRESH_INSTALL_PREFERENCES:Ljava/lang/String; = "fresh_install"

.field static final MAX_FETCH_COUNT:I = 0x5

.field static final TEST_DEVICE_PREFERENCES:Ljava/lang/String; = "test_device"


# instance fields
.field private fetchCount:I

.field private isFreshInstall:Z

.field private isTestDevice:Z

.field private final sharedPreferencesUtils:Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;


# direct methods
.method public constructor <init>(Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->fetchCount:I

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->sharedPreferencesUtils:Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->readFreshInstallStatusFromPreferences()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->isFreshInstall:Z

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->readTestDeviceStatusFromPreferences()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->isTestDevice:Z

    return-void
.end method

.method private readFreshInstallStatusFromPreferences()Z
    .locals 2

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->sharedPreferencesUtils:Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;

    const-string v0, "fresh_install"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;->getAndSetBooleanPreference(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private readTestDeviceStatusFromPreferences()Z
    .locals 2

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->sharedPreferencesUtils:Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;

    const-string v0, "test_device"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;->getAndSetBooleanPreference(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private setFreshInstallStatus(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->isFreshInstall:Z

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->sharedPreferencesUtils:Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;

    const-string v0, "fresh_install"

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;->setBooleanPreference(Ljava/lang/String;Z)V

    return-void
.end method

.method private setTestDeviceStatus(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->isTestDevice:Z

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->sharedPreferencesUtils:Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;

    const-string v0, "test_device"

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;->setBooleanPreference(Ljava/lang/String;Z)V

    return-void
.end method

.method private updateFreshInstallStatus()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->isFreshInstall:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->fetchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->fetchCount:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->setFreshInstallStatus(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public isAppInstallFresh()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->isFreshInstall:Z

    return p0
.end method

.method public isDeviceInTestMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->isTestDevice:Z

    return p0
.end method

.method public processCampaignFetch(Lf73;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->isTestDevice:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->updateFreshInstallStatus()V

    invoke-virtual {p1}, Lf73;->d()Lcom/google/protobuf/q$j;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm21;

    invoke-virtual {v0}, Lm21;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/TestDeviceHelper;->setTestDeviceStatus(Z)V

    const-string p0, "Setting this device as a test device"

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logi(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
