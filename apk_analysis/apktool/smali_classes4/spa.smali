.class public final Lspa;
.super Lcom/google/android/gms/internal/measurement/zzabh;
.source "SourceFile"


# virtual methods
.method public final a(Lcom/google/android/gms/internal/measurement/zzabi;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzyz;->zzf:Lcom/google/android/gms/internal/measurement/zzyz;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzabh;->b:Lcom/google/android/gms/internal/measurement/zzza;

    invoke-interface {p1, p2, v0, p0}, Lcom/google/android/gms/internal/measurement/zzabi;->zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzyz;Lcom/google/android/gms/internal/measurement/zzza;)V

    return-void
.end method
