.class public final Lcom/google/android/gms/internal/measurement/zzabt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final c:Ltpa;


# instance fields
.field public b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltpa;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzabt;->c:Ltpa;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzabt;->b:I

    return-void
.end method

.method public static zza()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzabt;->c:Ltpa;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzabt;

    iget v0, v0, Lcom/google/android/gms/internal/measurement/zzabt;->b:I

    return v0
.end method

.method public static zzc()Lcom/google/android/gms/internal/measurement/zzabt;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzabt;->c:Ltpa;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzabt;

    iget v1, v0, Lcom/google/android/gms/internal/measurement/zzabt;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/measurement/zzabt;->b:I

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "Overflow of RecursionDepth (possible error in core library)"

    invoke-static {v0}, Lxg;->d(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzabt;->b:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzabt;->b:I

    return-void

    :cond_0
    const-string p0, "Mismatched calls to RecursionDepth (possible error in core library)"

    invoke-static {p0}, Lxg;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzabt;->b:I

    return p0
.end method
