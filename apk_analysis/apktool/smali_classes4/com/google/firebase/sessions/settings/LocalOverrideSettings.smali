.class public final Lcom/google/firebase/sessions/settings/LocalOverrideSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/sessions/settings/SettingsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/settings/LocalOverrideSettings$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/google/firebase/sessions/settings/LocalOverrideSettings$Companion;

.field public static final SAMPLING_RATE:Ljava/lang/String; = "firebase_sessions_sampling_rate"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SESSIONS_ENABLED:Ljava/lang/String; = "firebase_sessions_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SESSION_RESTART_TIMEOUT:Ljava/lang/String; = "firebase_sessions_sessions_restart_timeout"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final metadata:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/sessions/settings/LocalOverrideSettings$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/settings/LocalOverrideSettings$Companion;-><init>(Ljh2;)V

    sput-object v0, Lcom/google/firebase/sessions/settings/LocalOverrideSettings;->Companion:Lcom/google/firebase/sessions/settings/LocalOverrideSettings$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez p1, :cond_0

    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_0
    iput-object p1, p0, Lcom/google/firebase/sessions/settings/LocalOverrideSettings;->metadata:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getSamplingRate()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/sessions/settings/LocalOverrideSettings;->metadata:Landroid/os/Bundle;

    const-string v1, "firebase_sessions_sampling_rate"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/firebase/sessions/settings/LocalOverrideSettings;->metadata:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSessionEnabled()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/sessions/settings/LocalOverrideSettings;->metadata:Landroid/os/Bundle;

    const-string v1, "firebase_sessions_enabled"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/firebase/sessions/settings/LocalOverrideSettings;->metadata:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSessionRestartTimeout-FghU774()Lwt2;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/sessions/settings/LocalOverrideSettings;->metadata:Landroid/os/Bundle;

    const-string v1, "firebase_sessions_sessions_restart_timeout"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/firebase/sessions/settings/LocalOverrideSettings;->metadata:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    sget-object v0, Lau2;->SECONDS:Lau2;

    invoke-static {p0, v0}, Lyt2;->e(ILau2;)J

    move-result-wide v0

    new-instance p0, Lwt2;

    invoke-direct {p0, v0, v1}, Lwt2;-><init>(J)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isSettingsStale()Z
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/sessions/settings/SettingsProvider$DefaultImpls;->isSettingsStale(Lcom/google/firebase/sessions/settings/SettingsProvider;)Z

    move-result p0

    return p0
.end method

.method public updateSettings(Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/firebase/sessions/settings/SettingsProvider$DefaultImpls;->updateSettings(Lcom/google/firebase/sessions/settings/SettingsProvider;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
