.class public final Ly7b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/auth/zzea;


# instance fields
.field public b:I

.field public final c:I

.field public final synthetic d:Lcom/google/android/gms/internal/auth/zzef;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auth/zzef;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly7b;->d:Lcom/google/android/gms/internal/auth/zzef;

    const/4 v0, 0x0

    iput v0, p0, Ly7b;->b:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth/zzef;->zzd()I

    move-result p1

    iput p1, p0, Ly7b;->c:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Ly7b;->b:I

    iget p0, p0, Ly7b;->c:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ly7b;->zza()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final zza()B
    .locals 2

    iget v0, p0, Ly7b;->b:I

    iget v1, p0, Ly7b;->c:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ly7b;->b:I

    iget-object p0, p0, Ly7b;->d:Lcom/google/android/gms/internal/auth/zzef;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/auth/zzef;->a(I)B

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lqz0;->e()V

    const/4 p0, 0x0

    return p0
.end method
