.class public final Lhqb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzjs;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/zzic;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzic;Lcom/google/android/gms/measurement/internal/zzjs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lhqb;->b:Lcom/google/android/gms/measurement/internal/zzjs;

    iput-object p1, p0, Lhqb;->c:Lcom/google/android/gms/measurement/internal/zzic;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lhqb;->c:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzic;->f:Lcom/google/android/gms/measurement/internal/zzgu;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzic;->e:Lhnb;

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzic;->i:Lcom/google/android/gms/measurement/internal/zzpp;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzic;->e(Lmvb;)V

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzhz;->zzg()V

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzic;->d:Lcom/google/android/gms/measurement/internal/zzal;

    iget-object v2, v11, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->zzaV()Lcom/google/android/gms/measurement/internal/zzae;

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzbb;

    invoke-direct {v2, v1}, Lmvb;-><init>(Lcom/google/android/gms/measurement/internal/zzic;)V

    invoke-virtual {v2}, Lmvb;->zzx()V

    iput-object v2, v1, Lcom/google/android/gms/measurement/internal/zzic;->s:Lcom/google/android/gms/measurement/internal/zzbb;

    iget-object v0, v0, Lhqb;->b:Lcom/google/android/gms/measurement/internal/zzjs;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzjs;->d:Lcom/google/android/gms/internal/measurement/zzdb;

    if-nez v2, :cond_0

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_0
    iget-wide v3, v2, Lcom/google/android/gms/internal/measurement/zzdb;->zza:J

    move-wide v4, v3

    :goto_0
    const-string v3, ""

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzdb;->zzd:Landroid/os/Bundle;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v6, "runtime_google_app_id"

    invoke-virtual {v2, v6, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    :goto_1
    move-object v6, v3

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzgi;

    iget-wide v14, v0, Lcom/google/android/gms/measurement/internal/zzjs;->c:J

    move-object v0, v2

    move-wide v2, v14

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzgi;-><init>(Lcom/google/android/gms/measurement/internal/zzic;JJLjava/lang/String;)V

    invoke-virtual {v0}, Lqhb;->zzc()V

    iput-object v0, v1, Lcom/google/android/gms/measurement/internal/zzic;->t:Lcom/google/android/gms/measurement/internal/zzgi;

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzgl;

    invoke-direct {v2, v1}, Lcom/google/android/gms/measurement/internal/zzgl;-><init>(Lcom/google/android/gms/measurement/internal/zzic;)V

    invoke-virtual {v2}, Lqhb;->zzc()V

    iput-object v2, v1, Lcom/google/android/gms/measurement/internal/zzic;->q:Lcom/google/android/gms/measurement/internal/zzgl;

    new-instance v2, Lcom/google/android/gms/measurement/internal/zznl;

    invoke-direct {v2, v1}, Lcom/google/android/gms/measurement/internal/zznl;-><init>(Lcom/google/android/gms/measurement/internal/zzic;)V

    invoke-virtual {v2}, Lqhb;->zzc()V

    iput-object v2, v1, Lcom/google/android/gms/measurement/internal/zzic;->r:Lcom/google/android/gms/measurement/internal/zznl;

    invoke-virtual {v10}, Lmvb;->zzy()V

    iget-object v2, v10, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v9}, Lmvb;->zzy()V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzic;->t:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {v3}, Lqhb;->zzd()V

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzlq;

    invoke-direct {v3, v1}, Lcom/google/android/gms/measurement/internal/zzlq;-><init>(Lcom/google/android/gms/measurement/internal/zzic;)V

    invoke-virtual {v3}, Lqhb;->zzc()V

    iput-object v3, v1, Lcom/google/android/gms/measurement/internal/zzic;->u:Lcom/google/android/gms/measurement/internal/zzlq;

    invoke-virtual {v3}, Lqhb;->zzd()V

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzic;->e(Lmvb;)V

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgu;->zzi()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v3

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzal;->zzi()J

    const-wide/32 v4, 0x274e8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "App measurement initialized, version"

    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzic;->e(Lmvb;)V

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgu;->zzi()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v3

    const-string v4, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->zzj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzal;->zzz()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v0, v3}, Lcom/google/android/gms/measurement/internal/zzpp;->B(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzic;->e(Lmvb;)V

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgu;->zzi()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v3, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzic;->e(Lmvb;)V

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgu;->zzi()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    :goto_2
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzic;->e(Lmvb;)V

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgu;->zzj()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v3, "Debug-level message logging enabled"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    iget v0, v1, Lcom/google/android/gms/measurement/internal/zzic;->A:I

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzic;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-eq v0, v4, :cond_4

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzic;->e(Lmvb;)V

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    iget v4, v1, Lcom/google/android/gms/measurement/internal/zzic;->A:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "Not all components initialized"

    invoke-virtual {v0, v5, v4, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzic;->v:Z

    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzic;->D:J

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzic;->m:Lcom/google/android/gms/measurement/internal/zzlj;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzic;->e(Lmvb;)V

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzhz;->zzg()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzx()Lcom/google/android/gms/measurement/internal/zzlq;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzlq;->b()Lcom/google/android/gms/internal/measurement/zzin;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/measurement/zzin;->zzb:Lcom/google/android/gms/internal/measurement/zzin;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaif;->zza()Z

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzfy;->zzaP:Lcom/google/android/gms/measurement/internal/zzfx;

    const/4 v15, 0x0

    invoke-virtual {v11, v15, v14}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v14

    const-wide/16 v16, 0x0

    const/4 v12, 0x0

    if-ne v6, v7, :cond_5

    move v6, v0

    goto :goto_3

    :cond_5
    move v6, v12

    :goto_3
    const-wide/16 v18, 0x1

    if-eqz v14, :cond_6

    invoke-virtual {v10}, Ljvb;->zzg()V

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzpp;->t()J

    move-result-wide v13

    cmp-long v7, v13, v18

    if-nez v7, :cond_6

    goto :goto_4

    :cond_6
    if-eqz v6, :cond_7

    move v6, v0

    :goto_4
    invoke-virtual {v10}, Ljvb;->zzg()V

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string v13, "com.google.android.gms.measurement.TRIGGERS_AVAILABLE"

    invoke-virtual {v7, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v13, "com.google.android.gms.measurement.BATCHES_AVAILABLE"

    invoke-virtual {v7, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v13, Lcom/google/android/gms/measurement/internal/zzw;

    invoke-direct {v13, v2}, Lcom/google/android/gms/measurement/internal/zzw;-><init>(Lcom/google/android/gms/measurement/internal/zzic;)V

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzic;->a:Landroid/content/Context;

    const/4 v0, 0x2

    invoke-static {v14, v13, v7, v0}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzic;->f:Lcom/google/android/gms/measurement/internal/zzgu;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->e(Lmvb;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzj()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v7, "Registered app receiver"

    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    if-eqz v6, :cond_7

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzx()Lcom/google/android/gms/measurement/internal/zzlq;

    move-result-object v0

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzfy;->zzB:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v6, v15}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzlq;->zzh(J)V

    :cond_7
    iget-object v0, v9, Lhnb;->g:Lcom/google/android/gms/measurement/internal/zzhg;

    invoke-virtual {v9}, Lhnb;->g()Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjl;->zzb()I

    move-result v7

    const-string v13, "google_analytics_default_allow_ad_storage"

    invoke-virtual {v11, v13, v12}, Lcom/google/android/gms/measurement/internal/zzal;->zzw(Ljava/lang/String;Z)Lcom/google/android/gms/measurement/internal/zzji;

    move-result-object v13

    const-string v14, "google_analytics_default_allow_analytics_storage"

    invoke-virtual {v11, v14, v12}, Lcom/google/android/gms/measurement/internal/zzal;->zzw(Ljava/lang/String;Z)Lcom/google/android/gms/measurement/internal/zzji;

    move-result-object v14

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzji;->zza:Lcom/google/android/gms/measurement/internal/zzji;

    if-ne v13, v12, :cond_9

    if-eq v14, v12, :cond_8

    goto :goto_5

    :cond_8
    move-object/from16 v20, v6

    move-object/from16 v21, v8

    goto :goto_6

    :cond_9
    :goto_5
    invoke-virtual {v9}, Lhnb;->d()Landroid/content/SharedPreferences;

    move-result-object v15

    move-object/from16 v20, v6

    const-string v6, "consent_source"

    move-object/from16 v21, v8

    const/16 v8, 0x64

    invoke-interface {v15, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/16 v8, -0xa

    invoke-static {v8, v6}, Lcom/google/android/gms/measurement/internal/zzjl;->zzu(II)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v13, v14, v8}, Lcom/google/android/gms/measurement/internal/zzjl;->zza(Lcom/google/android/gms/measurement/internal/zzji;Lcom/google/android/gms/measurement/internal/zzji;I)Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object v6

    goto :goto_9

    :cond_a
    :goto_6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzv()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgi;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    if-eqz v7, :cond_c

    const/16 v6, 0x1e

    if-eq v7, v6, :cond_c

    const/16 v6, 0xa

    if-eq v7, v6, :cond_c

    const/16 v6, 0x28

    if-ne v7, v6, :cond_b

    goto :goto_8

    :cond_b
    :goto_7
    const/4 v6, 0x0

    goto :goto_9

    :cond_c
    :goto_8
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzic;->d(Lqhb;)V

    new-instance v6, Lcom/google/android/gms/measurement/internal/zzjl;

    const/4 v7, 0x0

    const/16 v8, -0xa

    invoke-direct {v6, v7, v7, v8}, Lcom/google/android/gms/measurement/internal/zzjl;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzlj;->zzs(Lcom/google/android/gms/measurement/internal/zzjl;Z)V

    goto :goto_7

    :goto_9
    if-eqz v6, :cond_d

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzic;->d(Lqhb;)V

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzlj;->zzs(Lcom/google/android/gms/measurement/internal/zzjl;Z)V

    goto :goto_a

    :cond_d
    move-object/from16 v6, v20

    :goto_a
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzic;->d(Lqhb;)V

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzlj;->m(Lcom/google/android/gms/measurement/internal/zzjl;)V

    invoke-virtual {v9}, Ljvb;->zzg()V

    invoke-virtual {v9}, Lhnb;->d()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "dma_consent_settings"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzba;->zzg(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzba;->zzb()I

    move-result v6

    const-string v7, "google_analytics_default_allow_ad_personalization_signals"

    const/4 v8, 0x1

    invoke-virtual {v11, v7, v8}, Lcom/google/android/gms/measurement/internal/zzal;->zzw(Ljava/lang/String;Z)Lcom/google/android/gms/measurement/internal/zzji;

    move-result-object v7

    if-eq v7, v12, :cond_e

    invoke-static/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/zzic;->e(Lmvb;)V

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v13

    const-string v14, "Default ad personalization consent from Manifest"

    invoke-virtual {v13, v14, v7}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_e
    const-string v7, "google_analytics_default_allow_ad_user_data"

    invoke-virtual {v11, v7, v8}, Lcom/google/android/gms/measurement/internal/zzal;->zzw(Ljava/lang/String;Z)Lcom/google/android/gms/measurement/internal/zzji;

    move-result-object v7

    if-eq v7, v12, :cond_f

    const/16 v8, -0xa

    invoke-static {v8, v6}, Lcom/google/android/gms/measurement/internal/zzjl;->zzu(II)Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzic;->d(Lqhb;)V

    new-instance v6, Ljava/util/EnumMap;

    const-class v12, Lcom/google/android/gms/measurement/internal/zzjk;

    invoke-direct {v6, v12}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzjk;->zzc:Lcom/google/android/gms/measurement/internal/zzjk;

    invoke-virtual {v6, v12, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/google/android/gms/measurement/internal/zzba;

    const/4 v12, 0x0

    invoke-direct {v7, v6, v8, v12, v12}, Lcom/google/android/gms/measurement/internal/zzba;-><init>(Ljava/util/EnumMap;ILjava/lang/Boolean;Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/measurement/internal/zzlj;->j(Lcom/google/android/gms/measurement/internal/zzba;Z)V

    goto :goto_b

    :cond_f
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzv()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgi;->d()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_11

    if-eqz v6, :cond_10

    const/16 v7, 0x1e

    if-ne v6, v7, :cond_11

    :cond_10
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzic;->d(Lqhb;)V

    new-instance v6, Lcom/google/android/gms/measurement/internal/zzba;

    const/4 v7, 0x0

    const/16 v8, -0xa

    invoke-direct {v6, v7, v8, v7, v7}, Lcom/google/android/gms/measurement/internal/zzba;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v8}, Lcom/google/android/gms/measurement/internal/zzlj;->j(Lcom/google/android/gms/measurement/internal/zzba;Z)V

    :cond_11
    :goto_b
    const-string v6, "google_analytics_tcf_data_enabled"

    invoke-virtual {v11, v6}, Lcom/google/android/gms/measurement/internal/zzal;->e(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v6, :cond_12

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_13

    :cond_12
    invoke-static/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/zzic;->e(Lmvb;)V

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/zzgu;->zzj()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v6

    const-string v7, "TCF client enabled."

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzic;->d(Lqhb;)V

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzlj;->zzD()V

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzic;->d(Lqhb;)V

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzlj;->zzC()V

    :cond_13
    iget-object v6, v9, Lhnb;->f:Lcom/google/android/gms/measurement/internal/zzhe;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhe;->zza()J

    move-result-wide v7

    cmp-long v7, v7, v16

    if-nez v7, :cond_14

    invoke-static/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/zzic;->e(Lmvb;)V

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v7

    const-string v8, "Persisting first open"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v7, v8, v12}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6, v3, v4}, Lcom/google/android/gms/measurement/internal/zzhe;->zzb(J)V

    :cond_14
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzic;->d(Lqhb;)V

    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzlj;->q:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzx;->c()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzx;->b()Z

    move-result v8

    if-eqz v8, :cond_15

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzx;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzic;->zzd()Lhnb;

    move-result-object v7

    iget-object v7, v7, Lhnb;->w:Lcom/google/android/gms/measurement/internal/zzhg;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzhg;->zzb(Ljava/lang/String;)V

    :cond_15
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->a()Z

    move-result v7

    if-nez v7, :cond_1c

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzB()Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "android.permission.INTERNET"

    invoke-virtual {v10, v0}, Lcom/google/android/gms/measurement/internal/zzpp;->z(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/zzic;->e(Lmvb;)V

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v2, "App is missing INTERNET permission"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    :cond_16
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v10, v0}, Lcom/google/android/gms/measurement/internal/zzpp;->z(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/zzic;->e(Lmvb;)V

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v2, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    :cond_17
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzic;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->isCallerInstantApp()Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzal;->a()Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzpp;->H(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-static/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/zzic;->e(Lmvb;)V

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    const-string v3, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    :cond_18
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "com.google.android.gms.measurement.AppMeasurementJobService"

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-nez v3, :cond_19

    goto :goto_c

    :cond_19
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1a

    goto :goto_d

    :catch_0
    :cond_1a
    :goto_c
    invoke-static/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/zzic;->e(Lmvb;)V

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v2, "AppMeasurementService not registered/enabled"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    :cond_1b
    :goto_d
    invoke-static/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/zzic;->e(Lmvb;)V

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v2, "Uploading is not possible. App measurement disabled"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_1c
    const/4 v7, 0x0

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzv()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgi;->d()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_20

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzv()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgi;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9}, Ljvb;->zzg()V

    invoke-virtual {v9}, Lhnb;->d()Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v13, "gmp_app_id"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v14, :cond_1f

    if-nez v15, :cond_1f

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1f

    invoke-static/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/zzic;->e(Lmvb;)V

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/zzgu;->zzi()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v8

    const-string v12, "Rechecking which service to use due to a GMP App Id change"

    invoke-virtual {v8, v12}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljvb;->zzg()V

    invoke-virtual {v9}, Ljvb;->zzg()V

    invoke-virtual {v9}, Lhnb;->d()Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v12, "measurement_enabled"

    invoke-interface {v8, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1d

    invoke-virtual {v9}, Lhnb;->d()Landroid/content/SharedPreferences;

    move-result-object v8

    const/4 v14, 0x1

    invoke-interface {v8, v12, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_e

    :cond_1d
    const/4 v8, 0x0

    :goto_e
    invoke-virtual {v9}, Lhnb;->d()Landroid/content/SharedPreferences;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v8, :cond_1e

    invoke-virtual {v9}, Ljvb;->zzg()V

    invoke-virtual {v9}, Lhnb;->d()Landroid/content/SharedPreferences;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-interface {v14, v12, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1e
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzm()Lcom/google/android/gms/measurement/internal/zzgl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgl;->zzh()V

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzic;->r:Lcom/google/android/gms/measurement/internal/zznl;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zznl;->zzM()V

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzic;->r:Lcom/google/android/gms/measurement/internal/zznl;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zznl;->b()V

    invoke-virtual {v6, v3, v4}, Lcom/google/android/gms/measurement/internal/zzhe;->zzb(J)V

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzhg;->zzb(Ljava/lang/String;)V

    :cond_1f
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzv()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Ljvb;->zzg()V

    invoke-virtual {v9}, Lhnb;->d()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v13, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_20
    invoke-virtual {v9}, Lhnb;->g()Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzjk;->zzb:Lcom/google/android/gms/measurement/internal/zzjk;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzjl;->zzo(Lcom/google/android/gms/measurement/internal/zzjk;)Z

    move-result v3

    if-nez v3, :cond_21

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzhg;->zzb(Ljava/lang/String;)V

    :cond_21
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzic;->d(Lqhb;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhg;->zza()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v5, Lcom/google/android/gms/measurement/internal/zzlj;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :try_start_1
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzic;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v2, "com.google.firebase.remoteconfig.FirebaseRemoteConfig"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_f

    :catch_1
    iget-object v0, v9, Lhnb;->v:Lcom/google/android/gms/measurement/internal/zzhg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhg;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    invoke-static/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/zzic;->e(Lmvb;)V

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    const-string v3, "Remote config removed with active feature rollouts"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzhg;->zzb(Ljava/lang/String;)V

    :cond_22
    :goto_f
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzv()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzB()Z

    move-result v0

    iget-object v2, v9, Lhnb;->c:Landroid/content/SharedPreferences;

    if-nez v2, :cond_23

    move v12, v7

    goto :goto_10

    :cond_23
    const-string v3, "deferred_analytics_collection"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    :goto_10
    if-nez v12, :cond_24

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzal;->zzt()Z

    move-result v2

    if-nez v2, :cond_24

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v9, v2}, Lhnb;->h(Z)V

    :cond_24
    if-eqz v0, :cond_25

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzic;->d(Lqhb;)V

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzlj;->zzT()V

    :cond_25
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzic;->h:Lcom/google/android/gms/measurement/internal/zzoc;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->d(Lqhb;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzoc;->e:Lf9c;

    invoke-virtual {v0}, Lf9c;->a()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzt()Lcom/google/android/gms/measurement/internal/zznl;

    move-result-object v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zznl;->zzC(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzic;->zzt()Lcom/google/android/gms/measurement/internal/zznl;

    move-result-object v0

    iget-object v2, v9, Lhnb;->y:Lcom/google/android/gms/measurement/internal/zzhd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhd;->zza()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zznl;->zzH(Landroid/os/Bundle;)V

    :cond_26
    :goto_11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaif;->zza()Z

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzfy;->zzaP:Lcom/google/android/gms/measurement/internal/zzfx;

    const/4 v8, 0x0

    invoke-virtual {v11, v8, v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzp(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {v10}, Ljvb;->zzg()V

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzpp;->t()J

    move-result-wide v2

    cmp-long v0, v2, v18

    if-nez v0, :cond_29

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzfy;->zzaw:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v4, 0x1388

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    int-to-long v6, v0

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzic;->k:Lcom/google/android/gms/common/util/Clock;

    add-long/2addr v2, v6

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_27

    invoke-static/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/zzic;->e(Lmvb;)V

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v1, "Waiting to fetch trigger URIs until some time after boot. Delay in millis"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_27
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzic;->d(Lqhb;)V

    invoke-virtual {v5}, Lmdb;->zzg()V

    iget-object v0, v5, Lcom/google/android/gms/measurement/internal/zzlj;->l:Lzwb;

    if-nez v0, :cond_28

    iget-object v0, v5, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    new-instance v1, Lzwb;

    invoke-direct {v1, v5, v0}, Lzwb;-><init>(Lcom/google/android/gms/measurement/internal/zzlj;Lpvb;)V

    iput-object v1, v5, Lcom/google/android/gms/measurement/internal/zzlj;->l:Lzwb;

    move-object v0, v1

    :cond_28
    invoke-virtual {v0, v2, v3}, Ltva;->b(J)V

    :cond_29
    iget-object v0, v9, Lhnb;->o:Lcom/google/android/gms/measurement/internal/zzhc;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Z)V

    return-void
.end method
