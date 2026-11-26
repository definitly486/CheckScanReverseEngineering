.class public final Lyads/dn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:F

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;IIIFLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/dn;->a:Ljava/util/ArrayList;

    iput p2, p0, Lyads/dn;->b:I

    iput p3, p0, Lyads/dn;->c:I

    iput p4, p0, Lyads/dn;->d:I

    iput p5, p0, Lyads/dn;->e:F

    iput-object p6, p0, Lyads/dn;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Lyads/os4;)Lyads/dn;
    .locals 13

    const/4 v1, 0x0

    :try_start_0
    iget v0, p0, Lyads/os4;->b:I

    const/4 v2, 0x4

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lyads/os4;->e(I)V

    invoke-virtual {p0}, Lyads/os4;->k()I

    move-result v0

    const/4 v3, 0x3

    and-int/2addr v0, v3

    add-int/lit8 v6, v0, 0x1

    if-eq v6, v3, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lyads/os4;->k()I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    invoke-virtual {p0}, Lyads/os4;->p()I

    move-result v7

    iget v8, p0, Lyads/os4;->b:I

    add-int v9, v8, v7

    invoke-virtual {p0, v9}, Lyads/os4;->e(I)V

    iget-object v9, p0, Lyads/os4;->a:[B

    sget-object v10, Lyads/g20;->a:[B

    add-int/lit8 v11, v7, 0x4

    new-array v11, v11, [B

    invoke-static {v10, v3, v11, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v9, v8, v11, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0}, Lyads/os4;->k()I

    move-result v4

    move v7, v3

    :goto_1
    if-ge v7, v4, :cond_1

    invoke-virtual {p0}, Lyads/os4;->p()I

    move-result v8

    iget v9, p0, Lyads/os4;->b:I

    add-int v10, v9, v8

    invoke-virtual {p0, v10}, Lyads/os4;->e(I)V

    iget-object v10, p0, Lyads/os4;->a:[B

    sget-object v11, Lyads/g20;->a:[B

    add-int/lit8 v12, v8, 0x4

    new-array v12, v12, [B

    invoke-static {v11, v3, v12, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v10, v9, v12, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    if-lez v0, :cond_2

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length p0, p0

    invoke-static {v0, v6, p0}, Lyads/qd4;->b([BII)Lyads/pd4;

    move-result-object p0

    iget v0, p0, Lyads/pd4;->e:I

    iget v2, p0, Lyads/pd4;->f:I

    iget v3, p0, Lyads/pd4;->g:F

    iget v4, p0, Lyads/pd4;->a:I

    iget v7, p0, Lyads/pd4;->b:I

    iget p0, p0, Lyads/pd4;->c:I

    const-string v8, "avc1.%02X%02X%02X"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v4, v7, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v8, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    move-object v10, p0

    move v7, v0

    move v8, v2

    :goto_2
    move v9, v3

    goto :goto_3

    :cond_2
    const/4 v0, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    move v7, v0

    move v8, v7

    move-object v10, v1

    goto :goto_2

    :goto_3
    new-instance v4, Lyads/dn;

    invoke-direct/range {v4 .. v10}, Lyads/dn;-><init>(Ljava/util/ArrayList;IIIFLjava/lang/String;)V

    return-object v4

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    const-string v0, "Error parsing AVC config"

    invoke-static {v0, p0}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v1
.end method
