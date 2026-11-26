.class public final Lzm5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lzm5;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[I)V
    .locals 13

    iget-object p0, p0, Lzm5;->b:Ljava/lang/Object;

    check-cast p0, Lgp3;

    array-length v0, p2

    if-eqz v0, :cond_1c

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    aget v3, p2, v1

    if-nez v3, :cond_2

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    aget v4, p2, v3

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-ne v3, v0, :cond_1

    filled-new-array {v1}, [I

    move-result-object v0

    goto :goto_1

    :cond_1
    sub-int/2addr v0, v3

    new-array v4, v0, [I

    invoke-static {p2, v3, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v4

    goto :goto_1

    :cond_2
    move-object v0, p2

    :goto_1
    new-array v3, p1, [I

    move v4, v1

    move v5, v2

    :goto_2
    if-ge v4, p1, :cond_8

    iget v6, p0, Lgp3;->g:I

    add-int/2addr v6, v4

    iget-object v7, p0, Lgp3;->a:[I

    aget v6, v7, v6

    if-nez v6, :cond_3

    array-length v6, v0

    sub-int/2addr v6, v2

    aget v6, v0, v6

    goto :goto_5

    :cond_3
    array-length v7, v0

    if-ne v6, v2, :cond_5

    array-length v6, v0

    move v7, v1

    move v8, v7

    :goto_3
    if-ge v8, v6, :cond_4

    aget v9, v0, v8

    sget-object v10, Lgp3;->h:Lgp3;

    xor-int/2addr v7, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    move v6, v7

    goto :goto_5

    :cond_5
    aget v8, v0, v1

    move v9, v2

    :goto_4
    if-ge v9, v7, :cond_6

    invoke-virtual {p0, v6, v8}, Lgp3;->c(II)I

    move-result v8

    aget v10, v0, v9

    xor-int/2addr v8, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_6
    move v6, v8

    :goto_5
    add-int/lit8 v7, p1, -0x1

    sub-int/2addr v7, v4

    aput v6, v3, v7

    if-eqz v6, :cond_7

    move v5, v1

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    if-eqz v5, :cond_9

    goto/16 :goto_f

    :cond_9
    new-instance v0, Lhp3;

    invoke-direct {v0, p0, v3}, Lhp3;-><init>(Lgp3;[I)V

    invoke-virtual {p0, p1, v2}, Lgp3;->a(II)Lhp3;

    move-result-object v3

    iget-object v4, p0, Lgp3;->c:Lhp3;

    invoke-virtual {v3}, Lhp3;->d()I

    move-result v5

    invoke-virtual {v0}, Lhp3;->d()I

    move-result v6

    if-ge v5, v6, :cond_a

    goto :goto_6

    :cond_a
    move-object v12, v3

    move-object v3, v0

    move-object v0, v12

    :goto_6
    iget-object v5, p0, Lgp3;->d:Lhp3;

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    move-object v6, v4

    :goto_7
    invoke-virtual {v0}, Lhp3;->d()I

    move-result v7

    div-int/lit8 v8, p1, 0x2

    if-lt v7, v8, :cond_e

    invoke-virtual {v0}, Lhp3;->e()Z

    move-result v7

    if-nez v7, :cond_d

    invoke-virtual {v0}, Lhp3;->d()I

    move-result v7

    invoke-virtual {v0, v7}, Lhp3;->c(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lgp3;->b(I)I

    move-result v7

    move-object v8, v4

    :goto_8
    invoke-virtual {v3}, Lhp3;->d()I

    move-result v9

    invoke-virtual {v0}, Lhp3;->d()I

    move-result v10

    if-lt v9, v10, :cond_b

    invoke-virtual {v3}, Lhp3;->e()Z

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual {v3}, Lhp3;->d()I

    move-result v9

    invoke-virtual {v0}, Lhp3;->d()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v3}, Lhp3;->d()I

    move-result v10

    invoke-virtual {v3, v10}, Lhp3;->c(I)I

    move-result v10

    invoke-virtual {p0, v10, v7}, Lgp3;->c(II)I

    move-result v10

    invoke-virtual {p0, v9, v10}, Lgp3;->a(II)Lhp3;

    move-result-object v11

    invoke-virtual {v8, v11}, Lhp3;->a(Lhp3;)Lhp3;

    move-result-object v8

    invoke-virtual {v0, v9, v10}, Lhp3;->h(II)Lhp3;

    move-result-object v9

    invoke-virtual {v3, v9}, Lhp3;->a(Lhp3;)Lhp3;

    move-result-object v3

    goto :goto_8

    :cond_b
    invoke-virtual {v8, v5}, Lhp3;->g(Lhp3;)Lhp3;

    move-result-object v7

    invoke-virtual {v7, v6}, Lhp3;->a(Lhp3;)Lhp3;

    move-result-object v6

    invoke-virtual {v3}, Lhp3;->d()I

    move-result v7

    invoke-virtual {v0}, Lhp3;->d()I

    move-result v8

    if-ge v7, v8, :cond_c

    move-object v12, v3

    move-object v3, v0

    move-object v0, v12

    move-object v12, v6

    move-object v6, v5

    move-object v5, v12

    goto :goto_7

    :cond_c
    const-string p0, "Division algorithm failed to reduce polynomial?"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_d
    new-instance p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string p1, "r_{i-1} was zero"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    invoke-virtual {v5, v1}, Lhp3;->c(I)I

    move-result p1

    if-eqz p1, :cond_1b

    invoke-virtual {p0, p1}, Lgp3;->b(I)I

    move-result p1

    invoke-virtual {v5, p1}, Lhp3;->f(I)Lhp3;

    move-result-object v3

    invoke-virtual {v0, p1}, Lhp3;->f(I)Lhp3;

    move-result-object p1

    filled-new-array {v3, p1}, [Lhp3;

    move-result-object p1

    aget-object v0, p1, v1

    aget-object p1, p1, v2

    invoke-virtual {v0}, Lhp3;->d()I

    move-result v3

    if-ne v3, v2, :cond_f

    invoke-virtual {v0, v2}, Lhp3;->c(I)I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    goto :goto_a

    :cond_f
    new-array v4, v3, [I

    move v6, v1

    move v5, v2

    :goto_9
    iget v7, p0, Lgp3;->e:I

    if-ge v5, v7, :cond_11

    if-ge v6, v3, :cond_11

    invoke-virtual {v0, v5}, Lhp3;->b(I)I

    move-result v7

    if-nez v7, :cond_10

    invoke-virtual {p0, v5}, Lgp3;->b(I)I

    move-result v7

    aput v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_11
    if-ne v6, v3, :cond_1a

    move-object v0, v4

    :goto_a
    array-length v3, v0

    new-array v4, v3, [I

    move v5, v1

    :goto_b
    if-ge v5, v3, :cond_16

    aget v6, v0, v5

    invoke-virtual {p0, v6}, Lgp3;->b(I)I

    move-result v6

    move v7, v1

    move v8, v2

    :goto_c
    if-ge v7, v3, :cond_14

    if-eq v5, v7, :cond_13

    aget v9, v0, v7

    invoke-virtual {p0, v9, v6}, Lgp3;->c(II)I

    move-result v9

    and-int/lit8 v10, v9, 0x1

    if-nez v10, :cond_12

    or-int/lit8 v9, v9, 0x1

    goto :goto_d

    :cond_12
    and-int/lit8 v9, v9, -0x2

    :goto_d
    invoke-virtual {p0, v8, v9}, Lgp3;->c(II)I

    move-result v8

    :cond_13
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_14
    invoke-virtual {p1, v6}, Lhp3;->b(I)I

    move-result v7

    invoke-virtual {p0, v8}, Lgp3;->b(I)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lgp3;->c(II)I

    move-result v7

    aput v7, v4, v5

    iget v8, p0, Lgp3;->g:I

    if-eqz v8, :cond_15

    invoke-virtual {p0, v7, v6}, Lgp3;->c(II)I

    move-result v6

    aput v6, v4, v5

    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_16
    :goto_e
    array-length p1, v0

    if-ge v1, p1, :cond_19

    array-length p1, p2

    sub-int/2addr p1, v2

    aget v3, v0, v1

    if-eqz v3, :cond_18

    iget-object v5, p0, Lgp3;->b:[I

    aget v3, v5, v3

    sub-int/2addr p1, v3

    if-ltz p1, :cond_17

    aget v3, p2, p1

    aget v5, v4, v1

    xor-int/2addr v3, v5

    aput v3, p2, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_17
    new-instance p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string p1, "Bad error location"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    invoke-static {}, Lmi2;->b()V

    :cond_19
    :goto_f
    return-void

    :cond_1a
    new-instance p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string p1, "Error locator degree does not match number of roots"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    new-instance p0, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    const-string p1, "sigmaTilde(0) was zero"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    invoke-static {}, Lmi2;->b()V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzku;

    sget v0, Lcom/google/android/gms/internal/measurement/zzkk;->zza:I

    new-instance v0, Lpzb;

    invoke-direct {v0, p2}, Lpzb;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzkt;

    iget-object p0, p0, Lzm5;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzme;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacb;->zzcd()[B

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/measurement/zzkt;->zzh(Lcom/google/android/gms/internal/measurement/zzks;[B)V

    return-void
.end method

.method public bridge synthetic then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lzm5;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method
