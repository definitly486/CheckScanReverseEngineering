.class public final Lcom/google/android/gms/measurement/internal/zzhf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final synthetic b:Lhnb;


# direct methods
.method public synthetic constructor <init>(Lhnb;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhf;->b:Lhnb;

    const-string p1, "health_monitor"

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzhf;->a:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->b:Lhnb;

    invoke-virtual {p0}, Ljvb;->zzg()V

    iget-object v0, p0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzba()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lhnb;->d()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v2, "health_monitor:count"

    invoke-interface {p0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "health_monitor:value"

    invoke-interface {p0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "health_monitor:start"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final zza(Ljava/lang/String;J)V
    .locals 9

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhf;->b:Lhnb;

    invoke-virtual {p2}, Ljvb;->zzg()V

    invoke-virtual {p2}, Lhnb;->d()Landroid/content/SharedPreferences;

    move-result-object p3

    const-string v0, "health_monitor:start"

    const-wide/16 v1, 0x0

    invoke-interface {p3, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p3, v3, v1

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->a()V

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-virtual {p2}, Lhnb;->d()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p3, "health_monitor:count"

    invoke-interface {p0, p3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p0, v3, v1

    const-wide/16 v0, 0x1

    const-string v2, "health_monitor:value"

    if-gtz p0, :cond_2

    invoke-virtual {p2}, Lhnb;->d()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0, p3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_2
    iget-object p0, p2, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzk()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpp;->J()Ljava/security/SecureRandom;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    move-result-wide v5

    const-wide v7, 0x7fffffffffffffffL

    and-long/2addr v5, v7

    add-long/2addr v3, v0

    div-long/2addr v7, v3

    invoke-virtual {p2}, Lhnb;->d()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    cmp-long p2, v5, v7

    if-gez p2, :cond_3

    invoke-interface {p0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_3
    invoke-interface {p0, p3, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final zzb()Landroid/util/Pair;
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhf;->b:Lhnb;

    invoke-virtual {v0}, Ljvb;->zzg()V

    invoke-virtual {v0}, Ljvb;->zzg()V

    invoke-virtual {v0}, Lhnb;->d()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "health_monitor:start"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->a()V

    move-wide v1, v3

    goto :goto_0

    :cond_0
    iget-object v5, v0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzic;->zzba()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    :goto_0
    iget-wide v5, p0, Lcom/google/android/gms/measurement/internal/zzhf;->a:J

    cmp-long v7, v1, v5

    const/4 v8, 0x0

    if-gez v7, :cond_1

    return-object v8

    :cond_1
    add-long/2addr v5, v5

    cmp-long v1, v1, v5

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->a()V

    return-object v8

    :cond_2
    const-string v1, "health_monitor:value"

    invoke-virtual {v0}, Lhnb;->d()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v1, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "health_monitor:count"

    invoke-virtual {v0}, Lhnb;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->a()V

    if-eqz v1, :cond_4

    cmp-long p0, v5, v3

    if-gtz p0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Landroid/util/Pair;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_4
    :goto_1
    sget-object p0, Lhnb;->z:Landroid/util/Pair;

    return-object p0
.end method
