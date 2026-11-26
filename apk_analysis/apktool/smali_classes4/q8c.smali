.class public final Lq8c;
.super Ltva;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lc9c;


# direct methods
.method public constructor <init>(Lc9c;Lpvb;)V
    .locals 0

    iput-object p1, p0, Lq8c;->e:Lc9c;

    invoke-direct {p0, p2}, Ltva;-><init>(Lpvb;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object p0, p0, Lq8c;->e:Lc9c;

    iget-object v0, p0, Lc9c;->d:Lcom/google/android/gms/measurement/internal/zzoc;

    invoke-virtual {v0}, Lmdb;->zzg()V

    iget-object v0, v0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzba()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v3}, Lc9c;->a(JZZ)Z

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzw()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object p0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzba()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzd;->zzc(J)V

    return-void
.end method
