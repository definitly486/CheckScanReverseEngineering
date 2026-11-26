.class public final Lwac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldlb;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzpj;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/zzpg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzpg;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzpj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lwac;->a:Ljava/lang/String;

    iput-object p3, p0, Lwac;->b:Lcom/google/android/gms/measurement/internal/zzpj;

    iput-object p1, p0, Lwac;->c:Lcom/google/android/gms/measurement/internal/zzpg;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 3

    iget-object p1, p0, Lwac;->c:Lcom/google/android/gms/measurement/internal/zzpg;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaX()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object p5

    invoke-virtual {p5}, Lcom/google/android/gms/measurement/internal/zzhz;->zzg()V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzpg;->Z()V

    const/4 p5, 0x0

    if-nez p4, :cond_0

    :try_start_0
    new-array p4, p5, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    :goto_0
    const/16 v0, 0xc8

    iget-object v1, p0, Lwac;->b:Lcom/google/android/gms/measurement/internal/zzpj;

    iget-object p0, p0, Lwac;->a:Ljava/lang/String;

    if-eq p2, v0, :cond_1

    const/16 v0, 0xcc

    if-ne p2, v0, :cond_3

    move p2, v0

    :cond_1
    if-nez p3, :cond_3

    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lkva;

    move-result-object p3

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpj;->zzc()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p3, p4}, Lkva;->e(Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p3

    const-string p4, "Successfully uploaded batch from upload queue. appId, status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p4, p0, p2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzi()Lcom/google/android/gms/measurement/internal/zzgz;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgz;->zzb()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lkva;

    move-result-object p2

    invoke-virtual {p2, p0}, Lkva;->zzD(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/zzpg;->o(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzpg;->H()V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p4, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p4

    const/16 v2, 0x20

    invoke-static {v2, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    invoke-virtual {v0, p5, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzh()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v2, "Network upload failed. Will retry later. appId, status, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    if-nez p3, :cond_4

    move-object p3, p4

    :cond_4
    invoke-virtual {v0, v2, p0, p2, p3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lkva;

    move-result-object p0

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpj;->zzc()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p2}, Lkva;->j(Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzpg;->H()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iput-boolean p5, p1, Lcom/google/android/gms/measurement/internal/zzpg;->u:Z

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzpg;->I()V

    return-void

    :goto_2
    iput-boolean p5, p1, Lcom/google/android/gms/measurement/internal/zzpg;->u:Z

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzpg;->I()V

    throw p0
.end method
