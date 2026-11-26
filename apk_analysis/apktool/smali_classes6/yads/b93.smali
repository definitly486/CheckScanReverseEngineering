.class public final Lyads/b93;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:I

.field public final c:F

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;IFLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/b93;->a:Ljava/util/List;

    iput p2, p0, Lyads/b93;->b:I

    iput p3, p0, Lyads/b93;->c:F

    iput-object p4, p0, Lyads/b93;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Lyads/os4;)Lyads/b93;
    .locals 24

    move-object/from16 v0, p0

    :try_start_0
    iget v2, v0, Lyads/os4;->b:I

    add-int/lit8 v2, v2, 0x15

    invoke-virtual {v0, v2}, Lyads/os4;->e(I)V

    invoke-virtual {v0}, Lyads/os4;->k()I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    invoke-virtual {v0}, Lyads/os4;->k()I

    move-result v3

    iget v4, v0, Lyads/os4;->b:I

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v6, v3, :cond_1

    iget v8, v0, Lyads/os4;->b:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v0, v8}, Lyads/os4;->e(I)V

    invoke-virtual {v0}, Lyads/os4;->p()I

    move-result v8

    move v9, v5

    :goto_1
    if-ge v9, v8, :cond_0

    invoke-virtual {v0}, Lyads/os4;->p()I

    move-result v10

    add-int/lit8 v11, v10, 0x4

    add-int/2addr v7, v11

    iget v11, v0, Lyads/os4;->b:I

    add-int/2addr v11, v10

    invoke-virtual {v0, v11}, Lyads/os4;->e(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const/16 v16, 0x0

    goto/16 :goto_6

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4}, Lyads/os4;->e(I)V

    new-array v4, v7, [B

    const/high16 v6, 0x3f800000    # 1.0f

    move v8, v5

    move v10, v8

    const/4 v9, 0x0

    :goto_2
    if-ge v8, v3, :cond_4

    invoke-virtual {v0}, Lyads/os4;->k()I

    move-result v11

    and-int/lit8 v11, v11, 0x7f

    invoke-virtual {v0}, Lyads/os4;->p()I

    move-result v12

    move v13, v5

    :goto_3
    if-ge v13, v12, :cond_3

    invoke-virtual {v0}, Lyads/os4;->p()I

    move-result v14

    sget-object v15, Lyads/qd4;->a:[B
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v16, 0x0

    const/4 v1, 0x4

    :try_start_1
    invoke-static {v15, v5, v4, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v10, v10, 0x4

    iget-object v1, v0, Lyads/os4;->a:[B

    iget v15, v0, Lyads/os4;->b:I

    invoke-static {v1, v15, v4, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x21

    if-ne v11, v1, :cond_2

    if-nez v13, :cond_2

    add-int v1, v10, v14

    invoke-static {v4, v10, v1}, Lyads/qd4;->a([BII)Lyads/nd4;

    move-result-object v1

    iget v6, v1, Lyads/nd4;->g:F

    iget v9, v1, Lyads/nd4;->a:I

    iget-boolean v15, v1, Lyads/nd4;->b:Z

    iget v5, v1, Lyads/nd4;->c:I

    move/from16 v23, v2

    iget v2, v1, Lyads/nd4;->d:I

    move/from16 v20, v2

    iget-object v2, v1, Lyads/nd4;->e:[I

    iget v1, v1, Lyads/nd4;->f:I

    move/from16 v22, v1

    move-object/from16 v21, v2

    move/from16 v19, v5

    move/from16 v17, v9

    move/from16 v18, v15

    invoke-static/range {v17 .. v22}, Lyads/g20;->a(IZII[II)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_6

    :cond_2
    move/from16 v23, v2

    :goto_4
    add-int/2addr v10, v14

    iget v1, v0, Lyads/os4;->b:I

    add-int/2addr v1, v14

    invoke-virtual {v0, v1}, Lyads/os4;->e(I)V

    add-int/lit8 v13, v13, 0x1

    move/from16 v2, v23

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move/from16 v23, v2

    const/16 v16, 0x0

    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    move/from16 v23, v2

    const/16 v16, 0x0

    if-nez v7, :cond_5

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_5

    :cond_5
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_5
    new-instance v1, Lyads/b93;

    add-int/lit8 v2, v23, 0x1

    invoke-direct {v1, v0, v2, v6, v9}, Lyads/b93;-><init>(Ljava/util/List;IFLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :goto_6
    const-string v1, "Error parsing HEVC config"

    invoke-static {v1, v0}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v16
.end method
