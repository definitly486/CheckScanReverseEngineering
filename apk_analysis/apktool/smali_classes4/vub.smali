.class public final synthetic Lvub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lvub;->b:I

    iput-object p1, p0, Lvub;->c:Ljava/lang/Object;

    iput-object p2, p0, Lvub;->d:Ljava/lang/Object;

    iput-object p3, p0, Lvub;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 33

    move-object/from16 v0, p0

    iget v1, v0, Lvub;->b:I

    iget-object v2, v0, Lvub;->e:Ljava/lang/Object;

    iget-object v3, v0, Lvub;->d:Ljava/lang/Object;

    iget-object v0, v0, Lvub;->c:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzvm;

    check-cast v3, Lnr7;

    check-cast v2, Lxfc;

    :try_start_0
    invoke-static {v3}, Len3;->V(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzvm;->f:Lnr7;

    invoke-virtual {v0, v1}, Ll0;->l(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0}, Ll0;->n(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    goto :goto_0

    :catchall_0
    invoke-virtual {v2, v3}, Ll0;->n(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    :goto_0
    return-void

    :pswitch_0
    check-cast v0, Lcom/google/android/gms/measurement/internal/zzjd;

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzr;

    check-cast v2, Lcom/google/android/gms/measurement/internal/zzaf;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzjd;->a:Lcom/google/android/gms/measurement/internal/zzpg;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->Q()V

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzpg;->E:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaX()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->zzg()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->Z()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lkva;

    move-result-object v5

    iget-wide v7, v2, Lcom/google/android/gms/measurement/internal/zzaf;->zza:J

    invoke-virtual {v5}, Ljvb;->zzg()V

    invoke-virtual {v5}, Llac;->a()V

    const/4 v6, 0x1

    const/16 v20, 0x0

    :try_start_1
    invoke-virtual {v5}, Lkva;->M()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    const-string v10, "upload_queue"

    const-string v21, "rowId"

    const-string v22, "app_id"

    const-string v23, "measurement_batch"

    const-string v24, "upload_uri"

    const-string v25, "upload_headers"

    const-string v26, "upload_type"

    const-string v27, "retry_count"

    const-string v28, "creation_timestamp"

    const-string v29, "associated_row_id"

    const-string v30, "last_upload_timestamp"

    filled-new-array/range {v21 .. v30}, [Ljava/lang/String;

    move-result-object v11

    const-string v12, "rowId=?"

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v13

    const-string v17, "1"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v9 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    move/from16 v22, v6

    goto/16 :goto_4

    :cond_0
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v10, 0x2

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    const/4 v11, 0x3

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x4

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x5

    invoke-interface {v9, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v14, 0x6

    invoke-interface {v9, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v15, 0x7

    invoke-interface {v9, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v6, 0x8

    :try_start_3
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    const/16 v6, 0x9

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-wide/from16 v31, v21

    move-object/from16 v21, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move v12, v13

    move v13, v14

    move-wide v14, v15

    move-wide/from16 v16, v17

    move-wide/from16 v18, v31

    move-object v6, v0

    const/16 v22, 0x1

    :try_start_4
    invoke-virtual/range {v5 .. v19}, Lkva;->A(Ljava/lang/String;J[BLjava/lang/String;Ljava/lang/String;IIJJJ)Lcom/google/android/gms/measurement/internal/zzpj;

    move-result-object v20
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object/from16 v21, v9

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v21, v9

    const/16 v22, 0x1

    goto :goto_2

    :catch_2
    move-exception v0

    move/from16 v22, v6

    move-object/from16 v21, v9

    goto :goto_2

    :goto_1
    move-object/from16 v20, v21

    goto/16 :goto_a

    :goto_2
    move-object/from16 v9, v21

    goto :goto_3

    :catchall_3
    move-exception v0

    goto/16 :goto_a

    :catch_3
    move-exception v0

    move/from16 v22, v6

    move-object/from16 v9, v20

    :goto_3
    :try_start_5
    iget-object v5, v5, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v5

    const-string v6, "Error to querying MeasurementBatch from upload_queue. rowId"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v6, v10, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :goto_4
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_5
    if-nez v20, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "[sgtm] Queued batch doesn\'t exist. appId, rowId"

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_2
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/measurement/internal/zzpj;->zze()Ljava/lang/String;

    move-result-object v0

    iget v5, v2, Lcom/google/android/gms/measurement/internal/zzaf;->zzb:I

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzlr;->zzb:Lcom/google/android/gms/measurement/internal/zzlr;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzlr;->zza()I

    move-result v6

    if-ne v5, v6, :cond_5

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lkva;

    move-result-object v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lkva;->e(Ljava/lang/Long;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v5, "[sgtm] queued batch deleted after successful client upload. appId, rowId"

    invoke-virtual {v0, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-wide v4, v2, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_8

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lkva;

    move-result-object v0

    invoke-virtual {v0}, Ljvb;->zzg()V

    iget-object v6, v0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v0}, Llac;->a()V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzls;->zzb:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzls;->zza()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "upload_type"

    invoke-virtual {v8, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzic;->zzba()Lcom/google/android/gms/common/util/Clock;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v10, "creation_timestamp"

    invoke-virtual {v8, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_6
    invoke-virtual {v0}, Lkva;->M()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v9, "upload_queue"

    const-string v10, "rowid=? AND app_id=? AND upload_type=?"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzls;->zze:Lcom/google/android/gms/measurement/internal/zzls;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzls;->zza()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    filled-new-array {v11, v3, v12}, [Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v9, v8, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v8, v0

    const-wide/16 v10, 0x1

    cmp-long v0, v8, v10

    if-eqz v0, :cond_4

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v8, "Google Signal pending batch not updated. appId, rowId"

    invoke-virtual {v0, v8, v3, v7}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_7

    :cond_4
    :goto_6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    iget-wide v4, v2, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "[sgtm] queued Google Signal batch updated. appId, signalRowId"

    invoke-virtual {v0, v4, v3, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzpg;->o(Ljava/lang/String;)V

    goto :goto_9

    :goto_7
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "Failed to update google Signal pending batch. appid, rowId"

    invoke-virtual {v1, v4, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0

    :cond_5
    iget v5, v2, Lcom/google/android/gms/measurement/internal/zzaf;->zzb:I

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzlr;->zzd:Lcom/google/android/gms/measurement/internal/zzlr;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzlr;->zza()I

    move-result v6

    if-ne v5, v6, :cond_7

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpbc;

    if-nez v5, :cond_6

    new-instance v5, Lpbc;

    invoke-direct {v5, v1}, Lpbc;-><init>(Lcom/google/android/gms/measurement/internal/zzpg;)V

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_6
    iget v4, v5, Lpbc;->b:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v5, Lpbc;->b:I

    invoke-virtual {v5}, Lpbc;->a()J

    move-result-wide v6

    iput-wide v6, v5, Lpbc;->c:J

    :goto_8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzba()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v4, v5, Lpbc;->c:J

    sub-long/2addr v4, v6

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v6

    const-wide/16 v7, 0x3e8

    div-long/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "[sgtm] Putting sGTM server in backoff mode. appId, destination, nextRetryInSeconds"

    invoke-virtual {v6, v5, v3, v0, v4}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lkva;

    move-result-object v0

    iget-wide v4, v2, Lcom/google/android/gms/measurement/internal/zzaf;->zza:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkva;->j(Ljava/lang/Long;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v1, "[sgtm] increased batch retry count after failed client upload. appId, rowId"

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    :goto_9
    return-void

    :catchall_4
    move-exception v0

    move-object/from16 v20, v9

    :goto_a
    if-eqz v20, :cond_9

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
