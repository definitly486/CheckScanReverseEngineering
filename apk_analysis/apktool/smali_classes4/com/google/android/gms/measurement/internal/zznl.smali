.class public final Lcom/google/android/gms/measurement/internal/zznl;
.super Lqhb;
.source "SourceFile"


# instance fields
.field public final c:Lcom/google/android/gms/measurement/internal/zznf;

.field public d:Lcom/google/android/gms/measurement/internal/zzgb;

.field public volatile e:Ljava/lang/Boolean;

.field public final f:Ld5c;

.field public g:Ljava/util/concurrent/ScheduledExecutorService;

.field public final h:Lo9c;

.field public final i:Ljava/util/ArrayList;

.field public final j:Lnyb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzic;)V
    .locals 2

    invoke-direct {p0, p1}, Lqhb;-><init>(Lcom/google/android/gms/measurement/internal/zzic;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zznl;->i:Ljava/util/ArrayList;

    new-instance v0, Lo9c;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzic;->zzba()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-direct {v0, v1}, Lo9c;-><init>(Lcom/google/android/gms/common/util/Clock;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zznl;->h:Lo9c;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zznf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zznf;-><init>(Lcom/google/android/gms/measurement/internal/zznl;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zznl;->c:Lcom/google/android/gms/measurement/internal/zznf;

    new-instance v0, Ld5c;

    invoke-direct {v0, p0, p1}, Ld5c;-><init>(Lcom/google/android/gms/measurement/internal/zznl;Lpvb;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zznl;->f:Ld5c;

    new-instance v0, Lnyb;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lnyb;-><init>(Lqhb;Lpvb;I)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zznl;->j:Lnyb;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    invoke-virtual {p0}, Lmdb;->zzg()V

    invoke-virtual {p0}, Lqhb;->a()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznl;->zzh()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznl;->c()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zznl;->c:Lcom/google/android/gms/measurement/internal/zznf;

    if-nez v0, :cond_3

    iget-object p0, p0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzae;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaZ()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaZ()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.measurement.START"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaZ()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzae;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zznf;->zza(Landroid/content/Intent;)V

    return-void

    :cond_1
    const-string v0, "Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest"

    invoke-static {p0, v0}, Lu4;->e(Lcom/google/android/gms/measurement/internal/zzic;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznf;->zzc()V

    return-void
.end method

.method public final c()Z
    .locals 8

    invoke-virtual {p0}, Lmdb;->zzg()V

    invoke-virtual {p0}, Lqhb;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznl;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lmdb;->zzg()V

    invoke-virtual {p0}, Lqhb;->a()V

    iget-object v0, p0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzd()Lhnb;

    move-result-object v1

    invoke-virtual {v1}, Ljvb;->zzg()V

    invoke-virtual {v1}, Lhnb;->d()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "use_service"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lhnb;->d()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzae;

    iget-object v5, p0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzic;->zzv()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v5

    invoke-virtual {v5}, Lqhb;->a()V

    iget v5, v5, Lcom/google/android/gms/measurement/internal/zzgi;->n:I

    if-ne v5, v2, :cond_2

    :goto_1
    move v4, v2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v5

    const-string v6, "Checking service availability"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzk()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v5

    const v6, 0xbdfcb8

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzpp;->zzal(I)I

    move-result v5

    if-eqz v5, :cond_a

    if-eq v5, v2, :cond_9

    const/4 v6, 0x2

    if-eq v5, v6, :cond_6

    const/4 v1, 0x3

    if-eq v5, v1, :cond_5

    const/16 v1, 0x9

    if-eq v5, v1, :cond_4

    const/16 v1, 0x12

    if-eq v5, v1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "Unexpected service status"

    invoke-virtual {v1, v5, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    move v2, v4

    goto :goto_4

    :cond_3
    const-string v1, "Service updating"

    invoke-static {v0, v1}, Lxp;->h(Lcom/google/android/gms/measurement/internal/zzic;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v1, "Service invalid"

    invoke-static {v0, v1}, Lxp;->h(Lcom/google/android/gms/measurement/internal/zzic;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v1, "Service disabled"

    invoke-static {v0, v1}, Lxp;->h(Lcom/google/android/gms/measurement/internal/zzic;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgu;->zzj()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v5

    const-string v6, "Service container out of date"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzk()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzpp;->zzak()I

    move-result v5

    const/16 v6, 0x4423

    if-ge v5, v6, :cond_7

    goto :goto_4

    :cond_7
    if-nez v1, :cond_8

    goto :goto_3

    :cond_8
    move v2, v4

    :goto_3
    move v7, v4

    move v4, v2

    move v2, v7

    goto :goto_4

    :cond_9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    const-string v5, "Service missing"

    invoke-virtual {v1, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    const-string v4, "Service available"

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    goto/16 :goto_1

    :goto_4
    if-nez v4, :cond_b

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzal;->a()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "No way to upload. Consider using the full version of Analytics"

    invoke-static {v0, v1}, Lu4;->e(Lcom/google/android/gms/measurement/internal/zzic;Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    if-eqz v2, :cond_c

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzd()Lhnb;

    move-result-object v0

    invoke-virtual {v0}, Ljvb;->zzg()V

    invoke-virtual {v0}, Lhnb;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_c
    :goto_5
    move v2, v4

    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zznl;->e:Ljava/lang/Boolean;

    :cond_d
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zznl;->e:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final d()Z
    .locals 2

    invoke-virtual {p0}, Lmdb;->zzg()V

    invoke-virtual {p0}, Lqhb;->a()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznl;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzk()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpp;->zzak()I

    move-result p0

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzfy;->zzaJ:Lcom/google/android/gms/measurement/internal/zzfx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic e(Landroid/content/ComponentName;)V
    .locals 2

    invoke-virtual {p0}, Lmdb;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznl;->d:Lcom/google/android/gms/measurement/internal/zzgb;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zznl;->d:Lcom/google/android/gms/measurement/internal/zzgb;

    iget-object v0, p0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v1, "Disconnected from device MeasurementService"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lmdb;->zzg()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznl;->b()V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 0

    iget-object p0, p0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzae;

    return-void
.end method

.method public final g()V
    .locals 3

    invoke-virtual {p0}, Lmdb;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznl;->h:Lo9c;

    iget-object v1, v0, Lo9c;->a:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lo9c;->b:J

    iget-object v0, p0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzfy;->zzY:Lcom/google/android/gms/measurement/internal/zzfx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zznl;->f:Ld5c;

    invoke-virtual {p0, v0, v1}, Ltva;->b(J)V

    return-void
.end method

.method public final h(Ljava/lang/Runnable;)V
    .locals 6

    invoke-virtual {p0}, Lmdb;->zzg()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznl;->zzh()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznl;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    const-wide/16 v4, 0x3e8

    cmp-long v1, v1, v4

    if-ltz v1, :cond_1

    const-string p0, "Discarding data. Max runnable queue size reached"

    invoke-static {v3, p0}, Lu4;->e(Lcom/google/android/gms/measurement/internal/zzic;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zznl;->j:Lnyb;

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, v0, v1}, Ltva;->b(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznl;->b()V

    return-void
.end method

.method public final i()V
    .locals 6

    invoke-virtual {p0}, Lmdb;->zzg()V

    iget-object v0, p0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zznl;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Processing queued up service tasks"

    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    :try_start_0
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v4

    const-string v5, "Task exception while flushing queue"

    invoke-virtual {v4, v5, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zznl;->j:Lnyb;

    invoke-virtual {p0}, Ltva;->c()V

    return-void
.end method

.method public final j(Z)Lcom/google/android/gms/measurement/internal/zzr;
    .locals 4

    iget-object p0, p0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzae;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzv()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p0

    iget-object p0, p0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzd()Lhnb;

    move-result-object p1

    iget-object p1, p1, Lhnb;->e:Lcom/google/android/gms/measurement/internal/zzhf;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzd()Lhnb;

    move-result-object p0

    iget-object p0, p0, Lhnb;->e:Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzb()Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object p1, Lhnb;->z:Landroid/util/Pair;

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, ":"

    invoke-static {v3, p1, v1, p0}, Lkh;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgi;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object p0

    return-object p0
.end method

.method public final k(Lcom/google/android/gms/measurement/internal/zzgb;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 58

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lmdb;->zzg()V

    invoke-virtual/range {p0 .. p0}, Lqhb;->a()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznl;->f()V

    move-object/from16 v0, p0

    iget-object v3, v0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    const/16 v5, 0x64

    move-object/from16 v0, p3

    move v7, v5

    const/4 v6, 0x0

    :goto_0
    const/16 v8, 0x3e9

    if-ge v6, v8, :cond_b

    if-ne v7, v5, :cond_b

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzm()Lcom/google/android/gms/measurement/internal/zzgl;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/google/android/gms/measurement/internal/zzgl;->zzm(I)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    if-eqz v2, :cond_1

    if-ge v8, v5, :cond_1

    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzc:Ljava/lang/String;

    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzj:J

    new-instance v12, Lcom/google/android/gms/measurement/internal/zzgk;

    invoke-direct {v12, v2, v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzgk;-><init>(Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Ljava/lang/String;J)V

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_a

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/zzgk;

    iget-object v12, v11, Lcom/google/android/gms/measurement/internal/zzgk;->zza:Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v13

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzfy;->zzaW:Lcom/google/android/gms/measurement/internal/zzfx;

    const/4 v15, 0x0

    invoke-virtual {v13, v15, v14}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v13

    if-eqz v13, :cond_2

    iget-object v13, v11, Lcom/google/android/gms/measurement/internal/zzgk;->zzb:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_2

    iget-wide v4, v11, Lcom/google/android/gms/measurement/internal/zzgk;->zzc:J

    iget-object v11, v0, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    iget-object v15, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzb:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzd:Ljava/lang/String;

    move-wide/from16 v20, v4

    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/zzr;->zze:J

    move-wide/from16 v23, v4

    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzf:J

    move-object/from16 v22, v2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzg:Ljava/lang/String;

    move-object/from16 v27, v2

    iget-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzh:Z

    move/from16 v28, v2

    iget-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzi:Z

    move/from16 v29, v2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzk:Ljava/lang/String;

    move-wide/from16 v25, v4

    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzl:J

    move-object/from16 v30, v2

    iget v2, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzm:I

    move/from16 v33, v2

    iget-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzn:Z

    move/from16 v34, v2

    iget-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzo:Z

    move/from16 v35, v2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzp:Ljava/lang/Boolean;

    move-wide/from16 v31, v4

    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzq:J

    move-object/from16 v36, v2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzr:Ljava/util/List;

    move-object/from16 v39, v2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzs:Ljava/lang/String;

    move-object/from16 v40, v2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzt:Ljava/lang/String;

    move-object/from16 v41, v2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzu:Ljava/lang/String;

    move-object/from16 v42, v2

    iget-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzv:Z

    move-wide/from16 v37, v4

    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzw:J

    move/from16 v43, v2

    iget v2, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzx:I

    move/from16 v46, v2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzy:Ljava/lang/String;

    move-object/from16 v47, v2

    iget v2, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzz:I

    move-wide/from16 v44, v4

    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzA:J

    move/from16 v48, v2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzB:Ljava/lang/String;

    move-object/from16 v51, v2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzC:Ljava/lang/String;

    move-wide/from16 v49, v4

    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzD:J

    move-object/from16 v52, v2

    iget v2, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzE:I

    move-wide/from16 v53, v4

    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/zzr;->zzF:J

    new-instance v16, Lcom/google/android/gms/measurement/internal/zzr;

    move/from16 v55, v2

    move-wide/from16 v56, v4

    move-object/from16 v17, v11

    move-object/from16 v19, v13

    move-object/from16 v18, v15

    invoke-direct/range {v16 .. v57}, Lcom/google/android/gms/measurement/internal/zzr;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JIZZLjava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;JIJ)V

    move-object/from16 v2, v16

    goto :goto_3

    :cond_2
    move-object v2, v0

    :goto_3
    instance-of v0, v12, Lcom/google/android/gms/measurement/internal/zzbh;

    if-eqz v0, :cond_5

    const-wide/16 v4, 0x0

    :try_start_0
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzba()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v16
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzba()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v21
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    check-cast v12, Lcom/google/android/gms/measurement/internal/zzbh;

    invoke-interface {v1, v12, v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zze(Lcom/google/android/gms/measurement/internal/zzbh;Lcom/google/android/gms/measurement/internal/zzr;)V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v11, "Logging telemetry for logEvent from database"

    invoke-virtual {v0, v11}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzgq;->d:Lcom/google/android/gms/measurement/internal/zzgq;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzgq;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzaZ()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v0, v11, v3}, Lcom/google/android/gms/measurement/internal/zzgq;-><init>(Landroid/content/Context;Lcom/google/android/gms/measurement/internal/zzic;)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzgq;->d:Lcom/google/android/gms/measurement/internal/zzgq;

    :cond_3
    move-object v13, v0

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzba()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v18

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzba()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v11

    sub-long v11, v11, v21

    long-to-int v0, v11

    const v14, 0x8dcd

    const/4 v15, 0x0

    move/from16 v20, v0

    invoke-virtual/range {v13 .. v20}, Lcom/google/android/gms/measurement/internal/zzgq;->zzb(IIJJI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    :goto_4
    move-wide/from16 v14, v16

    goto :goto_5

    :catch_1
    move-exception v0

    move-wide/from16 v21, v4

    goto :goto_4

    :catch_2
    move-exception v0

    move-wide v14, v4

    move-wide/from16 v21, v14

    :goto_5
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v11

    const-string v12, "Failed to send event to the service"

    invoke-virtual {v11, v12, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    cmp-long v0, v14, v4

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzgq;->d:Lcom/google/android/gms/measurement/internal/zzgq;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzgq;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzaZ()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzgq;-><init>(Landroid/content/Context;Lcom/google/android/gms/measurement/internal/zzic;)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzgq;->d:Lcom/google/android/gms/measurement/internal/zzgq;

    :cond_4
    move-object v11, v0

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzba()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v16

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzba()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v4, v4, v21

    long-to-int v0, v4

    const v12, 0x8dcd

    const/16 v13, 0xd

    move/from16 v18, v0

    invoke-virtual/range {v11 .. v18}, Lcom/google/android/gms/measurement/internal/zzgq;->zzb(IIJJI)V

    goto :goto_6

    :cond_5
    instance-of v0, v12, Lcom/google/android/gms/measurement/internal/zzpl;

    if-eqz v0, :cond_6

    :try_start_3
    check-cast v12, Lcom/google/android/gms/measurement/internal/zzpl;

    invoke-interface {v1, v12, v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzf(Lcom/google/android/gms/measurement/internal/zzpl;Lcom/google/android/gms/measurement/internal/zzr;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v4

    const-string v5, "Failed to send user property to the service"

    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    :cond_6
    instance-of v0, v12, Lcom/google/android/gms/measurement/internal/zzah;

    if-eqz v0, :cond_7

    :try_start_4
    check-cast v12, Lcom/google/android/gms/measurement/internal/zzah;

    invoke-interface {v1, v12, v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzn(Lcom/google/android/gms/measurement/internal/zzah;Lcom/google/android/gms/measurement/internal/zzr;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v4

    const-string v5, "Failed to send conditional user property to the service"

    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    :cond_7
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v14}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v0

    if-eqz v0, :cond_8

    instance-of v0, v12, Lcom/google/android/gms/measurement/internal/zzbf;

    if-eqz v0, :cond_8

    :try_start_5
    check-cast v12, Lcom/google/android/gms/measurement/internal/zzbf;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzbf;->zzf()Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu(Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzr;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_6

    :catch_5
    move-exception v0

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v4

    const-string v5, "Failed to send default event parameters to the service"

    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    :cond_8
    const-string v0, "Discarding data. Unrecognized parcel type."

    invoke-static {v3, v0}, Lu4;->e(Lcom/google/android/gms/measurement/internal/zzic;Ljava/lang/String;)V

    :cond_9
    :goto_6
    add-int/lit8 v10, v10, 0x1

    move-object v0, v2

    const/16 v5, 0x64

    move-object/from16 v2, p2

    goto/16 :goto_2

    :cond_a
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, p2

    move v7, v8

    const/16 v5, 0x64

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public final l(Lcom/google/android/gms/measurement/internal/zzah;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lmdb;->zzg()V

    invoke-virtual {p0}, Lqhb;->a()V

    iget-object v0, p0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzm()Lcom/google/android/gms/measurement/internal/zzgl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzgl;->zzk(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzah;

    invoke-direct {v1, p1}, Lcom/google/android/gms/measurement/internal/zzah;-><init>(Lcom/google/android/gms/measurement/internal/zzah;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zznl;->j(Z)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object p1

    new-instance v2, Lu5c;

    invoke-direct {v2, p0, p1, v0, v1}, Lu5c;-><init>(Lcom/google/android/gms/measurement/internal/zznl;Lcom/google/android/gms/measurement/internal/zzr;ZLcom/google/android/gms/measurement/internal/zzah;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/zznl;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzC(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 2

    invoke-virtual {p0}, Lmdb;->zzg()V

    invoke-virtual {p0}, Lqhb;->a()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zznl;->j(Z)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    new-instance v1, Lv4c;

    invoke-direct {v1, p0, p1, v0}, Lv4c;-><init>(Lcom/google/android/gms/measurement/internal/zznl;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzr;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zznl;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzD(Lcom/google/android/gms/internal/measurement/zzcs;)V
    .locals 2

    invoke-virtual {p0}, Lmdb;->zzg()V

    invoke-virtual {p0}, Lqhb;->a()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zznl;->j(Z)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    new-instance v1, Lx4c;

    invoke-direct {v1, p0, v0, p1}, Lx4c;-><init>(Lcom/google/android/gms/measurement/internal/zznl;Lcom/google/android/gms/measurement/internal/zzr;Lcom/google/android/gms/internal/measurement/zzcs;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zznl;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzH(Landroid/os/Bundle;)V
    .locals 6

    invoke-virtual {p0}, Lmdb;->zzg()V

    invoke-virtual {p0}, Lqhb;->a()V

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzbf;

    invoke-direct {v4, p1}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznl;->f()V

    iget-object v0, p0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzc()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzfy;->zzaW:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzm()Lcom/google/android/gms/measurement/internal/zzgl;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzgl;->zzl(Lcom/google/android/gms/measurement/internal/zzbf;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/zznl;->j(Z)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v2

    new-instance v0, Lf5c;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lf5c;-><init>(Lcom/google/android/gms/measurement/internal/zznl;Lcom/google/android/gms/measurement/internal/zzr;ZLcom/google/android/gms/measurement/internal/zzbf;Landroid/os/Bundle;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zznl;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzM()V
    .locals 3

    invoke-virtual {p0}, Lmdb;->zzg()V

    invoke-virtual {p0}, Lqhb;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznl;->c:Lcom/google/android/gms/measurement/internal/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznf;->zzb()V

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v1

    iget-object v2, p0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzaZ()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zznl;->d:Lcom/google/android/gms/measurement/internal/zzgb;

    return-void
.end method

.method public final zzN(Lcom/google/android/gms/internal/measurement/zzcs;Lcom/google/android/gms/measurement/internal/zzbh;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lmdb;->zzg()V

    invoke-virtual {p0}, Lqhb;->a()V

    iget-object v0, p0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzk()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object v1

    const v2, 0xbdfcb8

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzpp;->zzal(I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p0

    const-string p2, "Not bundling data. Service unavailable or out of date"

    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzk()Lcom/google/android/gms/measurement/internal/zzpp;

    move-result-object p0

    const/4 p2, 0x0

    new-array p2, p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzpp;->zzar(Lcom/google/android/gms/internal/measurement/zzcs;[B)V

    return-void

    :cond_0
    new-instance v0, Li5c;

    invoke-direct {v0, p0, p2, p3, p1}, Li5c;-><init>(Lcom/google/android/gms/measurement/internal/zznl;Lcom/google/android/gms/measurement/internal/zzbh;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzcs;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zznl;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zze()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final zzh()Z
    .locals 0

    invoke-virtual {p0}, Lmdb;->zzg()V

    invoke-virtual {p0}, Lqhb;->a()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zznl;->d:Lcom/google/android/gms/measurement/internal/zzgb;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
