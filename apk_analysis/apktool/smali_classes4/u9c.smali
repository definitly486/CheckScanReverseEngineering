.class public final Lu9c;
.super Ltva;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzok;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzok;Lpvb;)V
    .locals 0

    iput-object p1, p0, Lu9c;->e:Lcom/google/android/gms/measurement/internal/zzok;

    invoke-direct {p0, p2}, Ltva;-><init>(Lpvb;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object p0, p0, Lu9c;->e:Lcom/google/android/gms/measurement/internal/zzok;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzok;->zzf()V

    iget-object v0, p0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzk()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v1, "Starting upload from DelayedRunnable"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    iget-object p0, p0, Ly9c;->b:Lcom/google/android/gms/measurement/internal/zzpg;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->l()V

    return-void
.end method
