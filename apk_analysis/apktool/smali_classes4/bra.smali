.class public final Lbra;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhta;


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/zzada;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzada;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbra;->a:Lcom/google/android/gms/internal/measurement/zzada;

    iput-object p0, p1, Lcom/google/android/gms/internal/measurement/zzada;->a:Lbra;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Lnsa;)V
    .locals 2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzacb;

    const/4 v0, 0x2

    iget-object v1, p0, Lbra;->a:Lcom/google/android/gms/internal/measurement/zzada;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/measurement/zzada;->zzb(II)V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/zzacb;->a(Lnsa;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/zzada;->zzr(I)V

    invoke-interface {p3, p2, p0}, Lnsa;->d(Ljava/lang/Object;Lbra;)V

    return-void
.end method

.method public final b(ILjava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/zzacr;

    iget-object p0, p0, Lbra;->a:Lcom/google/android/gms/internal/measurement/zzada;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzada;->zzn(ILcom/google/android/gms/internal/measurement/zzacr;)V

    return-void

    :cond_0
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzafc;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzada;->zzm(ILcom/google/android/gms/internal/measurement/zzafc;)V

    return-void
.end method
