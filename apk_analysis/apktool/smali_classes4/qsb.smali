.class public final Lqsb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzr;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/zzjd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzjd;Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lqsb;->b:Lcom/google/android/gms/measurement/internal/zzr;

    iput-object p1, p0, Lqsb;->c:Lcom/google/android/gms/measurement/internal/zzjd;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lqsb;->c:Lcom/google/android/gms/measurement/internal/zzjd;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjd;->a:Lcom/google/android/gms/measurement/internal/zzpg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->Q()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzaX()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhz;->zzg()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->Z()V

    iget-object p0, p0, Lqsb;->b:Lcom/google/android/gms/measurement/internal/zzr;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzr;->zza:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/zzpg;->a0(Lcom/google/android/gms/measurement/internal/zzr;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/zzpg;->b0(Lcom/google/android/gms/measurement/internal/zzr;)V

    return-void
.end method
