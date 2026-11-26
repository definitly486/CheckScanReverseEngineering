.class public abstract Lcom/google/android/gms/internal/measurement/zzabh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/gms/internal/measurement/zzza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzza;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-ltz p2, :cond_0

    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzabh;->a:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzabh;->b:Lcom/google/android/gms/internal/measurement/zzza;

    return-void

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0xf

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "invalid index: "

    invoke-static {p1, p0, p2}, Lag;->d(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "format options cannot be null"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract a(Lcom/google/android/gms/internal/measurement/zzabi;Ljava/lang/Object;)V
.end method

.method public final zzc()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/measurement/zzabh;->a:I

    return p0
.end method

.method public final zze(Lcom/google/android/gms/internal/measurement/zzabi;[Ljava/lang/Object;)V
    .locals 2

    array-length v0, p2

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzabh;->a:I

    if-ge v1, v0, :cond_1

    aget-object p2, p2, v1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzabh;->a(Lcom/google/android/gms/internal/measurement/zzabi;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzabi;->zzf()V

    return-void

    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzabi;->zze()V

    return-void
.end method
