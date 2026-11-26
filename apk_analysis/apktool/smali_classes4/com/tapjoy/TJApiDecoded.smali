.class public final Lcom/tapjoy/TJApiDecoded;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/tapjoy/TJApiDecoded;

.field public static a:Landroid/content/SharedPreferences;

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tapjoy/TJApiDecoded;

    invoke-direct {v0}, Lcom/tapjoy/TJApiDecoded;-><init>()V

    sput-object v0, Lcom/tapjoy/TJApiDecoded;->INSTANCE:Lcom/tapjoy/TJApiDecoded;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decode(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object p1, Lcom/tapjoy/TJApiDecoded;->b:Ljava/lang/String;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tapjoy/TapjoyConnectCore;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "tjcPrefrences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sput-object p0, Lcom/tapjoy/TJApiDecoded;->a:Landroid/content/SharedPreferences;

    :try_start_0
    new-instance p0, Lcom/tapjoy/internal/e;

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/e;-><init>(Ljava/lang/String;)V

    iget p1, p0, Lcom/tapjoy/internal/e;->c:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/tapjoy/internal/e;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_2

    sget-object p1, Lcom/tapjoy/TJApiDecoded;->a:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/e;->d:Ljava/lang/String;

    const-string v1, "pref_app_id"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/tapjoy/internal/e;->e:Ljava/lang/String;

    const-string v0, "pref_secret"

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    const-string p0, "The given API key is corrupted."

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string p0, "The given API key was not for Android."

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/tapjoy/TapjoyIntegrationException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getAppID()Ljava/lang/String;
    .locals 2

    sget-object p0, Lcom/tapjoy/TJApiDecoded;->a:Landroid/content/SharedPreferences;

    const-string v0, ""

    if-eqz p0, :cond_1

    const-string v1, "pref_app_id"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final getSdkKey()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/tapjoy/TJApiDecoded;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getSecretKey()Ljava/lang/String;
    .locals 2

    sget-object p0, Lcom/tapjoy/TJApiDecoded;->a:Landroid/content/SharedPreferences;

    const-string v0, ""

    if-eqz p0, :cond_1

    const-string v1, "pref_secret"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method
