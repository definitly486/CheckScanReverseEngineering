.class public final Lyads/mv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/k06;


# instance fields
.field public final a:I

.field public final b:Lyads/vz2;

.field public final c:Lyads/cm2;

.field public d:Lyads/vz2;

.field public e:Lyads/k06;

.field public f:J


# direct methods
.method public constructor <init>(IILyads/vz2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lyads/mv;->a:I

    iput-object p3, p0, Lyads/mv;->b:Lyads/vz2;

    new-instance p1, Lyads/cm2;

    invoke-direct {p1}, Lyads/cm2;-><init>()V

    iput-object p1, p0, Lyads/mv;->c:Lyads/cm2;

    return-void
.end method


# virtual methods
.method public final a(Lyads/tc0;IZ)I
    .locals 1

    .line 403
    iget-object p0, p0, Lyads/mv;->e:Lyads/k06;

    sget v0, Lyads/u56;->a:I

    invoke-interface {p0, p1, p2, p3}, Lyads/k06;->b(Lyads/tc0;IZ)I

    move-result p0

    return p0
.end method

.method public final a(ILyads/os4;)V
    .locals 1

    .line 404
    iget-object p0, p0, Lyads/mv;->e:Lyads/k06;

    sget v0, Lyads/u56;->a:I

    .line 405
    invoke-interface {p0, p1, p2}, Lyads/k06;->a(ILyads/os4;)V

    return-void
.end method

.method public final a(JIIILyads/j06;)V
    .locals 4

    .line 406
    iget-wide v0, p0, Lyads/mv;->f:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 407
    iget-object v0, p0, Lyads/mv;->c:Lyads/cm2;

    iput-object v0, p0, Lyads/mv;->e:Lyads/k06;

    .line 408
    :cond_0
    iget-object p0, p0, Lyads/mv;->e:Lyads/k06;

    sget v0, Lyads/u56;->a:I

    invoke-interface/range {p0 .. p6}, Lyads/k06;->a(JIIILyads/j06;)V

    return-void
.end method

.method public final a(Lyads/vz2;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lyads/mv;->b:Lyads/vz2;

    if-eqz v2, :cond_1c

    if-ne v1, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_e

    :cond_0
    iget-object v3, v1, Lyads/vz2;->m:Ljava/lang/String;

    invoke-static {v3}, Lyads/z84;->d(Ljava/lang/String;)I

    move-result v3

    iget-object v4, v2, Lyads/vz2;->b:Ljava/lang/String;

    iget-object v5, v2, Lyads/vz2;->c:Ljava/lang/String;

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    iget-object v5, v1, Lyads/vz2;->c:Ljava/lang/String;

    :goto_0
    iget-object v6, v1, Lyads/vz2;->d:Ljava/lang/String;

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eq v3, v7, :cond_2

    if-ne v3, v8, :cond_3

    :cond_2
    iget-object v7, v2, Lyads/vz2;->d:Ljava/lang/String;

    if-eqz v7, :cond_3

    move-object v6, v7

    :cond_3
    iget v7, v1, Lyads/vz2;->g:I

    const/4 v9, -0x1

    if-ne v7, v9, :cond_4

    iget v7, v2, Lyads/vz2;->g:I

    :cond_4
    iget v10, v1, Lyads/vz2;->h:I

    if-ne v10, v9, :cond_5

    iget v10, v2, Lyads/vz2;->h:I

    :cond_5
    iget-object v11, v1, Lyads/vz2;->j:Ljava/lang/String;

    const/4 v13, 0x0

    if-nez v11, :cond_d

    iget-object v14, v2, Lyads/vz2;->j:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    const-string v12, "(\\s*,\\s*)"

    if-eqz v15, :cond_6

    new-array v14, v13, [Ljava/lang/String;

    goto :goto_1

    :cond_6
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v12, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v14

    :goto_1
    array-length v15, v14

    if-nez v15, :cond_7

    goto :goto_3

    :cond_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    array-length v8, v14

    move v9, v13

    :goto_2
    if-ge v9, v8, :cond_a

    aget-object v13, v14, v9

    invoke-static {v13}, Lyads/z84;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move/from16 v19, v8

    invoke-static/range {v18 .. v18}, Lyads/z84;->d(Ljava/lang/String;)I

    move-result v8

    if-ne v3, v8, :cond_9

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_8

    const-string v8, ","

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    add-int/lit8 v9, v9, 0x1

    move/from16 v8, v19

    const/4 v13, 0x0

    goto :goto_2

    :cond_a
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_b

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_b
    :goto_3
    const/4 v8, 0x0

    :goto_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    const/4 v9, 0x0

    new-array v12, v9, [Ljava/lang/String;

    goto :goto_5

    :cond_c
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const/4 v13, -0x1

    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v12

    :goto_5
    array-length v9, v12

    const/4 v12, 0x1

    if-ne v9, v12, :cond_d

    move-object v11, v8

    :cond_d
    iget-object v8, v1, Lyads/vz2;->k:Lyads/h84;

    iget-object v9, v2, Lyads/vz2;->k:Lyads/h84;

    if-nez v8, :cond_e

    move-object v8, v9

    goto :goto_6

    :cond_e
    if-nez v9, :cond_f

    goto :goto_6

    :cond_f
    iget-object v9, v9, Lyads/h84;->b:[Lyads/g84;

    array-length v12, v9

    if-nez v12, :cond_10

    goto :goto_6

    :cond_10
    new-instance v12, Lyads/h84;

    iget-object v8, v8, Lyads/h84;->b:[Lyads/g84;

    invoke-static {v8, v9}, Lyads/u56;->a([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lyads/g84;

    invoke-direct {v12, v8}, Lyads/h84;-><init>([Lyads/g84;)V

    move-object v8, v12

    :goto_6
    iget v9, v1, Lyads/vz2;->t:F

    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v12, v9, v12

    if-nez v12, :cond_11

    const/4 v12, 0x2

    if-ne v3, v12, :cond_11

    iget v9, v2, Lyads/vz2;->t:F

    :cond_11
    iget v3, v1, Lyads/vz2;->e:I

    iget v12, v2, Lyads/vz2;->e:I

    or-int/2addr v3, v12

    iget v12, v1, Lyads/vz2;->f:I

    iget v13, v2, Lyads/vz2;->f:I

    or-int/2addr v12, v13

    iget-object v2, v2, Lyads/vz2;->p:Lyads/ql2;

    iget-object v13, v1, Lyads/vz2;->p:Lyads/ql2;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_14

    iget-object v15, v2, Lyads/ql2;->d:Ljava/lang/String;

    iget-object v2, v2, Lyads/ql2;->b:[Lyads/pl2;

    move-object/from16 v16, v15

    array-length v15, v2

    move-object/from16 v17, v2

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v15, :cond_13

    move/from16 v18, v2

    aget-object v2, v17, v18

    move/from16 v19, v15

    iget-object v15, v2, Lyads/pl2;->f:[B

    if-eqz v15, :cond_12

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v2, v18, 0x1

    move/from16 v15, v19

    goto :goto_7

    :cond_13
    move-object/from16 v15, v16

    goto :goto_8

    :cond_14
    const/4 v15, 0x0

    :goto_8
    if-eqz v13, :cond_1a

    if-nez v15, :cond_15

    iget-object v2, v13, Lyads/ql2;->d:Ljava/lang/String;

    move-object v15, v2

    :cond_15
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v13, v13, Lyads/ql2;->b:[Lyads/pl2;

    move-object/from16 v16, v15

    array-length v15, v13

    move-object/from16 v17, v13

    const/4 v13, 0x0

    :goto_9
    if-ge v13, v15, :cond_19

    move/from16 v18, v13

    aget-object v13, v17, v18

    move/from16 v19, v15

    iget-object v15, v13, Lyads/pl2;->f:[B

    if-eqz v15, :cond_18

    iget-object v15, v13, Lyads/pl2;->c:Ljava/util/UUID;

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_17

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move/from16 v21, v0

    move-object/from16 v0, v20

    check-cast v0, Lyads/pl2;

    iget-object v0, v0, Lyads/pl2;->c:Ljava/util/UUID;

    invoke-virtual {v0, v15}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_b

    :cond_16
    add-int/lit8 v0, v21, 0x1

    goto :goto_a

    :cond_17
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    :goto_b
    add-int/lit8 v13, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v15, v19

    goto :goto_9

    :cond_19
    move-object/from16 v15, v16

    :cond_1a
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    goto :goto_c

    :cond_1b
    new-instance v0, Lyads/ql2;

    const/4 v2, 0x0

    new-array v13, v2, [Lyads/pl2;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lyads/pl2;

    invoke-direct {v0, v15, v2, v13}, Lyads/ql2;-><init>(Ljava/lang/String;Z[Lyads/pl2;)V

    :goto_c
    new-instance v2, Lyads/uz2;

    invoke-direct {v2, v1}, Lyads/uz2;-><init>(Lyads/vz2;)V

    iput-object v4, v2, Lyads/uz2;->a:Ljava/lang/String;

    iput-object v5, v2, Lyads/uz2;->b:Ljava/lang/String;

    iput-object v6, v2, Lyads/uz2;->c:Ljava/lang/String;

    iput v3, v2, Lyads/uz2;->d:I

    iput v12, v2, Lyads/uz2;->e:I

    iput v7, v2, Lyads/uz2;->f:I

    iput v10, v2, Lyads/uz2;->g:I

    iput-object v11, v2, Lyads/uz2;->h:Ljava/lang/String;

    iput-object v8, v2, Lyads/uz2;->i:Lyads/h84;

    iput-object v0, v2, Lyads/uz2;->n:Lyads/ql2;

    iput v9, v2, Lyads/uz2;->r:F

    new-instance v0, Lyads/vz2;

    invoke-direct {v0, v2}, Lyads/vz2;-><init>(Lyads/uz2;)V

    :goto_d
    move-object/from16 v1, p0

    goto :goto_f

    :cond_1c
    :goto_e
    move-object v0, v1

    goto :goto_d

    :goto_f
    iput-object v0, v1, Lyads/mv;->d:Lyads/vz2;

    iget-object v1, v1, Lyads/mv;->e:Lyads/k06;

    sget v2, Lyads/u56;->a:I

    invoke-interface {v1, v0}, Lyads/k06;->a(Lyads/vz2;)V

    return-void
.end method
