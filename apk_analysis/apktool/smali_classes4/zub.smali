.class public final synthetic Lzub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzjd;

.field public final synthetic c:Landroid/os/Bundle;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzr;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzjd;Landroid/os/Bundle;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzub;->b:Lcom/google/android/gms/measurement/internal/zzjd;

    iput-object p2, p0, Lzub;->c:Landroid/os/Bundle;

    iput-object p3, p0, Lzub;->d:Ljava/lang/String;

    iput-object p4, p0, Lzub;->e:Lcom/google/android/gms/measurement/internal/zzr;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v11, p0, Lzub;->c:Landroid/os/Bundle;

    invoke-virtual {v11}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lzub;->b:Lcom/google/android/gms/measurement/internal/zzjd;

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzjd;->a:Lcom/google/android/gms/measurement/internal/zzpg;

    iget-object v3, p0, Lzub;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lkva;

    move-result-object p0

    invoke-virtual {p0}, Ljvb;->zzg()V

    invoke-virtual {p0}, Llac;->a()V

    :try_start_0
    invoke-virtual {p0}, Lkva;->M()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "delete from default_event_params where app_id=?"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object p0, p0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p0

    const-string v1, "Error clearing default event params"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lkva;

    move-result-object v13

    invoke-virtual {v13}, Ljvb;->zzg()V

    iget-object v14, v13, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v13}, Llac;->a()V

    iget-object v1, v13, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbc;

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-string v2, ""

    const-string v4, "dep"

    const-wide/16 v5, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/measurement/internal/zzbc;-><init>(Lcom/google/android/gms/measurement/internal/zzic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLandroid/os/Bundle;)V

    iget-object v1, v13, Ly9c;->b:Lcom/google/android/gms/measurement/internal/zzpg;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzp()Lcom/google/android/gms/measurement/internal/zzpk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzpk;->w(Lcom/google/android/gms/measurement/internal/zzbc;)Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzacb;->zzcd()[B

    move-result-object v0

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    array-length v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Saving default event parameters, appId, data size"

    invoke-virtual {v1, v4, v3, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "parameters"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v13}, Lkva;->M()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v4, "default_event_params"

    const/4 v5, 0x5

    invoke-virtual {v0, v4, v2, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v1, "Failed to insert default event parameters (got -1). appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzgu;->d(Ljava/lang/String;)Lqkb;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzgu;->d(Ljava/lang/String;)Lqkb;

    move-result-object v4

    const-string v5, "Error storing default event parameters. appId"

    invoke-virtual {v1, v5, v4, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lkva;

    move-result-object v1

    iget-object p0, p0, Lzub;->e:Lcom/google/android/gms/measurement/internal/zzr;

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzr;->zzD:J

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    const-string p0, "select count(*) from raw_events where app_id=? and timestamp >= ? and name not like \'!_%\' escape \'!\' limit 1;"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v3, v0}, [Ljava/lang/String;

    move-result-object v0

    const-wide/16 v6, 0x0

    invoke-virtual {v1, p0, v0, v6, v7}, Lkva;->u(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long p0, v8, v6

    if-lez p0, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, "select count(*) from raw_events where app_id=? and timestamp >= ? and name like \'!_%\' escape \'!\' limit 1;"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v3, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0, v6, v7}, Lkva;->u(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    cmp-long p0, v0, v6

    if-lez p0, :cond_3

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lkva;

    move-result-object p0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v3, v0, v2, v11}, Lkva;->q(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :catch_2
    move-exception v0

    move-object p0, v0

    iget-object v0, v1, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v1, "Error checking backfill conditions"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method
