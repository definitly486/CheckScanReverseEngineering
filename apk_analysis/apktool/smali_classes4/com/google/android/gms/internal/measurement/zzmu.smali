.class public final Lcom/google/android/gms/internal/measurement/zzmu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final b:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmu;->b:Ljava/util/zip/Inflater;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzmu;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzmu;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzmu;->b:Ljava/util/zip/Inflater;

    invoke-virtual {p0}, Ljava/util/zip/Inflater;->end()V

    return-void
.end method

.method public final zzb([BLcom/google/android/gms/internal/measurement/zzmt;)Ljava/lang/Object;
    .locals 0

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzmu;->b:Ljava/util/zip/Inflater;

    invoke-virtual {p2, p1}, Ljava/util/zip/Inflater;->setInput([B)V

    :try_start_0
    new-instance p1, Lo5c;

    invoke-direct {p1, p0}, Lo5c;-><init>(Lcom/google/android/gms/internal/measurement/zzmu;)V

    const/16 p0, 0x1000

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/zzacv;->zzM(Ljava/io/InputStream;I)Lcom/google/android/gms/internal/measurement/zzacv;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzmw;->zzd(Lcom/google/android/gms/internal/measurement/zzacv;)Lcom/google/android/gms/internal/measurement/zzmw;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Ljava/util/zip/Inflater;->reset()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Ljava/util/zip/Inflater;->reset()V

    throw p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/measurement/zzacv;Lcom/google/android/gms/internal/measurement/zzmt;)Ljava/lang/Object;
    .locals 4

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzmu;->b:Ljava/util/zip/Inflater;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzacv;->zzF()I

    move-result v0

    const/16 v1, 0x1000

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    :try_start_0
    new-instance v2, Ljava/util/zip/InflaterInputStream;

    new-instance v3, Lr5c;

    invoke-direct {v3, p0, p1}, Lr5c;-><init>(Lcom/google/android/gms/internal/measurement/zzmu;Lcom/google/android/gms/internal/measurement/zzacv;)V

    invoke-direct {v2, v3, p2, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/zzacv;->zzM(Ljava/io/InputStream;I)Lcom/google/android/gms/internal/measurement/zzacv;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzmw;->zzd(Lcom/google/android/gms/internal/measurement/zzacv;)Lcom/google/android/gms/internal/measurement/zzmw;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Ljava/util/zip/Inflater;->reset()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Ljava/util/zip/Inflater;->reset()V

    throw p0
.end method
