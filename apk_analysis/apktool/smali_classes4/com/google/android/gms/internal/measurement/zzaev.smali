.class public final Lcom/google/android/gms/internal/measurement/zzaev;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lwra;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzagm;Lcom/google/android/gms/internal/measurement/zzagm;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lwra;

    invoke-direct {v0, p1, p2, p3}, Lwra;-><init>(Lcom/google/android/gms/internal/measurement/zzagm;Lcom/google/android/gms/internal/measurement/zzagm;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaev;->a:Lwra;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/measurement/zzagm;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzagm;Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzaev;
    .locals 0

    new-instance p1, Lcom/google/android/gms/internal/measurement/zzaev;

    invoke-direct {p1, p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzaev;-><init>(Lcom/google/android/gms/internal/measurement/zzagm;Lcom/google/android/gms/internal/measurement/zzagm;Ljava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public final zzd(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    shl-int/lit8 p1, p1, 0x3

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzada;->zzE(I)I

    move-result p1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzaev;->a:Lwra;

    iget-object v0, p0, Lwra;->a:Lcom/google/android/gms/internal/measurement/zzagm;

    iget-object p0, p0, Lwra;->b:Lcom/google/android/gms/internal/measurement/zzagm;

    const/4 v1, 0x1

    invoke-static {v0, v1, p2}, Lgra;->f(Lcom/google/android/gms/internal/measurement/zzagm;ILjava/lang/Object;)I

    move-result p2

    const/4 v0, 0x2

    invoke-static {p0, v0, p3}, Lgra;->f(Lcom/google/android/gms/internal/measurement/zzagm;ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p0, p2

    invoke-static {p0, p0, p1}, Ldq;->b(III)I

    move-result p0

    return p0
.end method
