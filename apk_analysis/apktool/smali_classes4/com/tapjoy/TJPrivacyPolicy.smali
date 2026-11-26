.class public Lcom/tapjoy/TJPrivacyPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static h:Lcom/tapjoy/TJPrivacyPolicy;


# instance fields
.field public a:Lcom/tapjoy/TJStatus;

.field public b:Lcom/tapjoy/TJStatus;

.field public c:Lcom/tapjoy/TJStatus;

.field public d:Lcom/tapjoy/TJStatus;

.field public e:Ljava/lang/String;

.field public f:Landroid/content/Context;

.field public final g:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TJPrivacyPolicy;->a:Lcom/tapjoy/TJStatus;

    iput-object v0, p0, Lcom/tapjoy/TJPrivacyPolicy;->b:Lcom/tapjoy/TJStatus;

    iput-object v0, p0, Lcom/tapjoy/TJPrivacyPolicy;->c:Lcom/tapjoy/TJStatus;

    iput-object v0, p0, Lcom/tapjoy/TJPrivacyPolicy;->d:Lcom/tapjoy/TJStatus;

    iput-object v0, p0, Lcom/tapjoy/TJPrivacyPolicy;->e:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJPrivacyPolicy;->g:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic a()V
    .locals 3

    .line 561
    :try_start_0
    new-instance v0, Lcom/tapjoy/internal/t1;

    invoke-direct {v0}, Lcom/tapjoy/internal/t1;-><init>()V

    invoke-virtual {v0}, Lcom/tapjoy/internal/t1;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to send regulations request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/tapjoy/TJPrivacyPolicy;
    .locals 1

    sget-object v0, Lcom/tapjoy/TJPrivacyPolicy;->h:Lcom/tapjoy/TJPrivacyPolicy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tapjoy/TJPrivacyPolicy;

    invoke-direct {v0}, Lcom/tapjoy/TJPrivacyPolicy;-><init>()V

    sput-object v0, Lcom/tapjoy/TJPrivacyPolicy;->h:Lcom/tapjoy/TJPrivacyPolicy;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/TJPrivacyPolicy;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/tapjoy/TJPrivacyPolicy;->f:Landroid/content/Context;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_e

    :cond_0
    :goto_0
    invoke-static {}, Lcom/tapjoy/TJPrivacyPolicy;->getInstance()Lcom/tapjoy/TJPrivacyPolicy;

    move-result-object p1

    iget-object v0, p1, Lcom/tapjoy/TJPrivacyPolicy;->f:Landroid/content/Context;

    if-eqz v0, :cond_d

    new-instance v1, Lcom/tapjoy/TJKeyValueStorage;

    const-string v2, "tjcPrefrences"

    invoke-direct {v1, v0, v2}, Lcom/tapjoy/TJKeyValueStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/tapjoy/TJPrivacyPolicy;->a:Lcom/tapjoy/TJStatus;

    const/4 v2, 0x0

    if-nez v0, :cond_3

    const-string v0, "gdpr"

    invoke-virtual {v1, v0}, Lcom/tapjoy/TJKeyValueStorage;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "gdpr"

    invoke-virtual {v1, v0}, Lcom/tapjoy/TJKeyValueStorage;->getValueType(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-class v3, Ljava/lang/Boolean;

    if-ne v0, v3, :cond_2

    const-string v0, "gdpr"

    invoke-virtual {v1, v0, v2}, Lcom/tapjoy/TJKeyValueStorage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tapjoy/TJStatus;->TRUE:Lcom/tapjoy/TJStatus;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/tapjoy/TJStatus;->FALSE:Lcom/tapjoy/TJStatus;

    :goto_1
    iput-object v0, p1, Lcom/tapjoy/TJPrivacyPolicy;->a:Lcom/tapjoy/TJStatus;

    goto :goto_2

    :cond_2
    const-string v0, "gdpr"

    invoke-virtual {v1, v0}, Lcom/tapjoy/TJKeyValueStorage;->getValueType(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-class v3, Ljava/lang/Integer;

    if-ne v0, v3, :cond_3

    sget-object v0, Lcom/tapjoy/TJStatus;->UNKNOWN:Lcom/tapjoy/TJStatus;

    invoke-virtual {v0}, Lcom/tapjoy/TJStatus;->getValue()I

    move-result v0

    const-string v3, "gdpr"

    invoke-virtual {v1, v3, v0}, Lcom/tapjoy/TJKeyValueStorage;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/tapjoy/TJStatus;->valueOf(I)Lcom/tapjoy/TJStatus;

    move-result-object v0

    iput-object v0, p1, Lcom/tapjoy/TJPrivacyPolicy;->a:Lcom/tapjoy/TJStatus;

    :cond_3
    :goto_2
    iget-object v0, p1, Lcom/tapjoy/TJPrivacyPolicy;->b:Lcom/tapjoy/TJStatus;

    if-nez v0, :cond_6

    const-string v0, "cgdpr"

    invoke-virtual {v1, v0}, Lcom/tapjoy/TJKeyValueStorage;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "cgdpr"

    invoke-virtual {v1, v0}, Lcom/tapjoy/TJKeyValueStorage;->getValueType(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-class v3, Ljava/lang/String;

    if-ne v0, v3, :cond_5

    const-string v0, "cgdpr"

    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Lcom/tapjoy/TJKeyValueStorage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/tapjoy/TJStatus;->TRUE:Lcom/tapjoy/TJStatus;

    goto :goto_3

    :cond_4
    sget-object v0, Lcom/tapjoy/TJStatus;->FALSE:Lcom/tapjoy/TJStatus;

    :goto_3
    iput-object v0, p1, Lcom/tapjoy/TJPrivacyPolicy;->b:Lcom/tapjoy/TJStatus;

    goto :goto_4

    :cond_5
    const-string v0, "cgdpr"

    invoke-virtual {v1, v0}, Lcom/tapjoy/TJKeyValueStorage;->getValueType(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-class v3, Ljava/lang/Integer;

    if-ne v0, v3, :cond_6

    sget-object v0, Lcom/tapjoy/TJStatus;->UNKNOWN:Lcom/tapjoy/TJStatus;

    invoke-virtual {v0}, Lcom/tapjoy/TJStatus;->getValue()I

    move-result v0

    const-string v3, "cgdpr"

    invoke-virtual {v1, v3, v0}, Lcom/tapjoy/TJKeyValueStorage;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/tapjoy/TJStatus;->valueOf(I)Lcom/tapjoy/TJStatus;

    move-result-object v0

    iput-object v0, p1, Lcom/tapjoy/TJPrivacyPolicy;->b:Lcom/tapjoy/TJStatus;

    :cond_6
    :goto_4
    iget-object v0, p1, Lcom/tapjoy/TJPrivacyPolicy;->c:Lcom/tapjoy/TJStatus;

    if-nez v0, :cond_9

    const-string v0, "below_consent_age"

    invoke-virtual {v1, v0}, Lcom/tapjoy/TJKeyValueStorage;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "below_consent_age"

    invoke-virtual {v1, v0}, Lcom/tapjoy/TJKeyValueStorage;->getValueType(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-class v3, Ljava/lang/Boolean;

    if-ne v0, v3, :cond_8

    const-string v0, "below_consent_age"

    invoke-virtual {v1, v0, v2}, Lcom/tapjoy/TJKeyValueStorage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/tapjoy/TJStatus;->TRUE:Lcom/tapjoy/TJStatus;

    goto :goto_5

    :cond_7
    sget-object v0, Lcom/tapjoy/TJStatus;->FALSE:Lcom/tapjoy/TJStatus;

    :goto_5
    iput-object v0, p1, Lcom/tapjoy/TJPrivacyPolicy;->c:Lcom/tapjoy/TJStatus;

    goto :goto_6

    :cond_8
    const-string v0, "below_consent_age"

    invoke-virtual {v1, v0}, Lcom/tapjoy/TJKeyValueStorage;->getValueType(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-class v3, Ljava/lang/Integer;

    if-ne v0, v3, :cond_9

    sget-object v0, Lcom/tapjoy/TJStatus;->UNKNOWN:Lcom/tapjoy/TJStatus;

    invoke-virtual {v0}, Lcom/tapjoy/TJStatus;->getValue()I

    move-result v0

    const-string v3, "below_consent_age"

    invoke-virtual {v1, v3, v0}, Lcom/tapjoy/TJKeyValueStorage;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/tapjoy/TJStatus;->valueOf(I)Lcom/tapjoy/TJStatus;

    move-result-object v0

    iput-object v0, p1, Lcom/tapjoy/TJPrivacyPolicy;->c:Lcom/tapjoy/TJStatus;

    :cond_9
    :goto_6
    iget-object v0, p1, Lcom/tapjoy/TJPrivacyPolicy;->e:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string v0, "us_privacy"

    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Lcom/tapjoy/TJKeyValueStorage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tapjoy/TJPrivacyPolicy;->e:Ljava/lang/String;

    :cond_a
    iget-object v0, p1, Lcom/tapjoy/TJPrivacyPolicy;->d:Lcom/tapjoy/TJStatus;

    if-nez v0, :cond_d

    const-string v0, "usage_stats_consent"

    invoke-virtual {v1, v0}, Lcom/tapjoy/TJKeyValueStorage;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "usage_stats_consent"

    invoke-virtual {v1, v0}, Lcom/tapjoy/TJKeyValueStorage;->getValueType(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-class v3, Ljava/lang/Boolean;

    if-ne v0, v3, :cond_c

    const-string v0, "usage_stats_consent"

    invoke-virtual {v1, v0, v2}, Lcom/tapjoy/TJKeyValueStorage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/tapjoy/TJStatus;->TRUE:Lcom/tapjoy/TJStatus;

    goto :goto_7

    :cond_b
    sget-object v0, Lcom/tapjoy/TJStatus;->FALSE:Lcom/tapjoy/TJStatus;

    :goto_7
    iput-object v0, p1, Lcom/tapjoy/TJPrivacyPolicy;->d:Lcom/tapjoy/TJStatus;

    goto :goto_8

    :cond_c
    const-string v0, "usage_stats_consent"

    invoke-virtual {v1, v0}, Lcom/tapjoy/TJKeyValueStorage;->getValueType(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-class v2, Ljava/lang/Integer;

    if-ne v0, v2, :cond_d

    sget-object v0, Lcom/tapjoy/TJStatus;->UNKNOWN:Lcom/tapjoy/TJStatus;

    invoke-virtual {v0}, Lcom/tapjoy/TJStatus;->getValue()I

    move-result v0

    const-string v2, "usage_stats_consent"

    invoke-virtual {v1, v2, v0}, Lcom/tapjoy/TJKeyValueStorage;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/tapjoy/TJStatus;->valueOf(I)Lcom/tapjoy/TJStatus;

    move-result-object v0

    iput-object v0, p1, Lcom/tapjoy/TJPrivacyPolicy;->d:Lcom/tapjoy/TJStatus;

    :cond_d
    :goto_8
    invoke-static {}, Lcom/tapjoy/TJPrivacyPolicy;->getInstance()Lcom/tapjoy/TJPrivacyPolicy;

    move-result-object p1

    iget-object v0, p1, Lcom/tapjoy/TJPrivacyPolicy;->f:Landroid/content/Context;

    if-eqz v0, :cond_17

    iget-object v1, p1, Lcom/tapjoy/TJPrivacyPolicy;->a:Lcom/tapjoy/TJStatus;

    if-eqz v1, :cond_f

    sget-object v2, Lcom/tapjoy/TJStatus;->UNKNOWN:Lcom/tapjoy/TJStatus;

    if-ne v1, v2, :cond_e

    new-instance v1, Lcom/tapjoy/TJKeyValueStorage;

    const-string v2, "tjcPrefrences"

    invoke-direct {v1, v0, v2}, Lcom/tapjoy/TJKeyValueStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "gdpr"

    invoke-virtual {v1, v0}, Lcom/tapjoy/TJKeyValueStorage;->remove(Ljava/lang/String;)V

    goto :goto_9

    :cond_e
    new-instance v1, Lcom/tapjoy/TJKeyValueStorage;

    const-string v2, "tjcPrefrences"

    invoke-direct {v1, v0, v2}, Lcom/tapjoy/TJKeyValueStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/tapjoy/TJPrivacyPolicy;->a:Lcom/tapjoy/TJStatus;

    invoke-virtual {v0}, Lcom/tapjoy/TJStatus;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "gdpr"

    invoke-virtual {v1, v2, v0}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_f
    :goto_9
    iget-object v0, p1, Lcom/tapjoy/TJPrivacyPolicy;->f:Landroid/content/Context;

    if-eqz v0, :cond_11

    iget-object v1, p1, Lcom/tapjoy/TJPrivacyPolicy;->b:Lcom/tapjoy/TJStatus;

    if-eqz v1, :cond_11

    sget-object v2, Lcom/tapjoy/TJStatus;->UNKNOWN:Lcom/tapjoy/TJStatus;

    if-ne v1, v2, :cond_10

    new-instance v1, Lcom/tapjoy/TJKeyValueStorage;

    const-string v2, "tjcPrefrences"

    invoke-direct {v1, v0, v2}, Lcom/tapjoy/TJKeyValueStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "cgdpr"

    invoke-virtual {v1, v0}, Lcom/tapjoy/TJKeyValueStorage;->remove(Ljava/lang/String;)V

    goto :goto_a

    :cond_10
    new-instance v1, Lcom/tapjoy/TJKeyValueStorage;

    const-string v2, "tjcPrefrences"

    invoke-direct {v1, v0, v2}, Lcom/tapjoy/TJKeyValueStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/tapjoy/TJPrivacyPolicy;->b:Lcom/tapjoy/TJStatus;

    invoke-virtual {v0}, Lcom/tapjoy/TJStatus;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "cgdpr"

    invoke-virtual {v1, v2, v0}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_11
    :goto_a
    iget-object v0, p1, Lcom/tapjoy/TJPrivacyPolicy;->f:Landroid/content/Context;

    if-eqz v0, :cond_13

    iget-object v1, p1, Lcom/tapjoy/TJPrivacyPolicy;->c:Lcom/tapjoy/TJStatus;

    if-eqz v1, :cond_13

    sget-object v2, Lcom/tapjoy/TJStatus;->UNKNOWN:Lcom/tapjoy/TJStatus;

    if-ne v1, v2, :cond_12

    new-instance v1, Lcom/tapjoy/TJKeyValueStorage;

    const-string v2, "tjcPrefrences"

    invoke-direct {v1, v0, v2}, Lcom/tapjoy/TJKeyValueStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "below_consent_age"

    invoke-virtual {v1, v0}, Lcom/tapjoy/TJKeyValueStorage;->remove(Ljava/lang/String;)V

    goto :goto_b

    :cond_12
    new-instance v1, Lcom/tapjoy/TJKeyValueStorage;

    const-string v2, "tjcPrefrences"

    invoke-direct {v1, v0, v2}, Lcom/tapjoy/TJKeyValueStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/tapjoy/TJPrivacyPolicy;->c:Lcom/tapjoy/TJStatus;

    invoke-virtual {v0}, Lcom/tapjoy/TJStatus;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "below_consent_age"

    invoke-virtual {v1, v2, v0}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_13
    :goto_b
    iget-object v0, p1, Lcom/tapjoy/TJPrivacyPolicy;->f:Landroid/content/Context;

    if-eqz v0, :cond_15

    iget-object v0, p1, Lcom/tapjoy/TJPrivacyPolicy;->e:Ljava/lang/String;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Lcom/tapjoy/TJKeyValueStorage;

    iget-object v1, p1, Lcom/tapjoy/TJPrivacyPolicy;->f:Landroid/content/Context;

    const-string v2, "tjcPrefrences"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/TJKeyValueStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "us_privacy"

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJKeyValueStorage;->remove(Ljava/lang/String;)V

    goto :goto_c

    :cond_14
    new-instance v0, Lcom/tapjoy/TJKeyValueStorage;

    iget-object v1, p1, Lcom/tapjoy/TJPrivacyPolicy;->f:Landroid/content/Context;

    const-string v2, "tjcPrefrences"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/TJKeyValueStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/tapjoy/TJPrivacyPolicy;->e:Ljava/lang/String;

    const-string v2, "us_privacy"

    invoke-virtual {v0, v2, v1}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_15
    :goto_c
    iget-object v0, p1, Lcom/tapjoy/TJPrivacyPolicy;->f:Landroid/content/Context;

    if-eqz v0, :cond_17

    iget-object v1, p1, Lcom/tapjoy/TJPrivacyPolicy;->d:Lcom/tapjoy/TJStatus;

    if-eqz v1, :cond_17

    sget-object v2, Lcom/tapjoy/TJStatus;->UNKNOWN:Lcom/tapjoy/TJStatus;

    if-ne v1, v2, :cond_16

    new-instance v1, Lcom/tapjoy/TJKeyValueStorage;

    const-string v2, "tjcPrefrences"

    invoke-direct {v1, v0, v2}, Lcom/tapjoy/TJKeyValueStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "usage_stats_consent"

    invoke-virtual {v1, v0}, Lcom/tapjoy/TJKeyValueStorage;->remove(Ljava/lang/String;)V

    goto :goto_d

    :cond_16
    new-instance v1, Lcom/tapjoy/TJKeyValueStorage;

    const-string v2, "tjcPrefrences"

    invoke-direct {v1, v0, v2}, Lcom/tapjoy/TJKeyValueStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/tapjoy/TJPrivacyPolicy;->d:Lcom/tapjoy/TJStatus;

    invoke-virtual {v0}, Lcom/tapjoy/TJStatus;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "usage_stats_consent"

    invoke-virtual {v1, v2, v0}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_d
    invoke-virtual {p1}, Lcom/tapjoy/TJPrivacyPolicy;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_17
    monitor-exit p0

    return-void

    :goto_e
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/tapjoy/Tapjoy;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/tapjoy/internal/g0;

    iget-object v1, p0, Lcom/tapjoy/TJPrivacyPolicy;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/g0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tapjoy/internal/g0;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "TJRegulationsRequest feature is not enabled."

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/tapjoy/TJPrivacyPolicy;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lxh8;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lxh8;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public getBelowConsentAge()Lcom/tapjoy/TJStatus;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJPrivacyPolicy;->c:Lcom/tapjoy/TJStatus;

    return-object p0
.end method

.method public getSubjectToGDPR()Lcom/tapjoy/TJStatus;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJPrivacyPolicy;->a:Lcom/tapjoy/TJStatus;

    return-object p0
.end method

.method public getUSPrivacy()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJPrivacyPolicy;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getUsageStatsConsent()Lcom/tapjoy/TJStatus;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJPrivacyPolicy;->d:Lcom/tapjoy/TJStatus;

    return-object p0
.end method

.method public getUserConsent()Lcom/tapjoy/TJStatus;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJPrivacyPolicy;->b:Lcom/tapjoy/TJStatus;

    return-object p0
.end method

.method public setBelowConsentAge(Lcom/tapjoy/TJStatus;)V
    .locals 4

    iput-object p1, p0, Lcom/tapjoy/TJPrivacyPolicy;->c:Lcom/tapjoy/TJStatus;

    iget-object v0, p0, Lcom/tapjoy/TJPrivacyPolicy;->f:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    sget-object v1, Lcom/tapjoy/TJStatus;->UNKNOWN:Lcom/tapjoy/TJStatus;

    const-string v2, "below_consent_age"

    const-string v3, "tjcPrefrences"

    if-ne p1, v1, :cond_0

    new-instance p0, Lcom/tapjoy/TJKeyValueStorage;

    invoke-direct {p0, v0, v3}, Lcom/tapjoy/TJKeyValueStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/tapjoy/TJKeyValueStorage;->remove(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/tapjoy/TJKeyValueStorage;

    invoke-direct {p1, v0, v3}, Lcom/tapjoy/TJKeyValueStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tapjoy/TJPrivacyPolicy;->c:Lcom/tapjoy/TJStatus;

    invoke-virtual {p0}, Lcom/tapjoy/TJStatus;->getValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setSubjectToGDPR(Lcom/tapjoy/TJStatus;)V
    .locals 4

    iput-object p1, p0, Lcom/tapjoy/TJPrivacyPolicy;->a:Lcom/tapjoy/TJStatus;

    iget-object v0, p0, Lcom/tapjoy/TJPrivacyPolicy;->f:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    sget-object v1, Lcom/tapjoy/TJStatus;->UNKNOWN:Lcom/tapjoy/TJStatus;

    const-string v2, "gdpr"

    const-string v3, "tjcPrefrences"

    if-ne p1, v1, :cond_0

    new-instance p0, Lcom/tapjoy/TJKeyValueStorage;

    invoke-direct {p0, v0, v3}, Lcom/tapjoy/TJKeyValueStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/tapjoy/TJKeyValueStorage;->remove(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/tapjoy/TJKeyValueStorage;

    invoke-direct {p1, v0, v3}, Lcom/tapjoy/TJKeyValueStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tapjoy/TJPrivacyPolicy;->a:Lcom/tapjoy/TJStatus;

    invoke-virtual {p0}, Lcom/tapjoy/TJStatus;->getValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setUSPrivacy(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/tapjoy/TJPrivacyPolicy;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/tapjoy/TJPrivacyPolicy;->f:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    iget-object v0, p0, Lcom/tapjoy/TJPrivacyPolicy;->f:Landroid/content/Context;

    const-string v1, "us_privacy"

    const-string v2, "tjcPrefrences"

    if-eqz p1, :cond_0

    new-instance p0, Lcom/tapjoy/TJKeyValueStorage;

    invoke-direct {p0, v0, v2}, Lcom/tapjoy/TJKeyValueStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/tapjoy/TJKeyValueStorage;->remove(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/tapjoy/TJKeyValueStorage;

    invoke-direct {p1, v0, v2}, Lcom/tapjoy/TJKeyValueStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tapjoy/TJPrivacyPolicy;->e:Ljava/lang/String;

    invoke-virtual {p1, v1, p0}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setUsageStatsConsent(Lcom/tapjoy/TJStatus;)V
    .locals 4

    iget-object v0, p0, Lcom/tapjoy/TJPrivacyPolicy;->d:Lcom/tapjoy/TJStatus;

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iput-object p1, p0, Lcom/tapjoy/TJPrivacyPolicy;->d:Lcom/tapjoy/TJStatus;

    iget-object v0, p0, Lcom/tapjoy/TJPrivacyPolicy;->f:Landroid/content/Context;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    sget-object v1, Lcom/tapjoy/TJStatus;->UNKNOWN:Lcom/tapjoy/TJStatus;

    const-string v2, "usage_stats_consent"

    const-string v3, "tjcPrefrences"

    if-ne p1, v1, :cond_1

    new-instance p1, Lcom/tapjoy/TJKeyValueStorage;

    invoke-direct {p1, v0, v3}, Lcom/tapjoy/TJKeyValueStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/tapjoy/TJKeyValueStorage;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/tapjoy/TJKeyValueStorage;

    invoke-direct {p1, v0, v3}, Lcom/tapjoy/TJKeyValueStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TJPrivacyPolicy;->d:Lcom/tapjoy/TJStatus;

    invoke-virtual {v0}, Lcom/tapjoy/TJStatus;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Lcom/tapjoy/TJPrivacyPolicy;->b()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setUserConsent(Lcom/tapjoy/TJStatus;)V
    .locals 4

    iput-object p1, p0, Lcom/tapjoy/TJPrivacyPolicy;->b:Lcom/tapjoy/TJStatus;

    iget-object v0, p0, Lcom/tapjoy/TJPrivacyPolicy;->f:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    sget-object v1, Lcom/tapjoy/TJStatus;->UNKNOWN:Lcom/tapjoy/TJStatus;

    const-string v2, "cgdpr"

    const-string v3, "tjcPrefrences"

    if-ne p1, v1, :cond_0

    new-instance p0, Lcom/tapjoy/TJKeyValueStorage;

    invoke-direct {p0, v0, v3}, Lcom/tapjoy/TJKeyValueStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/tapjoy/TJKeyValueStorage;->remove(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/tapjoy/TJKeyValueStorage;

    invoke-direct {p1, v0, v3}, Lcom/tapjoy/TJKeyValueStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tapjoy/TJPrivacyPolicy;->b:Lcom/tapjoy/TJStatus;

    invoke-virtual {p0}, Lcom/tapjoy/TJStatus;->getValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
