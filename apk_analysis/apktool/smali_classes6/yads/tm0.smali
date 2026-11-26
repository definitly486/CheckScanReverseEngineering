.class public final Lyads/tm0;
.super Lyads/sm0;
.source "SourceFile"


# instance fields
.field public final f:Z

.field public final g:Lyads/mm0;

.field public final h:Z

.field public final i:Z

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:Z

.field public final o:Z

.field public final p:I

.field public final q:Z

.field public final r:Z

.field public final s:I


# direct methods
.method public constructor <init>(ILyads/f06;ILyads/mm0;IIZ)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Lyads/sm0;-><init>(ILyads/f06;I)V

    iput-object p4, p0, Lyads/tm0;->g:Lyads/mm0;

    iget-boolean p1, p4, Lyads/mm0;->E:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x18

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    :goto_0
    iget-boolean p2, p4, Lyads/mm0;->D:Z

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    and-int p2, p6, p1

    if-eqz p2, :cond_1

    move p2, p3

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    iput-boolean p2, p0, Lyads/tm0;->o:Z

    const/high16 p2, -0x40800000    # -1.0f

    const/4 p6, -0x1

    if-eqz p7, :cond_6

    iget-object v1, p0, Lyads/sm0;->e:Lyads/vz2;

    iget v2, v1, Lyads/vz2;->r:I

    if-eq v2, p6, :cond_2

    iget v3, p4, Lyads/o06;->b:I

    if-gt v2, v3, :cond_6

    :cond_2
    iget v2, v1, Lyads/vz2;->s:I

    if-eq v2, p6, :cond_3

    iget v3, p4, Lyads/o06;->c:I

    if-gt v2, v3, :cond_6

    :cond_3
    iget v2, v1, Lyads/vz2;->t:F

    cmpl-float v3, v2, p2

    if-eqz v3, :cond_4

    iget v3, p4, Lyads/o06;->d:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_6

    :cond_4
    iget v1, v1, Lyads/vz2;->i:I

    if-eq v1, p6, :cond_5

    iget v2, p4, Lyads/o06;->e:I

    if-gt v1, v2, :cond_6

    :cond_5
    move v1, p3

    goto :goto_2

    :cond_6
    move v1, v0

    :goto_2
    iput-boolean v1, p0, Lyads/tm0;->f:Z

    if-eqz p7, :cond_b

    iget-object p7, p0, Lyads/sm0;->e:Lyads/vz2;

    iget v1, p7, Lyads/vz2;->r:I

    if-eq v1, p6, :cond_7

    iget v2, p4, Lyads/o06;->f:I

    if-lt v1, v2, :cond_b

    :cond_7
    iget v1, p7, Lyads/vz2;->s:I

    if-eq v1, p6, :cond_8

    iget v2, p4, Lyads/o06;->g:I

    if-lt v1, v2, :cond_b

    :cond_8
    iget v1, p7, Lyads/vz2;->t:F

    cmpl-float p2, v1, p2

    if-eqz p2, :cond_9

    iget p2, p4, Lyads/o06;->h:I

    int-to-float p2, p2

    cmpl-float p2, v1, p2

    if-ltz p2, :cond_b

    :cond_9
    iget p2, p7, Lyads/vz2;->i:I

    if-eq p2, p6, :cond_a

    iget p7, p4, Lyads/o06;->i:I

    if-lt p2, p7, :cond_b

    :cond_a
    move p2, p3

    goto :goto_3

    :cond_b
    move p2, v0

    :goto_3
    iput-boolean p2, p0, Lyads/tm0;->h:Z

    invoke-static {p5, v0}, Lyads/um0;->a(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lyads/tm0;->i:Z

    iget-object p2, p0, Lyads/sm0;->e:Lyads/vz2;

    iget p7, p2, Lyads/vz2;->i:I

    iput p7, p0, Lyads/tm0;->j:I

    invoke-virtual {p2}, Lyads/vz2;->a()I

    move-result p2

    iput p2, p0, Lyads/tm0;->k:I

    iget-object p2, p0, Lyads/sm0;->e:Lyads/vz2;

    iget p2, p2, Lyads/vz2;->f:I

    iget p7, p4, Lyads/o06;->n:I

    invoke-static {p2, p7}, Lyads/um0;->a(II)I

    move-result p2

    iput p2, p0, Lyads/tm0;->m:I

    iget-object p2, p0, Lyads/sm0;->e:Lyads/vz2;

    iget p2, p2, Lyads/vz2;->f:I

    if-eqz p2, :cond_d

    and-int/2addr p2, p3

    if-eqz p2, :cond_c

    goto :goto_4

    :cond_c
    move p2, v0

    goto :goto_5

    :cond_d
    :goto_4
    move p2, p3

    :goto_5
    iput-boolean p2, p0, Lyads/tm0;->n:Z

    move p2, v0

    :goto_6
    iget-object p7, p4, Lyads/o06;->m:Lyads/k55;

    invoke-virtual {p7}, Lyads/k55;->size()I

    move-result p7

    if-ge p2, p7, :cond_f

    iget-object p7, p0, Lyads/sm0;->e:Lyads/vz2;

    iget-object p7, p7, Lyads/vz2;->m:Ljava/lang/String;

    if-eqz p7, :cond_e

    iget-object v1, p4, Lyads/o06;->m:Lyads/k55;

    invoke-virtual {v1, p2}, Lyads/k55;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_e

    goto :goto_7

    :cond_e
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_f
    const p2, 0x7fffffff

    :goto_7
    iput p2, p0, Lyads/tm0;->l:I

    invoke-static {p5}, Lyads/gs;->a(I)I

    move-result p2

    const/16 p4, 0x80

    if-ne p2, p4, :cond_10

    move p2, p3

    goto :goto_8

    :cond_10
    move p2, v0

    :goto_8
    iput-boolean p2, p0, Lyads/tm0;->q:Z

    invoke-static {p5}, Lyads/gs;->b(I)I

    move-result p2

    const/16 p4, 0x40

    if-ne p2, p4, :cond_11

    move p2, p3

    goto :goto_9

    :cond_11
    move p2, v0

    :goto_9
    iput-boolean p2, p0, Lyads/tm0;->r:Z

    iget-object p2, p0, Lyads/sm0;->e:Lyads/vz2;

    iget-object p4, p2, Lyads/vz2;->m:Ljava/lang/String;

    const/4 p7, 0x2

    if-nez p4, :cond_12

    goto :goto_c

    :cond_12
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    sparse-switch v1, :sswitch_data_0

    :goto_a
    move p4, p6

    goto :goto_b

    :sswitch_0
    const-string v1, "video/x-vnd.on2.vp9"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_13

    goto :goto_a

    :cond_13
    move p4, v2

    goto :goto_b

    :sswitch_1
    const-string v1, "video/avc"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_14

    goto :goto_a

    :cond_14
    move p4, p7

    goto :goto_b

    :sswitch_2
    const-string v1, "video/hevc"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_15

    goto :goto_a

    :cond_15
    move p4, p3

    goto :goto_b

    :sswitch_3
    const-string v1, "video/av01"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_16

    goto :goto_a

    :cond_16
    move p4, v0

    :goto_b
    packed-switch p4, :pswitch_data_0

    :goto_c
    move v2, v0

    goto :goto_d

    :pswitch_0
    move v2, p7

    goto :goto_d

    :pswitch_1
    move v2, p3

    goto :goto_d

    :pswitch_2
    const/4 v2, 0x4

    :goto_d
    :pswitch_3
    iput v2, p0, Lyads/tm0;->s:I

    iget p2, p2, Lyads/vz2;->f:I

    and-int/lit16 p2, p2, 0x4000

    if-eqz p2, :cond_17

    goto :goto_e

    :cond_17
    iget-object p2, p0, Lyads/tm0;->g:Lyads/mm0;

    iget-boolean p2, p2, Lyads/mm0;->M:Z

    invoke-static {p5, p2}, Lyads/um0;->a(IZ)Z

    move-result p2

    if-nez p2, :cond_18

    goto :goto_e

    :cond_18
    iget-boolean p2, p0, Lyads/tm0;->f:Z

    if-nez p2, :cond_19

    iget-object p2, p0, Lyads/tm0;->g:Lyads/mm0;

    iget-boolean p2, p2, Lyads/mm0;->C:Z

    if-nez p2, :cond_19

    :goto_e
    move p3, v0

    goto :goto_f

    :cond_19
    invoke-static {p5, v0}, Lyads/um0;->a(IZ)Z

    move-result p2

    if-eqz p2, :cond_1a

    iget-boolean p2, p0, Lyads/tm0;->h:Z

    if-eqz p2, :cond_1a

    iget-boolean p2, p0, Lyads/tm0;->f:Z

    if-eqz p2, :cond_1a

    iget-object p2, p0, Lyads/sm0;->e:Lyads/vz2;

    iget p2, p2, Lyads/vz2;->i:I

    if-eq p2, p6, :cond_1a

    iget-object p2, p0, Lyads/tm0;->g:Lyads/mm0;

    iget-boolean p4, p2, Lyads/o06;->y:Z

    if-nez p4, :cond_1a

    iget-boolean p2, p2, Lyads/o06;->x:Z

    if-nez p2, :cond_1a

    and-int/2addr p1, p5

    if-eqz p1, :cond_1a

    move p3, p7

    :cond_1a
    :goto_f
    iput p3, p0, Lyads/tm0;->p:I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x631b55f6 -> :sswitch_3
        -0x63185e82 -> :sswitch_2
        0x4f62373a -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)I
    .locals 3

    .line 218
    new-instance v0, Lh9a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 219
    invoke-static {p0, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/tm0;

    new-instance v1, Lh9a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 220
    invoke-static {p1, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/tm0;

    new-instance v2, Lh9a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 221
    invoke-virtual {v2, v0, v1}, Lh9a;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lyads/q40;->a(I)Lyads/s40;

    move-result-object v0

    .line 222
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lyads/s40;->a(II)Lyads/s40;

    move-result-object v0

    new-instance v1, Li9a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 223
    invoke-static {p0, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/tm0;

    new-instance v1, Li9a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 224
    invoke-static {p1, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/tm0;

    new-instance v1, Li9a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 225
    invoke-virtual {v0, p0, p1, v1}, Lyads/s40;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lyads/s40;

    move-result-object p0

    .line 226
    invoke-virtual {p0}, Lyads/s40;->a()I

    move-result p0

    return p0
.end method

.method public static a(Lyads/tm0;Lyads/tm0;)I
    .locals 4

    .line 200
    iget-boolean v0, p0, Lyads/tm0;->i:Z

    iget-boolean v1, p1, Lyads/tm0;->i:Z

    .line 201
    invoke-static {v0, v1}, Lyads/xu;->a(ZZ)I

    move-result v0

    invoke-static {v0}, Lyads/q40;->a(I)Lyads/s40;

    move-result-object v0

    .line 202
    iget v1, p0, Lyads/tm0;->m:I

    iget v2, p1, Lyads/tm0;->m:I

    .line 203
    invoke-virtual {v0, v1, v2}, Lyads/s40;->a(II)Lyads/s40;

    move-result-object v0

    iget-boolean v1, p0, Lyads/tm0;->n:Z

    iget-boolean v2, p1, Lyads/tm0;->n:Z

    .line 204
    invoke-virtual {v0, v1, v2}, Lyads/s40;->a(ZZ)Lyads/s40;

    move-result-object v0

    iget-boolean v1, p0, Lyads/tm0;->f:Z

    iget-boolean v2, p1, Lyads/tm0;->f:Z

    .line 205
    invoke-virtual {v0, v1, v2}, Lyads/s40;->a(ZZ)Lyads/s40;

    move-result-object v0

    iget-boolean v1, p0, Lyads/tm0;->h:Z

    iget-boolean v2, p1, Lyads/tm0;->h:Z

    .line 206
    invoke-virtual {v0, v1, v2}, Lyads/s40;->a(ZZ)Lyads/s40;

    move-result-object v0

    iget v1, p0, Lyads/tm0;->l:I

    .line 207
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lyads/tm0;->l:I

    .line 208
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 209
    sget-object v3, Lyads/xm4;->b:Lyads/xm4;

    .line 210
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    sget-object v3, Lyads/m95;->b:Lyads/m95;

    .line 212
    invoke-virtual {v0, v1, v2, v3}, Lyads/s40;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lyads/s40;

    move-result-object v0

    iget-boolean v1, p0, Lyads/tm0;->q:Z

    iget-boolean v2, p1, Lyads/tm0;->q:Z

    .line 213
    invoke-virtual {v0, v1, v2}, Lyads/s40;->a(ZZ)Lyads/s40;

    move-result-object v0

    iget-boolean v1, p0, Lyads/tm0;->r:Z

    iget-boolean v2, p1, Lyads/tm0;->r:Z

    .line 214
    invoke-virtual {v0, v1, v2}, Lyads/s40;->a(ZZ)Lyads/s40;

    move-result-object v0

    .line 215
    iget-boolean v1, p0, Lyads/tm0;->q:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lyads/tm0;->r:Z

    if-eqz v1, :cond_0

    .line 216
    iget p0, p0, Lyads/tm0;->s:I

    iget p1, p1, Lyads/tm0;->s:I

    invoke-virtual {v0, p0, p1}, Lyads/s40;->a(II)Lyads/s40;

    move-result-object v0

    .line 217
    :cond_0
    invoke-virtual {v0}, Lyads/s40;->a()I

    move-result p0

    return p0
.end method

.method public static a(ILyads/f06;Lyads/mm0;[II)Lyads/k55;
    .locals 16

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    iget v0, v4, Lyads/o06;->j:I

    iget v1, v4, Lyads/o06;->k:I

    iget-boolean v3, v4, Lyads/o06;->l:Z

    sget-object v5, Lyads/um0;->i:Lyads/xq4;

    const/4 v9, 0x1

    const v10, 0x7fffffff

    if-eq v0, v10, :cond_7

    if-ne v1, v10, :cond_0

    goto/16 :goto_5

    :cond_0
    move v6, v10

    const/4 v5, 0x0

    :goto_0
    iget v7, v2, Lyads/f06;->b:I

    if-ge v5, v7, :cond_6

    iget-object v7, v2, Lyads/f06;->e:[Lyads/vz2;

    aget-object v7, v7, v5

    iget v11, v7, Lyads/vz2;->r:I

    if-lez v11, :cond_5

    iget v12, v7, Lyads/vz2;->s:I

    if-lez v12, :cond_5

    if-eqz v3, :cond_3

    if-le v11, v12, :cond_1

    move v13, v9

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    if-le v0, v1, :cond_2

    move v14, v9

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    :goto_2
    if-eq v13, v14, :cond_3

    move v13, v0

    move v14, v1

    goto :goto_3

    :cond_3
    move v14, v0

    move v13, v1

    :goto_3
    mul-int v15, v11, v13

    mul-int v8, v12, v14

    if-lt v15, v8, :cond_4

    new-instance v12, Landroid/graphics/Point;

    sget v13, Lyads/u56;->a:I

    add-int/2addr v8, v11

    sub-int/2addr v8, v9

    div-int/2addr v8, v11

    invoke-direct {v12, v14, v8}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_4

    :cond_4
    new-instance v8, Landroid/graphics/Point;

    sget v11, Lyads/u56;->a:I

    add-int/2addr v15, v12

    sub-int/2addr v15, v9

    div-int/2addr v15, v12

    invoke-direct {v8, v15, v13}, Landroid/graphics/Point;-><init>(II)V

    move-object v12, v8

    :goto_4
    iget v8, v7, Lyads/vz2;->r:I

    iget v7, v7, Lyads/vz2;->s:I

    mul-int v11, v8, v7

    iget v13, v12, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    const v14, 0x3f7ae148    # 0.98f

    mul-float/2addr v13, v14

    float-to-int v13, v13

    if-lt v8, v13, :cond_5

    iget v8, v12, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    mul-float/2addr v8, v14

    float-to-int v8, v8

    if-lt v7, v8, :cond_5

    if-ge v11, v6, :cond_5

    move v6, v11

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    move v8, v6

    goto :goto_6

    :cond_7
    :goto_5
    move v8, v10

    :goto_6
    sget-object v0, Lyads/oe3;->c:Lyads/le3;

    const-string v0, "initialCapacity"

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lyads/h20;->a(ILjava/lang/String;)I

    new-array v0, v1, [Ljava/lang/Object;

    move-object v11, v0

    const/4 v3, 0x0

    const/4 v12, 0x0

    :goto_7
    iget v0, v2, Lyads/f06;->b:I

    if-ge v3, v0, :cond_b

    iget-object v0, v2, Lyads/f06;->e:[Lyads/vz2;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lyads/vz2;->a()I

    move-result v0

    if-eq v8, v10, :cond_9

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    if-gt v0, v8, :cond_8

    goto :goto_8

    :cond_8
    const/4 v7, 0x0

    goto :goto_9

    :cond_9
    :goto_8
    move v7, v9

    :goto_9
    new-instance v0, Lyads/tm0;

    aget v5, p3, v3

    move/from16 v1, p0

    move/from16 v6, p4

    invoke-direct/range {v0 .. v7}, Lyads/tm0;-><init>(ILyads/f06;ILyads/mm0;IIZ)V

    add-int/lit8 v1, v12, 0x1

    array-length v2, v11

    if-ge v2, v1, :cond_a

    array-length v2, v11

    invoke-static {v2, v1}, Lyads/he3;->a(II)I

    move-result v2

    invoke-static {v11, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    :cond_a
    aput-object v0, v11, v12

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move v12, v1

    goto :goto_7

    :cond_b
    invoke-static {v12, v11}, Lyads/oe3;->b(I[Ljava/lang/Object;)Lyads/k55;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lyads/tm0;Lyads/tm0;)I
    .locals 6

    iget-boolean v0, p0, Lyads/tm0;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lyads/tm0;->i:Z

    if-eqz v0, :cond_0

    sget-object v0, Lyads/um0;->i:Lyads/xq4;

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v0, Lyads/um0;->i:Lyads/xq4;

    invoke-virtual {v0}, Lyads/xq4;->a()Lyads/xq4;

    move-result-object v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_0
    iget v2, p0, Lyads/tm0;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lyads/tm0;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lyads/tm0;->g:Lyads/mm0;

    iget-boolean v4, v4, Lyads/o06;->x:Z

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lyads/xq4;->a()Lyads/xq4;

    move-result-object v1

    goto :goto_1

    :cond_1
    sget-object v1, Lyads/um0;->j:Lyads/xq4;

    :goto_1
    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lyads/q40;->a(I)Lyads/s40;

    move-result-object v1

    iget v2, p0, Lyads/tm0;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lyads/tm0;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lyads/s40;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lyads/s40;

    move-result-object v1

    iget p0, p0, Lyads/tm0;->j:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget p1, p1, Lyads/tm0;->j:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p0, p1, v0}, Lyads/s40;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lyads/s40;

    move-result-object p0

    invoke-virtual {p0}, Lyads/s40;->a()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 199
    iget p0, p0, Lyads/tm0;->p:I

    return p0
.end method

.method public final a(Lyads/sm0;)Z
    .locals 2

    .line 196
    check-cast p1, Lyads/tm0;

    .line 197
    iget-boolean v0, p0, Lyads/tm0;->o:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lyads/sm0;->e:Lyads/vz2;

    iget-object v0, v0, Lyads/vz2;->m:Ljava/lang/String;

    iget-object v1, p1, Lyads/sm0;->e:Lyads/vz2;

    iget-object v1, v1, Lyads/vz2;->m:Ljava/lang/String;

    .line 198
    invoke-static {v0, v1}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lyads/tm0;->g:Lyads/mm0;

    iget-boolean v0, v0, Lyads/mm0;->F:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lyads/tm0;->q:Z

    iget-boolean v1, p1, Lyads/tm0;->q:Z

    if-ne v0, v1, :cond_1

    iget-boolean p0, p0, Lyads/tm0;->r:Z

    iget-boolean p1, p1, Lyads/tm0;->r:Z

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
