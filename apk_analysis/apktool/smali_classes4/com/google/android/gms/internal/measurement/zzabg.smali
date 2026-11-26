.class public final Lcom/google/android/gms/internal/measurement/zzabg;
.super Lcom/google/android/gms/internal/measurement/zzabh;
.source "SourceFile"


# instance fields
.field public final c:Lcom/google/android/gms/internal/measurement/zzabf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzabf;Lcom/google/android/gms/internal/measurement/zzza;I)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzabh;-><init>(Lcom/google/android/gms/internal/measurement/zzza;I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzabg;->c:Lcom/google/android/gms/internal/measurement/zzabf;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "%"

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/measurement/zzza;->zzl(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    const/4 p3, 0x1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzza;->zzk()Z

    move-result p2

    if-eq p3, p2, :cond_0

    const/16 p2, 0x74

    goto :goto_0

    :cond_0
    const/16 p2, 0x54

    :goto_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzabf;->zzb()C

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/measurement/zzabf;Lcom/google/android/gms/internal/measurement/zzza;I)Lcom/google/android/gms/internal/measurement/zzabh;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzabg;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzabg;-><init>(Lcom/google/android/gms/internal/measurement/zzabf;Lcom/google/android/gms/internal/measurement/zzza;I)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/measurement/zzabi;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzabg;->c:Lcom/google/android/gms/internal/measurement/zzabf;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzabh;->b:Lcom/google/android/gms/internal/measurement/zzza;

    invoke-interface {p1, p2, v0, p0}, Lcom/google/android/gms/internal/measurement/zzabi;->zzd(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzabf;Lcom/google/android/gms/internal/measurement/zzza;)V

    return-void
.end method
