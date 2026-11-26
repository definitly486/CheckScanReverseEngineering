.class public final synthetic Ljac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/measurement/zzpg;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzpg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljac;->b:Lcom/google/android/gms/internal/measurement/zzpg;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    iget-object p0, p0, Ljac;->b:Lcom/google/android/gms/internal/measurement/zzpg;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpg;->b:Lcom/google/android/gms/internal/measurement/zzlk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlk;->zzf()Lcom/google/android/gms/internal/measurement/zzqe;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzabz;->zzd:Lcom/google/android/gms/internal/measurement/zzabz;

    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/zzpg;->d:Z

    sget-object v2, Lpac;->a:Lpac;

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gms/internal/measurement/zzqe;->zza(Lcom/google/android/gms/internal/measurement/zzabz;ZLcom/google/android/gms/internal/measurement/zzqc;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method
