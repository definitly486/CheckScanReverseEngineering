.class public final Lh3b;
.super Lz3b;
.source "SourceFile"


# instance fields
.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    invoke-direct {p0, p1}, Lz3b;-><init>([B)V

    add-int v0, p2, p3

    array-length p1, p1

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->n(III)I

    iput p2, p0, Lh3b;->d:I

    iput p3, p0, Lh3b;->e:I

    return-void
.end method


# virtual methods
.method public final a(I)B
    .locals 1

    iget-object v0, p0, Lz3b;->c:[B

    iget p0, p0, Lh3b;->d:I

    add-int/2addr p0, p1

    aget-byte p0, v0, p0

    return p0
.end method

.method public final d(III[B)V
    .locals 1

    iget-object v0, p0, Lz3b;->c:[B

    iget p0, p0, Lh3b;->d:I

    add-int/2addr p0, p1

    invoke-static {v0, p0, p4, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final q()I
    .locals 0

    iget p0, p0, Lh3b;->d:I

    return p0
.end method

.method public final zza(I)B
    .locals 1

    iget v0, p0, Lh3b;->e:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->o(II)V

    iget v0, p0, Lh3b;->d:I

    add-int/2addr v0, p1

    iget-object p0, p0, Lz3b;->c:[B

    aget-byte p0, p0, v0

    return p0
.end method

.method public final zzd()I
    .locals 0

    iget p0, p0, Lh3b;->e:I

    return p0
.end method
