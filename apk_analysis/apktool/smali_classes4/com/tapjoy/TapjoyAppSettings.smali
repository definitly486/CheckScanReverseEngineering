.class public final Lcom/tapjoy/TapjoyAppSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/tapjoy/TapjoyAppSettings;

.field public static a:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tapjoy/TapjoyAppSettings;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyAppSettings;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyAppSettings;->INSTANCE:Lcom/tapjoy/TapjoyAppSettings;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getConnectResult(Ljava/lang/String;J)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/tapjoy/TapjoyAppSettings;->a:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "connectResult"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    sget-object v1, Lcom/tapjoy/TapjoyAppSettings;->a:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_2

    const-string v2, "connectParamsHash"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/tapjoy/TapjoyAppSettings;->a:Landroid/content/SharedPreferences;

    const-wide/16 v1, -0x1

    if-eqz p1, :cond_3

    const-string v3, "connectResultExpires"

    invoke-interface {p1, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    :cond_3
    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_4

    cmp-long p1, v1, p2

    if-ltz p1, :cond_5

    :cond_4
    return-object p0

    :cond_5
    :goto_2
    return-object v0
.end method

.method public final getLoggingLevel()Ljava/lang/String;
    .locals 2

    sget-object p0, Lcom/tapjoy/TapjoyAppSettings;->a:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "tapjoyLogLevel"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public final initSettings(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "tjcPrefrences"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/tapjoy/TapjoyAppSettings;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method public final removeConnectResult()V
    .locals 2

    sget-object p0, Lcom/tapjoy/TapjoyAppSettings;->a:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    const-string v1, "connectParamsHash"

    if-eqz p0, :cond_0

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    sget-object p0, Lcom/tapjoy/TapjoyAppSettings;->a:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "connectResult"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "connectResultExpires"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    const-string p0, "Removed connect result"

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final saveConnectResultAndParams(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    sget-object p0, Lcom/tapjoy/TapjoyAppSettings;->a:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    const-string v0, "connectResult"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_3
    if-eqz p0, :cond_4

    const-string v0, "connectParamsHash"

    invoke-interface {p0, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_4
    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    const-string v0, "connectResultExpires"

    if-ltz p2, :cond_5

    if-eqz p0, :cond_6

    invoke-interface {p0, v0, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_5
    if-eqz p0, :cond_6

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_6
    :goto_1
    const-string p2, "Stored connect result: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    if-eqz p0, :cond_7

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_7
    :goto_2
    return-void
.end method

.method public final saveLoggingLevel(Ljava/lang/String;)V
    .locals 1

    const-string p0, "tapjoyLogLevel"

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/tapjoy/TapjoyAppSettings;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    const-string p0, "internal"

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/tapjoy/TJLogLevel;->DEBUG:Lcom/tapjoy/TJLogLevel;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/tapjoy/TapjoyLog;->setLoggingLevel(Lcom/tapjoy/TJLogLevel;Z)V

    :cond_2
    const-string p0, "Server-side logging enabled"

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    sget-object p1, Lcom/tapjoy/TapjoyAppSettings;->a:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    return-void
.end method
