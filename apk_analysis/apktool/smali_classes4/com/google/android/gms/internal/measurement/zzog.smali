.class public final Lcom/google/android/gms/internal/measurement/zzog;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/zzph;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzog;->a:Lcom/google/android/gms/internal/measurement/zzph;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzom;
    .locals 1

    new-instance v0, Ln8c;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzog;->a:Lcom/google/android/gms/internal/measurement/zzph;

    invoke-direct {v0, p1, p0, p2}, Ln8c;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzph;Z)V

    return-object v0
.end method

.method public final zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzom;
    .locals 1

    new-instance v0, Lg9c;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzog;->a:Lcom/google/android/gms/internal/measurement/zzph;

    invoke-direct {v0, p1, p0, p2, p3}, Lg9c;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzph;J)V

    return-object v0
.end method

.method public final zzc(Ljava/lang/String;D)Lcom/google/android/gms/internal/measurement/zzom;
    .locals 0

    new-instance p1, Lr8c;

    const-string p2, "measurement.test.double_flag"

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzog;->a:Lcom/google/android/gms/internal/measurement/zzph;

    invoke-direct {p1, p2, p0}, Ln9c;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzph;)V

    return-object p1
.end method

.method public final zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzom;
    .locals 1

    new-instance v0, Lj9c;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzog;->a:Lcom/google/android/gms/internal/measurement/zzph;

    invoke-direct {v0, p1, p0, p2}, Lj9c;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzph;Ljava/lang/String;)V

    return-object v0
.end method
