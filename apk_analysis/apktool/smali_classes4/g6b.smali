.class public final Lg6b;
.super Lcbb;
.source "SourceFile"


# instance fields
.field public final synthetic f:Landroid/content/Context;

.field public final synthetic g:Landroid/os/Bundle;

.field public final synthetic h:Lcom/google/android/gms/internal/measurement/zzez;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzez;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    iput-object p2, p0, Lg6b;->f:Landroid/content/Context;

    iput-object p3, p0, Lg6b;->g:Landroid/os/Bundle;

    iput-object p1, p0, Lg6b;->h:Lcom/google/android/gms/internal/measurement/zzez;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcbb;-><init>(Lcom/google/android/gms/internal/measurement/zzez;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 22

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    iget-object v4, v1, Lg6b;->f:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/firebase/analytics/zzg;->zza()Lcom/google/firebase/analytics/zzg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/analytics/zzg;->zzb()Lcom/google/firebase/analytics/zze;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzhu;->zza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "google_analytics_force_disable_updates"

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzhu;->zza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_8

    :cond_0
    :goto_0
    invoke-static {v5, v6, v0}, Lcom/google/android/gms/measurement/internal/zzhu;->zzc(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v6, v1, Lg6b;->h:Lcom/google/android/gms/internal/measurement/zzez;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    const-string v7, "com.google.android.gms.measurement.dynamite"

    if-eqz v0, :cond_3

    :try_start_1
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_LOCAL_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_3
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_LOCAL:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    :goto_2
    invoke-static {v4, v0, v7}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v0

    const-string v8, "com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"

    invoke-virtual {v0, v8}, Lcom/google/android/gms/dynamite/DynamiteModule;->instantiate(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzco;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/zzcp;

    move-result-object v0
    :try_end_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_3
    :try_start_2
    invoke-virtual {v6, v0, v3, v2}, Lcom/google/android/gms/internal/measurement/zzez;->b(Ljava/lang/Exception;ZZ)V

    const/4 v0, 0x0

    :goto_4
    iput-object v0, v6, Lcom/google/android/gms/internal/measurement/zzez;->h:Lcom/google/android/gms/internal/measurement/zzcp;

    iget-object v0, v6, Lcom/google/android/gms/internal/measurement/zzez;->h:Lcom/google/android/gms/internal/measurement/zzcp;

    if-nez v0, :cond_4

    const-string v0, "FA"

    const-string v4, "Failed to connect to measurement client."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_4
    invoke-static {v4, v7}, Lcom/google/android/gms/dynamite/DynamiteModule;->getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v4, v7}, Lcom/google/android/gms/dynamite/DynamiteModule;->getRemoteVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    if-ge v7, v0, :cond_6

    :cond_5
    move v14, v3

    goto :goto_5

    :cond_6
    move v14, v2

    :goto_5
    int-to-long v12, v8

    iput-wide v12, v6, Lcom/google/android/gms/internal/measurement/zzez;->i:J

    new-instance v17, Lcom/google/android/gms/internal/measurement/zzdb;

    iget-object v15, v1, Lg6b;->g:Landroid/os/Bundle;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzhu;->zza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    const-wide/32 v10, 0x274e8

    move-object/from16 v9, v17

    invoke-direct/range {v9 .. v16}, Lcom/google/android/gms/internal/measurement/zzdb;-><init>(JJZLandroid/os/Bundle;Ljava/lang/String;)V

    iget-wide v7, v6, Lcom/google/android/gms/internal/measurement/zzez;->i:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-wide/16 v9, 0xa9

    cmp-long v0, v7, v9

    if-ltz v0, :cond_7

    move v0, v3

    goto :goto_6

    :cond_7
    move v0, v2

    :goto_6
    iget-object v5, v6, Lcom/google/android/gms/internal/measurement/zzez;->h:Lcom/google/android/gms/internal/measurement/zzcp;

    if-eqz v0, :cond_8

    :try_start_3
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/google/android/gms/internal/measurement/zzcp;

    invoke-static {v4}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v16

    iget-wide v4, v1, Lcbb;->b:J

    iget-wide v6, v1, Lcbb;->c:J

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    invoke-interface/range {v15 .. v21}, Lcom/google/android/gms/internal/measurement/zzcp;->initializeWithElapsedTime(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/measurement/zzdb;JJ)V

    goto :goto_7

    :cond_8
    move-object/from16 v9, v17

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcp;

    invoke-static {v4}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v4

    iget-wide v5, v1, Lcbb;->b:J

    invoke-interface {v0, v4, v9, v5, v6}, Lcom/google/android/gms/internal/measurement/zzcp;->initialize(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/measurement/zzdb;J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_7
    return-void

    :goto_8
    iget-object v1, v1, Lg6b;->h:Lcom/google/android/gms/internal/measurement/zzez;

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/internal/measurement/zzez;->b(Ljava/lang/Exception;ZZ)V

    return-void
.end method
