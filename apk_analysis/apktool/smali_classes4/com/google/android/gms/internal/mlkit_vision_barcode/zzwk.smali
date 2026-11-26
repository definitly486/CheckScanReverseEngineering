.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;

.field public final synthetic zzc:Lvxb;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;Lvxb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwk;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwk;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwk;->zzc:Lvxb;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwk;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwk;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwk;->zzc:Lvxb;

    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->j:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcy;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdg;->zzw()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v3, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcy;->zze(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v7, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqb;

    invoke-direct {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqb;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const-wide/16 v9, 0x0

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    add-long/2addr v9, v11

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    int-to-long v11, v8

    div-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqb;->zza(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqb;

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->a(Ljava/util/ArrayList;D)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqb;->zzc(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqb;

    const-wide v8, 0x4052c00000000000L    # 75.0

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->a(Ljava/util/ArrayList;D)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqb;->zzf(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqb;

    const-wide/high16 v8, 0x4049000000000000L    # 50.0

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->a(Ljava/util/ArrayList;D)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqb;->zzd(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqb;

    const-wide/high16 v8, 0x4039000000000000L    # 25.0

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->a(Ljava/util/ArrayList;D)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqb;->zzb(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqb;

    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->a(Ljava/util/ArrayList;D)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqb;->zze(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqb;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqb;->zzg()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqd;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v8, p0, Lvxb;->a:Lm1c;

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzft;

    new-instance v9, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrd;

    invoke-direct {v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrd;-><init>()V

    iget-boolean v8, v8, Lm1c;->i:Z

    if-eqz v8, :cond_1

    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;

    goto :goto_2

    :cond_1
    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;

    :goto_2
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrd;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrd;

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfq;

    invoke-direct {v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfq;-><init>()V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfq;->zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfq;

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzft;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfq;

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfq;->zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqd;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfq;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfq;->zze()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfv;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrd;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfv;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrd;

    invoke-static {v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzws;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrd;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwe;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwe;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method
