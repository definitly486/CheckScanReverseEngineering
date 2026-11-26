.class public final Lcom/tapjoy/TJSession;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJSession$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/tapjoy/TJSession$Companion;

.field public static volatile k:Z


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Long;

.field public f:Ljava/lang/Long;

.field public g:J

.field public h:Ljava/lang/Long;

.field public i:Z

.field public final j:Lcom/tapjoy/TJKeyValueStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tapjoy/TJSession$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tapjoy/TJSession$Companion;-><init>(Ljh2;)V

    sput-object v0, Lcom/tapjoy/TJSession;->Companion:Lcom/tapjoy/TJSession$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v2, ""

    iput-object v2, v0, Lcom/tapjoy/TJSession;->a:Ljava/lang/String;

    new-instance v2, Lcom/tapjoy/TJKeyValueStorage;

    const-string v3, "tjcPrefrences"

    invoke-direct {v2, v1, v3}, Lcom/tapjoy/TJKeyValueStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/tapjoy/TJSession;->j:Lcom/tapjoy/TJKeyValueStorage;

    new-instance v3, Lcom/tapjoy/TJPreferencesMigration;

    const-string v4, "fiverocks"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lb36;

    const-string v4, "fql"

    const-string v7, "pref_daily_frequency_last"

    invoke-direct {v6, v4, v7}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Lb36;

    const-string v4, "fq"

    const-string v12, "pref_daily_frequency"

    invoke-direct {v7, v4, v12}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Lb36;

    const-string v4, "ss"

    const-string v13, "pref_session_total_count"

    invoke-direct {v8, v4, v13}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, Lb36;

    const-string v4, "std"

    const-string v14, "pref_session_total_duration"

    invoke-direct {v9, v4, v14}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v10, Lb36;

    const-string v4, "slt"

    const-string v15, "pref_session_last_time"

    invoke-direct {v10, v4, v15}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v11, Lb36;

    const-string v4, "sld"

    const-string v5, "pref_session_last_duration"

    invoke-direct {v11, v4, v5}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v6 .. v11}, [Lb36;

    move-result-object v4

    invoke-static {v4}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object v4

    sget-object v6, Lkx2;->b:Lkx2;

    invoke-direct {v3, v2, v1, v4, v6}, Lcom/tapjoy/TJPreferencesMigration;-><init>(Lcom/tapjoy/TJKeyValueStorage;Landroid/content/SharedPreferences;Ljava/util/Map;Ljava/util/List;)V

    invoke-virtual {v3}, Lcom/tapjoy/TJPreferencesMigration;->migrateAllKeysIfExists()V

    const/4 v1, 0x0

    invoke-virtual {v2, v12, v1}, Lcom/tapjoy/TJKeyValueStorage;->getInt(Ljava/lang/String;I)I

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/tapjoy/TJSession;->b:Ljava/lang/Integer;

    const v4, 0x3fffffff    # 1.9999999f

    and-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/tapjoy/TJSession;->c:Ljava/lang/Integer;

    invoke-virtual {v2, v13, v1}, Lcom/tapjoy/TJKeyValueStorage;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/TJSession;->d:Ljava/lang/Integer;

    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v2, v14, v3, v4}, Lcom/tapjoy/TJKeyValueStorage;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v1, v6, v3

    if-lez v1, :cond_1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/TJSession;->e:Ljava/lang/Long;

    :cond_1
    invoke-virtual {v2, v15, v3, v4}, Lcom/tapjoy/TJKeyValueStorage;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v1, v6, v3

    if-lez v1, :cond_2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/TJSession;->f:Ljava/lang/Long;

    :cond_2
    invoke-virtual {v2, v5, v3, v4}, Lcom/tapjoy/TJKeyValueStorage;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v3, v1, v3

    if-lez v3, :cond_3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/TJSession;->h:Ljava/lang/Long;

    :cond_3
    return-void
.end method

.method public static synthetic updateDailyFrequency$default(Lcom/tapjoy/TJSession;Ljava/util/Calendar;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/tapjoy/TJSession;->updateDailyFrequency(Ljava/util/Calendar;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    const-string v0, "generating sessionID..."

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to generate session id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;)V

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/tapjoy/TJSession;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final endSession()V
    .locals 7

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TJSession;->a:Ljava/lang/String;

    sget-boolean v0, Lcom/tapjoy/TJSession;->k:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tapjoy/TJSession;->k:Z

    const-string v0, "The session ended"

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tapjoy/TJSession;->g:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/tapjoy/TJSession;->j:Lcom/tapjoy/TJKeyValueStorage;

    const-wide/16 v3, 0x0

    const-string v5, "pref_session_total_duration"

    if-eqz v2, :cond_0

    invoke-virtual {v2, v5, v3, v4}, Lcom/tapjoy/TJKeyValueStorage;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    :cond_0
    add-long/2addr v3, v0

    iget-object v2, p0, Lcom/tapjoy/TJSession;->j:Lcom/tapjoy/TJKeyValueStorage;

    if-eqz v2, :cond_1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/TJSession;->e:Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/tapjoy/TJSession;->j:Lcom/tapjoy/TJKeyValueStorage;

    if-eqz v4, :cond_2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "pref_session_last_time"

    invoke-virtual {v4, v6, v5}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v4, p0, Lcom/tapjoy/TJSession;->j:Lcom/tapjoy/TJKeyValueStorage;

    if-eqz v4, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "pref_session_last_duration"

    invoke-virtual {v4, v6, v5}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/TJSession;->f:Ljava/lang/Long;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJSession;->h:Ljava/lang/Long;

    sget-object p0, Lcom/tapjoy/internal/s;->c:Lcom/tapjoy/internal/r;

    invoke-virtual {p0}, Lcom/tapjoy/internal/r;->notifyObservers()V

    :cond_4
    return-void
.end method

.method public final getDuration()Ljava/lang/Long;
    .locals 4

    iget-wide v0, p0, Lcom/tapjoy/TJSession;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tapjoy/TJSession;->g:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/TJSession;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/tapjoy/TJSession;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public final getSessionLastDuration()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJSession;->h:Ljava/lang/Long;

    return-object p0
.end method

.method public final getSessionLastLength()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJSession;->h:Ljava/lang/Long;

    return-object p0
.end method

.method public final getSessionLastTime()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJSession;->f:Ljava/lang/Long;

    return-object p0
.end method

.method public final getSessionMonthlyFrequency()I
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJSession;->c:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getSessionTotalCount()I
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJSession;->d:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getSessionTotalLength()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJSession;->e:Ljava/lang/Long;

    return-object p0
.end method

.method public final getSessionWeeklyFrequency()I
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJSession;->b:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final initSession()V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJSession;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tapjoy/TJSession;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJSession;->a:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/TJSession;->startSession()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/tapjoy/internal/f;->a(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public final isSemiAutoSessionTrackingStarted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tapjoy/TJSession;->i:Z

    return p0
.end method

.method public final onActivityStart(Landroid/app/Activity;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "onActivityStart: The given activity was null"

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/i;->a(Landroid/content/Context;)V

    sget v0, Lcom/tapjoy/internal/i;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tapjoy/internal/i;->b:I

    sget-object v0, Lcom/tapjoy/internal/i;->c:Lcom/tapjoy/internal/v2;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/tapjoy/internal/v2;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/tapjoy/TJSession;->startSession()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/tapjoy/internal/f;->a(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public final onActivityStop(Landroid/app/Activity;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "onActivityStop: The given activity was null"

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    sget p1, Lcom/tapjoy/internal/i;->b:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Lcom/tapjoy/internal/i;->b:I

    sget-object v0, Lcom/tapjoy/internal/i;->c:Lcom/tapjoy/internal/v2;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tapjoy/internal/v2;->a:Ljava/lang/ref/WeakReference;

    if-gez p1, :cond_1

    const/4 p1, 0x0

    sput p1, Lcom/tapjoy/internal/i;->b:I

    :cond_1
    sget p1, Lcom/tapjoy/internal/i;->b:I

    if-lez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/tapjoy/TJSession;->endSession()V

    return-void
.end method

.method public final setAutomaticSessionTracking(Landroid/content/Context;Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_0

    const-string p0, "TJC_OPTION_DISABLE_AUTOMATIC_SESSION_TRACKING"

    invoke-virtual {p2, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "true"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Automatic session tracking is disabled."

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/tapjoy/internal/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method public final setSemiAutoSessionTrackingStarted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tapjoy/TJSession;->i:Z

    return-void
.end method

.method public final startSession()Z
    .locals 5

    sget-boolean v0, Lcom/tapjoy/TJSession;->k:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tapjoy/TJSession;->k:Z

    const-string v2, "New session started"

    invoke-static {v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2}, Lcom/tapjoy/TJSession;->updateDailyFrequency$default(Lcom/tapjoy/TJSession;Ljava/util/Calendar;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/tapjoy/TJSession;->j:Lcom/tapjoy/TJKeyValueStorage;

    const-string v3, "pref_session_total_count"

    if-eqz v2, :cond_0

    invoke-virtual {v2, v3, v1}, Lcom/tapjoy/TJKeyValueStorage;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/tapjoy/TJSession;->j:Lcom/tapjoy/TJKeyValueStorage;

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/TJSession;->d:Ljava/lang/Integer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tapjoy/TJSession;->g:J

    return v0

    :cond_2
    return v1
.end method

.method public final updateDailyFrequency(Ljava/util/Calendar;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x2710

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x64

    add-int/2addr v6, v4

    add-int/lit8 v6, v6, 0x64

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v6

    iget-object v6, v0, Lcom/tapjoy/TJSession;->j:Lcom/tapjoy/TJKeyValueStorage;

    const-string v8, "pref_daily_frequency_last"

    const/4 v9, 0x0

    if-eqz v6, :cond_0

    invoke-virtual {v6, v8, v9}, Lcom/tapjoy/TJKeyValueStorage;->getInt(Ljava/lang/String;I)I

    move-result v6

    goto :goto_0

    :cond_0
    move v6, v9

    :goto_0
    if-eq v6, v7, :cond_a

    const-string v10, "pref_daily_frequency"

    if-nez v6, :cond_1

    iput-object v3, v0, Lcom/tapjoy/TJSession;->b:Ljava/lang/Integer;

    iput-object v3, v0, Lcom/tapjoy/TJSession;->c:Ljava/lang/Integer;

    goto/16 :goto_6

    :cond_1
    iget-object v3, v0, Lcom/tapjoy/TJSession;->j:Lcom/tapjoy/TJKeyValueStorage;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v10, v9}, Lcom/tapjoy/TJKeyValueStorage;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v9

    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    div-int/lit16 v12, v6, 0x2710

    div-int/lit8 v13, v6, 0x64

    rem-int/lit8 v13, v13, 0x64

    sub-int/2addr v13, v2

    rem-int/lit8 v6, v6, 0x64

    invoke-virtual {v11, v12, v13, v6}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v11, v2}, Ljava/util/Calendar;->get(I)I

    move-result v12

    sub-int/2addr v6, v12

    invoke-static {v6}, Ljava/lang/Integer;->signum(I)I

    move-result v6

    const/4 v12, -0x1

    if-eq v6, v12, :cond_4

    if-eq v6, v2, :cond_3

    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v11, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr v1, v4

    goto :goto_4

    :cond_3
    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Calendar;

    invoke-virtual {v11, v2}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v11, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v11, v4}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v12, v13, v5, v11}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    goto :goto_2

    :cond_4
    invoke-virtual {v11}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v12, v13, v5, v1}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    :goto_2
    move v1, v9

    :goto_3
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    cmp-long v5, v15, v13

    if-gez v5, :cond_5

    invoke-virtual {v12, v4, v2}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    if-lez v6, :cond_6

    goto :goto_4

    :cond_6
    neg-int v1, v1

    :goto_4
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0x1e

    if-lt v4, v5, :cond_7

    goto :goto_5

    :cond_7
    if-ltz v1, :cond_8

    shl-int v9, v3, v1

    goto :goto_5

    :cond_8
    neg-int v1, v1

    shr-int v9, v3, v1

    :goto_5
    or-int/2addr v2, v9

    and-int/lit8 v1, v2, 0x7f

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    const v3, 0x3fffffff    # 1.9999999f

    and-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/TJSession;->b:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/TJSession;->c:Ljava/lang/Integer;

    :goto_6
    iget-object v1, v0, Lcom/tapjoy/TJSession;->j:Lcom/tapjoy/TJKeyValueStorage;

    if-eqz v1, :cond_9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v8, v3}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    iget-object v0, v0, Lcom/tapjoy/TJSession;->j:Lcom/tapjoy/TJKeyValueStorage;

    if-eqz v0, :cond_a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    return-void
.end method
