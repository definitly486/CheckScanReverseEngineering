.class public final Lcom/tapjoy/TapjoyLog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TapjoyLog$WhenMappings;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/tapjoy/TapjoyLog;

.field public static a:Z

.field public static b:Lcom/tapjoy/TJLogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tapjoy/TapjoyLog;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyLog;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyLog;->INSTANCE:Lcom/tapjoy/TapjoyLog;

    sget-object v0, Lcom/tapjoy/TJLogLevel;->ERROR:Lcom/tapjoy/TJLogLevel;

    sput-object v0, Lcom/tapjoy/TapjoyLog;->b:Lcom/tapjoy/TJLogLevel;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()V
    .locals 3

    .line 121
    :try_start_0
    const-string v0, "Enabling WebView debugging"

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 122
    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to enable WebView debugging: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/tapjoy/TJLogLevel;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p1

    sget-object v1, Lcom/tapjoy/TapjoyLog;->b:Lcom/tapjoy/TJLogLevel;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-lt v1, v2, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "TapjoyLog"

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/16 v9, 0x1000

    if-le v1, v9, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/2addr v1, v9

    if-ltz v1, :cond_a

    const/4 v10, 0x0

    :goto_0
    mul-int/lit16 v11, v10, 0x1000

    add-int/lit8 v12, v10, 0x1

    mul-int/lit16 v13, v12, 0x1000

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v14

    if-le v13, v14, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    :cond_0
    sget-object v14, Lcom/tapjoy/TapjoyLog$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aget v14, v14, v15

    if-eq v14, v6, :cond_4

    if-eq v14, v5, :cond_3

    if-eq v14, v8, :cond_2

    if-ne v14, v7, :cond_1

    move v14, v8

    goto :goto_1

    :cond_1
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_2
    move v14, v7

    goto :goto_1

    :cond_3
    move v14, v4

    goto :goto_1

    :cond_4
    move v14, v3

    :goto_1
    invoke-virtual {v0, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v2, v11}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    if-eq v10, v1, :cond_a

    move v10, v12

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/tapjoy/TapjoyLog$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v1, v1, v9

    if-eq v1, v6, :cond_9

    if-eq v1, v5, :cond_8

    if-eq v1, v8, :cond_7

    if-ne v1, v7, :cond_6

    move v3, v8

    goto :goto_2

    :cond_6
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_7
    move v3, v7

    goto :goto_2

    :cond_8
    move v3, v4

    :cond_9
    :goto_2
    invoke-static {v3, v2, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method

.method public static final d(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/tapjoy/TapjoyLog;->INSTANCE:Lcom/tapjoy/TapjoyLog;

    sget-object v1, Lcom/tapjoy/TJLogLevel;->DEBUG:Lcom/tapjoy/TJLogLevel;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/tapjoy/TapjoyLog;->a(Lcom/tapjoy/TJLogLevel;Ljava/lang/String;)V

    return-void
.end method

.method public static final e(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/tapjoy/TapjoyLog;->INSTANCE:Lcom/tapjoy/TapjoyLog;

    sget-object v1, Lcom/tapjoy/TJLogLevel;->ERROR:Lcom/tapjoy/TJLogLevel;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/tapjoy/TapjoyLog;->a(Lcom/tapjoy/TJLogLevel;Ljava/lang/String;)V

    return-void
.end method

.method public static final getLoggingLevel()Lcom/tapjoy/TJLogLevel;
    .locals 1

    sget-object v0, Lcom/tapjoy/TapjoyLog;->b:Lcom/tapjoy/TJLogLevel;

    return-object v0
.end method

.method public static final i(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/tapjoy/TapjoyLog;->INSTANCE:Lcom/tapjoy/TapjoyLog;

    sget-object v1, Lcom/tapjoy/TJLogLevel;->INFO:Lcom/tapjoy/TJLogLevel;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/tapjoy/TapjoyLog;->a(Lcom/tapjoy/TJLogLevel;Ljava/lang/String;)V

    return-void
.end method

.method public static final setDebugEnabled(Z)V
    .locals 0

    sput-boolean p0, Lcom/tapjoy/TapjoyLog;->a:Z

    sget-object p0, Lcom/tapjoy/TapjoyAppSettings;->INSTANCE:Lcom/tapjoy/TapjoyAppSettings;

    invoke-virtual {p0}, Lcom/tapjoy/TapjoyAppSettings;->getLoggingLevel()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p0, "setLoggingLevel -- log setting already persisted"

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-boolean p0, Lcom/tapjoy/TapjoyLog;->a:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/tapjoy/TJLogLevel;->DEBUG:Lcom/tapjoy/TJLogLevel;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/tapjoy/TJLogLevel;->INFO:Lcom/tapjoy/TJLogLevel;

    :goto_0
    sput-object p0, Lcom/tapjoy/TapjoyLog;->b:Lcom/tapjoy/TJLogLevel;

    return-void
.end method

.method public static final setLoggingLevel(Lcom/tapjoy/TJLogLevel;Z)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    sget-object p1, Lcom/tapjoy/TapjoyAppSettings;->INSTANCE:Lcom/tapjoy/TapjoyAppSettings;

    invoke-virtual {p1}, Lcom/tapjoy/TapjoyAppSettings;->getLoggingLevel()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p0, "setLoggingLevel -- log setting already persisted"

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    sput-object p0, Lcom/tapjoy/TapjoyLog;->b:Lcom/tapjoy/TJLogLevel;

    sget-object p1, Lcom/tapjoy/TJLogLevel;->DEBUG:Lcom/tapjoy/TJLogLevel;

    if-ne p0, p1, :cond_1

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Lmk8;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    sget-object p0, Lcom/tapjoy/TapjoyLog;->b:Lcom/tapjoy/TJLogLevel;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "logThreshold="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static final w(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/tapjoy/TapjoyLog;->INSTANCE:Lcom/tapjoy/TapjoyLog;

    sget-object v1, Lcom/tapjoy/TJLogLevel;->WARNING:Lcom/tapjoy/TJLogLevel;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/tapjoy/TapjoyLog;->a(Lcom/tapjoy/TJLogLevel;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final isLoggingEnabled()Z
    .locals 0

    sget-boolean p0, Lcom/tapjoy/TapjoyLog;->a:Z

    return p0
.end method

.method public final setLoggingEnabled(Z)V
    .locals 0

    sput-boolean p1, Lcom/tapjoy/TapjoyLog;->a:Z

    return-void
.end method
