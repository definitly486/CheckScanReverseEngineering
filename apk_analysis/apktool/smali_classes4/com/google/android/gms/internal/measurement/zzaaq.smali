.class public final Lcom/google/android/gms/internal/measurement/zzaaq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzaai;


# instance fields
.field public final a:Ljava/util/logging/Level;

.field public final b:Ljava/util/Set;

.field public final c:Lcom/google/android/gms/internal/measurement/zzzq;


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaas;->f:Ljava/util/Set;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzaas;->g:Lcom/google/android/gms/internal/measurement/zzzq;

    sget-object v2, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzaaq;-><init>(Ljava/util/logging/Level;Ljava/util/Set;Lcom/google/android/gms/internal/measurement/zzzq;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/logging/Level;Ljava/util/Set;Lcom/google/android/gms/internal/measurement/zzzq;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzaaq;->a:Ljava/util/logging/Level;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzaaq;->b:Ljava/util/Set;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzaaq;->c:Lcom/google/android/gms/internal/measurement/zzzq;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzzf;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaas;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzaaq;->a:Ljava/util/logging/Level;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzaaq;->b:Ljava/util/Set;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzaaq;->c:Lcom/google/android/gms/internal/measurement/zzzq;

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/google/android/gms/internal/measurement/zzaas;-><init>(Ljava/lang/String;Ljava/util/logging/Level;Ljava/util/Set;Lcom/google/android/gms/internal/measurement/zzzq;)V

    return-object v0
.end method

.method public final zzb(Z)Lcom/google/android/gms/internal/measurement/zzaaq;
    .locals 2

    new-instance p1, Lcom/google/android/gms/internal/measurement/zzaaq;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaaq;->c:Lcom/google/android/gms/internal/measurement/zzzq;

    sget-object v1, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzaaq;->b:Ljava/util/Set;

    invoke-direct {p1, v1, p0, v0}, Lcom/google/android/gms/internal/measurement/zzaaq;-><init>(Ljava/util/logging/Level;Ljava/util/Set;Lcom/google/android/gms/internal/measurement/zzzq;)V

    return-object p1
.end method
