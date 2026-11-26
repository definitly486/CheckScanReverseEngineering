.class public final Lndc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:Ljava/lang/String;

.field public c:I

.field public final d:Ljava/lang/CharSequence;

.field public final e:Z

.field public f:I

.field public g:I

.field public final synthetic h:Lcom/google/android/gms/internal/common/zzp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/common/zzw;Ljava/lang/CharSequence;Lcom/google/android/gms/internal/common/zzp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lndc;->h:Lcom/google/android/gms/internal/common/zzp;

    const/4 p3, 0x2

    iput p3, p0, Lndc;->c:I

    const/4 p3, 0x0

    iput p3, p0, Lndc;->f:I

    iget-boolean p1, p1, Lcom/google/android/gms/internal/common/zzw;->b:Z

    iput-boolean p1, p0, Lndc;->e:Z

    const p1, 0x7fffffff

    iput p1, p0, Lndc;->g:I

    iput-object p2, p0, Lndc;->d:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 11

    iget v0, p0, Lndc;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/common/zzr;->zza(Z)V

    iget v0, p0, Lndc;->c:I

    add-int/lit8 v4, v0, -0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_e

    if-eqz v4, :cond_d

    const/4 v0, 0x2

    if-eq v4, v0, :cond_c

    iput v3, p0, Lndc;->c:I

    iget v0, p0, Lndc;->f:I

    :cond_1
    :goto_1
    iget v3, p0, Lndc;->f:I

    const/4 v4, 0x3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_b

    iget-object v7, p0, Lndc;->d:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const-string v9, "index"

    invoke-static {v3, v8, v9}, Lcom/google/android/gms/internal/common/zzr;->zzc(IILjava/lang/String;)I

    :goto_2
    if-ge v3, v8, :cond_3

    iget-object v9, p0, Lndc;->h:Lcom/google/android/gms/internal/common/zzp;

    invoke-interface {v7, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/common/zzp;->zza(C)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move v3, v6

    :goto_3
    if-ne v3, v6, :cond_4

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iput v6, p0, Lndc;->f:I

    move v8, v6

    goto :goto_4

    :cond_4
    add-int/lit8 v8, v3, 0x1

    iput v8, p0, Lndc;->f:I

    :goto_4
    if-ne v8, v0, :cond_5

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lndc;->f:I

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v8, v3, :cond_1

    iput v6, p0, Lndc;->f:I

    goto :goto_1

    :cond_5
    if-ge v0, v3, :cond_6

    invoke-interface {v7, v0}, Ljava/lang/CharSequence;->charAt(I)C

    :cond_6
    if-ge v0, v3, :cond_7

    add-int/lit8 v8, v3, -0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    :cond_7
    iget-boolean v8, p0, Lndc;->e:Z

    if-eqz v8, :cond_8

    if-ne v0, v3, :cond_8

    iget v0, p0, Lndc;->f:I

    goto :goto_1

    :cond_8
    iget v5, p0, Lndc;->g:I

    if-ne v5, v2, :cond_9

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iput v6, p0, Lndc;->f:I

    if-le v3, v0, :cond_a

    add-int/lit8 v5, v3, -0x1

    invoke-interface {v7, v5}, Ljava/lang/CharSequence;->charAt(I)C

    goto :goto_5

    :cond_9
    add-int/2addr v5, v6

    iput v5, p0, Lndc;->g:I

    :cond_a
    :goto_5
    invoke-interface {v7, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_b
    iput v4, p0, Lndc;->c:I

    :goto_6
    iput-object v5, p0, Lndc;->b:Ljava/lang/String;

    iget v0, p0, Lndc;->c:I

    if-eq v0, v4, :cond_c

    iput v2, p0, Lndc;->c:I

    return v2

    :cond_c
    return v1

    :cond_d
    return v2

    :cond_e
    throw v5
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lndc;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lndc;->c:I

    iget-object v0, p0, Lndc;->b:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lndc;->b:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-static {}, Lqz0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
