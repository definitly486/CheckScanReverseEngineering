.class public final Ln98;
.super Lf0;
.source "SourceFile"

# interfaces
.implements Lkc4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln98$a;,
        Ln98$b;
    }
.end annotation


# instance fields
.field public final a:Lxb4;

.field public final b:Lml9;

.field public final c:Lw98;

.field public final d:Ljq7;

.field public e:I

.field public f:Ln98$a;

.field public final g:Lfc4;

.field public final h:Lsc4;


# direct methods
.method public constructor <init>(Lxb4;Lml9;Lw98;Lmp7;Ln98$a;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lf0;-><init>()V

    iput-object p1, p0, Ln98;->a:Lxb4;

    iput-object p2, p0, Ln98;->b:Lml9;

    iput-object p3, p0, Ln98;->c:Lw98;

    iget-object p2, p1, Lxb4;->b:Ljq7;

    iput-object p2, p0, Ln98;->d:Ljq7;

    const/4 p2, -0x1

    iput p2, p0, Ln98;->e:I

    iput-object p5, p0, Ln98;->f:Ln98$a;

    iget-object p1, p1, Lxb4;->a:Lfc4;

    iput-object p1, p0, Ln98;->g:Lfc4;

    iget-boolean p1, p1, Lfc4;->b:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lsc4;

    invoke-direct {p1, p4}, Lsc4;-><init>(Lmp7;)V

    :goto_0
    iput-object p1, p0, Ln98;->h:Lsc4;

    return-void
.end method


# virtual methods
.method public final a()Loc4;
    .locals 2

    new-instance v0, Lfe4;

    iget-object v1, p0, Ln98;->a:Lxb4;

    iget-object v1, v1, Lxb4;->a:Lfc4;

    iget-object p0, p0, Ln98;->c:Lw98;

    invoke-direct {v0, v1, p0}, Lfe4;-><init>(Lfc4;Lw98;)V

    invoke-virtual {v0}, Lfe4;->a()Loc4;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lxb4;
    .locals 0

    iget-object p0, p0, Ln98;->a:Lxb4;

    return-object p0
.end method

.method public final beginStructure(Lmp7;)Ldu1;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Ln98;->a:Lxb4;

    invoke-static {v0, p1}, Lnl9;->b(Lxb4;Lmp7;)Lml9;

    move-result-object v3

    iget-object v1, p0, Ln98;->c:Lw98;

    iget-object v2, v1, Lw98;->c:Lod4;

    iget v4, v2, Lod4;->d:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v2, Lod4;->d:I

    iget-object v6, v2, Lod4;->b:[Ljava/lang/Object;

    array-length v6, v6

    if-ne v4, v6, :cond_0

    invoke-virtual {v2}, Lod4;->b()V

    :cond_0
    iget-object v2, v2, Lod4;->b:[Ljava/lang/Object;

    aput-object p1, v2, v4

    iget-char v2, v3, Lml9;->begin:C

    invoke-virtual {v1, v2}, Lw98;->g(C)V

    invoke-virtual {v1}, Lw98;->p()B

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_3

    sget-object v1, Ln98$b;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v5, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Ln98;->b:Lml9;

    if-ne v1, v3, :cond_1

    iget-object v0, v0, Lxb4;->a:Lfc4;

    iget-boolean v0, v0, Lfc4;->b:Z

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    new-instance v1, Ln98;

    iget-object v4, p0, Ln98;->c:Lw98;

    iget-object v6, p0, Ln98;->f:Ln98$a;

    iget-object v2, p0, Ln98;->a:Lxb4;

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Ln98;-><init>(Lxb4;Lml9;Lw98;Lmp7;Ln98$a;)V

    return-object v1

    :cond_2
    move-object v5, p1

    new-instance v1, Ln98;

    iget-object v4, p0, Ln98;->c:Lw98;

    iget-object v6, p0, Ln98;->f:Ln98$a;

    iget-object v2, p0, Ln98;->a:Lxb4;

    invoke-direct/range {v1 .. v6}, Ln98;-><init>(Lxb4;Lml9;Lw98;Lmp7;Ln98$a;)V

    return-object v1

    :cond_3
    const/4 p0, 0x0

    const/4 p1, 0x6

    const-string v0, "Unexpected leading comma"

    const/4 v2, 0x0

    invoke-static {v1, v0, p0, v2, p1}, Lw98;->l(Lw98;Ljava/lang/String;ILjava/lang/String;I)V

    throw v2
.end method

.method public final decodeBoolean()Z
    .locals 10

    iget-object p0, p0, Ln98;->c:Lw98;

    invoke-virtual {p0}, Lw98;->s()I

    move-result v0

    invoke-virtual {p0}, Lw98;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "EOF"

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq v0, v1, :cond_7

    invoke-virtual {p0}, Lw98;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v6, 0x22

    const/4 v7, 0x1

    if-ne v1, v6, :cond_0

    add-int/lit8 v0, v0, 0x1

    move v1, v7

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    invoke-virtual {p0, v0}, Lw98;->r(I)I

    move-result v0

    invoke-virtual {p0}, Lw98;->n()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v0, v8, :cond_6

    const/4 v8, -0x1

    if-eq v0, v8, :cond_6

    invoke-virtual {p0}, Lw98;->n()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    or-int/lit8 v0, v0, 0x20

    const/16 v8, 0x66

    if-eq v0, v8, :cond_2

    const/16 v8, 0x74

    if-ne v0, v8, :cond_1

    const-string v0, "rue"

    invoke-virtual {p0, v9, v0}, Lw98;->c(ILjava/lang/String;)V

    move v0, v7

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected valid boolean literal prefix, but had \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lw98;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5, v4, v3}, Lw98;->l(Lw98;Ljava/lang/String;ILjava/lang/String;I)V

    throw v4

    :cond_2
    const-string v0, "alse"

    invoke-virtual {p0, v9, v0}, Lw98;->c(ILjava/lang/String;)V

    move v0, v5

    :goto_1
    if-eqz v1, :cond_5

    iget v1, p0, Lw98;->b:I

    invoke-virtual {p0}, Lw98;->n()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v1, v8, :cond_4

    invoke-virtual {p0}, Lw98;->n()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lw98;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_3

    iget v1, p0, Lw98;->b:I

    add-int/2addr v1, v7

    iput v1, p0, Lw98;->b:I

    return v0

    :cond_3
    const-string v0, "Expected closing quotation mark"

    invoke-static {p0, v0, v5, v4, v3}, Lw98;->l(Lw98;Ljava/lang/String;ILjava/lang/String;I)V

    throw v4

    :cond_4
    invoke-static {p0, v2, v5, v4, v3}, Lw98;->l(Lw98;Ljava/lang/String;ILjava/lang/String;I)V

    throw v4

    :cond_5
    return v0

    :cond_6
    invoke-static {p0, v2, v5, v4, v3}, Lw98;->l(Lw98;Ljava/lang/String;ILjava/lang/String;I)V

    throw v4

    :cond_7
    invoke-static {p0, v2, v5, v4, v3}, Lw98;->l(Lw98;Ljava/lang/String;ILjava/lang/String;I)V

    throw v4
.end method

.method public final decodeByte()B
    .locals 5

    iget-object p0, p0, Ln98;->c:Lw98;

    invoke-virtual {p0}, Lw98;->h()J

    move-result-wide v0

    long-to-int v2, v0

    int-to-byte v2, v2

    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    const-string v2, "Failed to parse byte for input \'"

    const/16 v3, 0x27

    invoke-static {v2, v0, v1, v3}, Lrg;->g(Ljava/lang/String;JC)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v3, v2}, Lw98;->l(Lw98;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3
.end method

.method public final decodeChar()C
    .locals 4

    iget-object p0, p0, Ln98;->c:Lw98;

    invoke-virtual {p0}, Lw98;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_0
    const-string v1, "Expected single char, but got \'"

    const/16 v2, 0x27

    invoke-static {v2, v1, v0}, Llt0;->d(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p0, v0, v3, v2, v1}, Lw98;->l(Lw98;Ljava/lang/String;ILjava/lang/String;I)V

    throw v2
.end method

.method public final decodeDouble()D
    .locals 10

    iget-object v0, p0, Ln98;->c:Lw98;

    invoke-virtual {v0}, Lw98;->j()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Ln98;->a:Lxb4;

    iget-object p0, p0, Lxb4;->a:Lfc4;

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double p0, v6, v8

    if-gtz p0, :cond_0

    return-wide v4

    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {v3, p0}, Lyc4;->f(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "It is possible to deserialize them using \'JsonBuilder.allowSpecialFloatingPointValues = true\'"

    const/4 v4, 0x2

    invoke-static {v0, p0, v2, v1, v4}, Lw98;->l(Lw98;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3

    :catch_0
    const-string p0, "Failed to parse type \'double\' for input \'"

    const/16 v4, 0x27

    invoke-static {v4, p0, v1}, Llt0;->d(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x6

    invoke-static {v0, p0, v2, v3, v1}, Lw98;->l(Lw98;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3
.end method

.method public final decodeElementIndex(Lmp7;)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ln98$b;->a:[I

    iget-object v3, v0, Ln98;->b:Lml9;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    const/4 v4, 0x2

    const-string v5, "object"

    const/4 v6, 0x4

    const/16 v7, 0x3a

    const/4 v8, 0x0

    iget-object v9, v0, Ln98;->a:Lxb4;

    const/4 v10, 0x1

    const/4 v11, -0x1

    iget-object v12, v0, Ln98;->c:Lw98;

    const/4 v13, 0x0

    if-eq v2, v4, :cond_25

    const/4 v4, 0x6

    if-eq v2, v6, :cond_4

    invoke-virtual {v12}, Lw98;->t()Z

    move-result v1

    invoke-virtual {v12}, Lw98;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v0, Ln98;->e:I

    if-eq v2, v11, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Expected end of the array or comma"

    invoke-static {v12, v0, v8, v13, v4}, Lw98;->l(Lw98;Ljava/lang/String;ILjava/lang/String;I)V

    throw v13

    :cond_1
    :goto_0
    add-int/lit8 v11, v2, 0x1

    iput v11, v0, Ln98;->e:I

    goto/16 :goto_12

    :cond_2
    if-nez v1, :cond_3

    goto/16 :goto_12

    :cond_3
    iget-object v0, v9, Lxb4;->a:Lfc4;

    const-string v0, "array"

    invoke-static {v12, v0}, Lyc4;->d(Lw98;Ljava/lang/String;)V

    throw v13

    :cond_4
    invoke-virtual {v12}, Lw98;->t()Z

    move-result v2

    :goto_1
    invoke-virtual {v12}, Lw98;->b()Z

    move-result v6

    const/16 v14, 0x40

    const-wide/16 v16, 0x1

    iget-object v15, v0, Ln98;->h:Lsc4;

    if-eqz v6, :cond_1e

    iget-object v2, v0, Ln98;->g:Lfc4;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Lw98;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v7}, Lw98;->g(C)V

    invoke-static {v1, v9, v6}, Lfd4;->a(Lmp7;Lxb4;Ljava/lang/String;)I

    move-result v7

    const/4 v4, -0x3

    if-eq v7, v4, :cond_e

    iget-boolean v2, v2, Lfc4;->d:Z

    if-eqz v2, :cond_a

    invoke-interface {v1, v7}, Lmp7;->i(I)Z

    move-result v2

    move/from16 v18, v11

    invoke-interface {v1, v7}, Lmp7;->d(I)Lmp7;

    move-result-object v11

    if-eqz v2, :cond_5

    invoke-interface {v11}, Lmp7;->b()Z

    move-result v19

    if-nez v19, :cond_5

    invoke-virtual {v12, v10}, Lw98;->u(Z)Z

    move-result v19

    if-eqz v19, :cond_5

    move/from16 v19, v10

    goto :goto_3

    :cond_5
    move/from16 v19, v10

    invoke-interface {v11}, Lmp7;->getKind()Lsp7;

    move-result-object v10

    sget-object v13, Lsp7$b;->a:Lsp7$b;

    invoke-static {v10, v13}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v11}, Lmp7;->b()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v12, v8}, Lw98;->u(Z)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v12}, Lw98;->q()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {v11, v9, v10}, Lfd4;->a(Lmp7;Lxb4;Ljava/lang/String;)I

    move-result v10

    iget-object v13, v9, Lxb4;->a:Lfc4;

    iget-boolean v13, v13, Lfc4;->b:Z

    if-nez v13, :cond_8

    invoke-interface {v11}, Lmp7;->b()Z

    move-result v11

    if-eqz v11, :cond_8

    move/from16 v11, v19

    goto :goto_2

    :cond_8
    move v11, v8

    :goto_2
    if-ne v10, v4, :cond_b

    if-nez v2, :cond_9

    if-eqz v11, :cond_b

    :cond_9
    invoke-virtual {v12}, Lw98;->i()Ljava/lang/String;

    :goto_3
    invoke-virtual {v12}, Lw98;->t()Z

    move-result v2

    move v4, v8

    goto :goto_6

    :cond_a
    move/from16 v19, v10

    :cond_b
    :goto_4
    if-eqz v15, :cond_c

    iget-object v0, v15, Lsc4;->a:Lcw2;

    if-ge v7, v14, :cond_d

    iget-wide v1, v0, Lcw2;->c:J

    shl-long v4, v16, v7

    or-long/2addr v1, v4

    iput-wide v1, v0, Lcw2;->c:J

    :cond_c
    :goto_5
    move v11, v7

    goto/16 :goto_12

    :cond_d
    ushr-int/lit8 v1, v7, 0x6

    add-int/lit8 v1, v1, -0x1

    and-int/lit8 v2, v7, 0x3f

    iget-object v0, v0, Lcw2;->d:[J

    aget-wide v4, v0, v1

    shl-long v8, v16, v2

    or-long/2addr v4, v8

    aput-wide v4, v0, v1

    goto :goto_5

    :cond_e
    move/from16 v19, v10

    move/from16 v18, v11

    move v2, v8

    move/from16 v4, v19

    :goto_6
    if-eqz v4, :cond_1d

    invoke-static {v9, v1}, Lfd4;->c(Lxb4;Lmp7;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, v0, Ln98;->f:Ln98$a;

    if-eqz v2, :cond_f

    iget-object v4, v2, Ln98$a;->a:Ljava/lang/String;

    invoke-static {v4, v6}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x0

    iput-object v4, v2, Ln98$a;->a:Ljava/lang/String;

    goto :goto_7

    :cond_f
    iget-object v0, v12, Lw98;->c:Lod4;

    iget v1, v0, Lod4;->d:I

    iget-object v2, v0, Lod4;->c:[I

    aget v3, v2, v1

    const/4 v4, -0x2

    if-ne v3, v4, :cond_10

    aput v18, v2, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lod4;->d:I

    :cond_10
    move/from16 v2, v18

    if-eq v1, v2, :cond_11

    add-int/2addr v1, v2

    iput v1, v0, Lod4;->d:I

    :cond_11
    iget v0, v12, Lw98;->b:I

    invoke-virtual {v12}, Lw98;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1, v0, v6}, Lta8;->N(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "Encountered an unknown key \'"

    const/16 v2, 0x27

    invoke-static {v2, v1, v6}, Llt0;->d(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Use \'ignoreUnknownKeys = true\' in \'Json {}\' builder or \'@JsonIgnoreUnknownKeys\' annotation to ignore unknown keys."

    invoke-virtual {v12, v0, v1, v2}, Lw98;->k(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x0

    throw v20

    :cond_12
    :goto_7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12}, Lw98;->p()B

    move-result v2

    const/16 v6, 0x8

    const/4 v7, 0x6

    if-eq v2, v6, :cond_13

    if-eq v2, v7, :cond_13

    invoke-virtual {v12}, Lw98;->j()Ljava/lang/String;

    goto :goto_b

    :cond_13
    :goto_8
    invoke-virtual {v12}, Lw98;->p()B

    move-result v2

    move/from16 v10, v19

    if-ne v2, v10, :cond_15

    invoke-virtual {v12}, Lw98;->d()Ljava/lang/String;

    :cond_14
    const/16 v19, 0x1

    goto :goto_8

    :cond_15
    if-eq v2, v6, :cond_1c

    if-ne v2, v7, :cond_16

    goto :goto_9

    :cond_16
    const/16 v10, 0x9

    if-ne v2, v10, :cond_18

    invoke-static {v4}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->byteValue()B

    move-result v2

    if-ne v2, v6, :cond_17

    invoke-static {v4}, Lnn1;->E(Ljava/util/List;)Ljava/lang/Object;

    goto :goto_a

    :cond_17
    const-string v0, "found ] instead of }"

    const/4 v10, 0x0

    invoke-static {v12, v0, v8, v10, v7}, Lw98;->l(Lw98;Ljava/lang/String;ILjava/lang/String;I)V

    throw v10

    :cond_18
    const/4 v10, 0x0

    const/4 v11, 0x7

    if-ne v2, v11, :cond_1a

    invoke-static {v4}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->byteValue()B

    move-result v2

    if-ne v2, v7, :cond_19

    invoke-static {v4}, Lnn1;->E(Ljava/util/List;)Ljava/lang/Object;

    goto :goto_a

    :cond_19
    const-string v0, "found } instead of ]"

    invoke-static {v12, v0, v8, v10, v7}, Lw98;->l(Lw98;Ljava/lang/String;ILjava/lang/String;I)V

    throw v10

    :cond_1a
    const/16 v11, 0xa

    if-eq v2, v11, :cond_1b

    goto :goto_a

    :cond_1b
    const-string v0, "Unexpected end of input due to malformed JSON during ignoring unknown keys"

    invoke-static {v12, v0, v8, v10, v7}, Lw98;->l(Lw98;Ljava/lang/String;ILjava/lang/String;I)V

    throw v10

    :cond_1c
    :goto_9
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a
    invoke-virtual {v12}, Lw98;->e()B

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_14

    :goto_b
    invoke-virtual {v12}, Lw98;->t()Z

    move-result v2

    move v4, v7

    :goto_c
    const/16 v7, 0x3a

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_1d
    const/4 v4, 0x6

    goto :goto_c

    :cond_1e
    if-nez v2, :cond_24

    if-eqz v15, :cond_23

    iget-object v0, v15, Lsc4;->a:Lcw2;

    iget-object v1, v0, Lcw2;->b:Lsc4$a;

    iget-object v2, v0, Lcw2;->a:Lmp7;

    invoke-interface {v2}, Lmp7;->e()I

    move-result v4

    :cond_1f
    iget-wide v5, v0, Lcw2;->c:J

    const-wide/16 v9, -0x1

    cmp-long v7, v5, v9

    if-eqz v7, :cond_20

    not-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v5

    iget-wide v6, v0, Lcw2;->c:J

    shl-long v9, v16, v5

    or-long/2addr v6, v9

    iput-wide v6, v0, Lcw2;->c:J

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lsc4$a;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1f

    move v11, v5

    goto/16 :goto_12

    :cond_20
    if-le v4, v14, :cond_23

    iget-object v0, v0, Lcw2;->d:[J

    array-length v4, v0

    :goto_d
    if-ge v8, v4, :cond_23

    add-int/lit8 v5, v8, 0x1

    mul-int/lit8 v6, v5, 0x40

    aget-wide v13, v0, v8

    :goto_e
    cmp-long v7, v13, v9

    if-eqz v7, :cond_22

    not-long v9, v13

    invoke-static {v9, v10}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v7

    shl-long v9, v16, v7

    or-long/2addr v13, v9

    add-int/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v2, v9}, Lsc4$a;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_21

    aput-wide v13, v0, v8

    goto/16 :goto_5

    :cond_21
    const-wide/16 v9, -0x1

    goto :goto_e

    :cond_22
    aput-wide v13, v0, v8

    move v8, v5

    const-wide/16 v9, -0x1

    goto :goto_d

    :cond_23
    const/4 v11, -0x1

    goto :goto_12

    :cond_24
    iget-object v0, v9, Lxb4;->a:Lfc4;

    invoke-static {v12, v5}, Lyc4;->d(Lw98;Ljava/lang/String;)V

    const/16 v20, 0x0

    throw v20

    :cond_25
    iget v1, v0, Ln98;->e:I

    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_26

    const/4 v10, 0x1

    goto :goto_f

    :cond_26
    move v10, v8

    :goto_f
    if-eqz v10, :cond_27

    const/4 v2, -0x1

    if-eq v1, v2, :cond_28

    invoke-virtual {v12}, Lw98;->t()Z

    move-result v8

    goto :goto_10

    :cond_27
    const/16 v1, 0x3a

    invoke-virtual {v12, v1}, Lw98;->g(C)V

    :cond_28
    :goto_10
    invoke-virtual {v12}, Lw98;->b()Z

    move-result v1

    if-eqz v1, :cond_2d

    if-eqz v10, :cond_2c

    iget v1, v0, Ln98;->e:I

    iget v2, v12, Lw98;->b:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2a

    if-nez v8, :cond_29

    goto :goto_11

    :cond_29
    const-string v0, "Unexpected leading comma"

    const/4 v4, 0x0

    invoke-static {v12, v0, v2, v4, v6}, Lw98;->l(Lw98;Ljava/lang/String;ILjava/lang/String;I)V

    throw v4

    :cond_2a
    const/4 v4, 0x0

    if-eqz v8, :cond_2b

    goto :goto_11

    :cond_2b
    const-string v0, "Expected comma after the key-value pair"

    invoke-static {v12, v0, v2, v4, v6}, Lw98;->l(Lw98;Ljava/lang/String;ILjava/lang/String;I)V

    throw v4

    :cond_2c
    :goto_11
    iget v1, v0, Ln98;->e:I

    const/16 v19, 0x1

    add-int/lit8 v11, v1, 0x1

    iput v11, v0, Ln98;->e:I

    goto :goto_12

    :cond_2d
    const/4 v4, -0x1

    if-nez v8, :cond_2f

    move v11, v4

    :goto_12
    sget-object v0, Lml9;->MAP:Lml9;

    if-eq v3, v0, :cond_2e

    iget-object v0, v12, Lw98;->c:Lod4;

    iget-object v1, v0, Lod4;->c:[I

    iget v0, v0, Lod4;->d:I

    aput v11, v1, v0

    :cond_2e
    return v11

    :cond_2f
    iget-object v0, v9, Lxb4;->a:Lfc4;

    invoke-static {v12, v5}, Lyc4;->d(Lw98;Ljava/lang/String;)V

    const/16 v20, 0x0

    throw v20
.end method

.method public final decodeEnum(Lmp7;)I
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ln98;->decodeString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ln98;->c:Lw98;

    iget-object v1, v1, Lw98;->c:Lod4;

    invoke-virtual {v1}, Lod4;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, " at path "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Ln98;->a:Lxb4;

    invoke-static {p1, p0, v0, v1}, Lfd4;->b(Lmp7;Lxb4;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final decodeFloat()F
    .locals 5

    iget-object v0, p0, Ln98;->c:Lw98;

    invoke-virtual {v0}, Lw98;->j()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Ln98;->a:Lxb4;

    iget-object p0, p0, Lxb4;->a:Lfc4;

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float p0, p0, v4

    if-gtz p0, :cond_0

    return v1

    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {v3, p0}, Lyc4;->f(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "It is possible to deserialize them using \'JsonBuilder.allowSpecialFloatingPointValues = true\'"

    const/4 v4, 0x2

    invoke-static {v0, p0, v2, v1, v4}, Lw98;->l(Lw98;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3

    :catch_0
    const-string p0, "Failed to parse type \'float\' for input \'"

    const/16 v4, 0x27

    invoke-static {v4, p0, v1}, Llt0;->d(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x6

    invoke-static {v0, p0, v2, v3, v1}, Lw98;->l(Lw98;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3
.end method

.method public final decodeInline(Lmp7;)Lud2;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lp98;->a(Lmp7;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Llc4;

    iget-object v0, p0, Ln98;->c:Lw98;

    iget-object p0, p0, Ln98;->a:Lxb4;

    invoke-direct {p1, v0, p0}, Llc4;-><init>(Lw98;Lxb4;)V

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lf0;->decodeInline(Lmp7;)Lud2;

    move-result-object p0

    return-object p0
.end method

.method public final decodeInt()I
    .locals 5

    iget-object p0, p0, Ln98;->c:Lw98;

    invoke-virtual {p0}, Lw98;->h()J

    move-result-wide v0

    long-to-int v2, v0

    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    const-string v2, "Failed to parse int for input \'"

    const/16 v3, 0x27

    invoke-static {v2, v0, v1, v3}, Lrg;->g(Ljava/lang/String;JC)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v3, v2}, Lw98;->l(Lw98;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3
.end method

.method public final decodeLong()J
    .locals 2

    iget-object p0, p0, Ln98;->c:Lw98;

    invoke-virtual {p0}, Lw98;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public final decodeNotNullMark()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Ln98;->h:Lsc4;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lsc4;->b:Z

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-nez v1, :cond_1

    iget-object p0, p0, Ln98;->c:Lw98;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lw98;->u(Z)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public final decodeNull()Ljava/lang/Void;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmp7;",
            "I",
            "Lxl2<",
            "+TT;>;TT;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Ln98;->b:Lml9;

    sget-object v1, Lml9;->MAP:Lml9;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x2

    iget-object v3, p0, Ln98;->c:Lw98;

    if-eqz v0, :cond_1

    iget-object v4, v3, Lw98;->c:Lod4;

    iget-object v5, v4, Lod4;->c:[I

    iget v6, v4, Lod4;->d:I

    aget v5, v5, v6

    if-ne v5, v1, :cond_1

    iget-object v4, v4, Lod4;->b:[Ljava/lang/Object;

    sget-object v5, Lod4$b;->a:Lod4$b;

    aput-object v5, v4, v6

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lf0;->decodeSerializableElement(Lmp7;ILxl2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz v0, :cond_4

    iget-object p1, v3, Lw98;->c:Lod4;

    iget-object p2, p1, Lod4;->c:[I

    iget p3, p1, Lod4;->d:I

    aget p2, p2, p3

    if-eq p2, v1, :cond_2

    add-int/2addr p3, v2

    iput p3, p1, Lod4;->d:I

    iget-object p2, p1, Lod4;->b:[Ljava/lang/Object;

    array-length p2, p2

    if-ne p3, p2, :cond_2

    invoke-virtual {p1}, Lod4;->b()V

    :cond_2
    iget-object p2, p1, Lod4;->b:[Ljava/lang/Object;

    iget p3, p1, Lod4;->d:I

    iget-object p4, p1, Lod4;->a:Lfc4;

    iget-boolean p4, p4, Lfc4;->h:Z

    if-eqz p4, :cond_3

    move-object p4, p0

    goto :goto_1

    :cond_3
    sget-object p4, Lod4$a;->a:Lod4$a;

    :goto_1
    aput-object p4, p2, p3

    iget-object p1, p1, Lod4;->c:[I

    aput v1, p1, p3

    :cond_4
    return-object p0
.end method

.method public final decodeSerializableValue(Lxl2;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lxl2<",
            "+TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Ln98;->a:Lxb4;

    iget-object v1, p0, Ln98;->c:Lw98;

    const-string v2, "Expected "

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    :try_start_0
    instance-of v4, p1, Lk1;

    if-eqz v4, :cond_7

    iget-object v4, v0, Lxb4;->a:Lfc4;

    move-object v4, p1

    check-cast v4, Lk1;

    invoke-interface {v4}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v4

    invoke-static {v0, v4}, Lca6;->a(Lxb4;Lmp7;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ln98;->g:Lfc4;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v4}, Lw98;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-nez v5, :cond_5

    iget-object v4, v0, Lxb4;->a:Lfc4;

    move-object v4, p1

    check-cast v4, Lk1;

    invoke-interface {v4}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v4

    invoke-static {v0, v4}, Lca6;->a(Lxb4;Lmp7;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ln98;->a()Loc4;

    move-result-object v5

    move-object v8, p1

    check-cast v8, Lk1;

    invoke-interface {v8}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v8

    invoke-interface {v8}, Lmp7;->h()Ljava/lang/String;

    move-result-object v8

    instance-of v9, v5, Ljd4;

    if-nez v9, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class p1, Ljd4;

    invoke-static {p1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p1

    invoke-virtual {p1}, Lzk1;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but had "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p1

    invoke-virtual {p1}, Lzk1;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as the serialized body of "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object p1, v1, Lw98;->c:Lod4;

    invoke-virtual {p1}, Lod4;->a()Ljava/lang/String;

    move-result-object p1

    iget-object v0, v0, Lxb4;->a:Lfc4;

    iget-boolean v0, v0, Lfc4;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lyc4;->e(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    move-object v0, v7

    :goto_0
    new-instance v2, Lkotlinx/serialization/json/JsonDecodingException;

    invoke-static {v6, p0, p1, v7, v0}, Lyc4;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lkotlinx/serialization/json/JsonException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    check-cast v5, Ljd4;

    invoke-virtual {v5, v4}, Ljd4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loc4;

    if-eqz v2, :cond_3

    invoke-static {v2}, Lrc4;->a(Loc4;)Lpd4;

    move-result-object v2

    instance-of v8, v2, Lgd4;

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lpd4;->a()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lkotlinx/serialization/MissingFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_3
    :goto_1
    move-object v2, v7

    :goto_2
    :try_start_1
    check-cast p1, Lk1;

    invoke-static {p1, p0, v2}, Lea6;->a(Lk1;Ldu1;Ljava/lang/String;)Lxl2;

    move-result-object p0
    :try_end_1
    .catch Lkotlinx/serialization/SerializationException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lzd4;

    invoke-interface {p0}, Lxl2;->getDescriptor()Lmp7;

    move-result-object v2

    invoke-direct {p1, v0, v5, v4, v2}, Lzd4;-><init>(Lxb4;Ljd4;Ljava/lang/String;Lmp7;)V

    invoke-virtual {p1, p0}, Lt0;->decodeSerializableValue(Lxl2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Lxb4;->a:Lfc4;

    iget-boolean p1, p1, Lfc4;->h:Z

    if-eqz p1, :cond_4

    invoke-virtual {v5}, Ljd4;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lyc4;->e(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    move-object p1, v7

    :goto_3
    new-instance v0, Lkotlinx/serialization/json/JsonDecodingException;

    invoke-static {v6, p0, v7, v7, p1}, Lyc4;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lkotlinx/serialization/json/JsonException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lkotlinx/serialization/MissingFieldException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    :try_start_3
    check-cast p1, Lk1;

    invoke-static {p1, p0, v5}, Lea6;->a(Lk1;Ldu1;Ljava/lang/String;)Lxl2;

    move-result-object p1
    :try_end_3
    .catch Lkotlinx/serialization/SerializationException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    new-instance v0, Ln98$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Ln98$a;->a:Ljava/lang/String;

    iput-object v0, p0, Ln98;->f:Ln98$a;

    invoke-interface {p1, p0}, Lxl2;->deserialize(Lud2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lta8;->c0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    const-string v2, "."

    invoke-static {p1, v2}, Lta8;->U(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, ""

    const/4 v4, 0x6

    invoke-static {v0, v3, v4, p0}, Lta8;->J(CIILjava/lang/CharSequence;)I

    move-result v0

    if-ne v0, v6, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_4
    const/4 p0, 0x2

    invoke-static {v1, p1, v3, v2, p0}, Lw98;->l(Lw98;Ljava/lang/String;ILjava/lang/String;I)V

    throw v7

    :cond_7
    invoke-interface {p1, p0}, Lxl2;->deserialize(Lud2;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Lkotlinx/serialization/MissingFieldException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p0

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "at path"

    invoke-static {p1, v0, v3}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_8

    throw p0

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " at path: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lw98;->c:Lod4;

    invoke-virtual {v0}, Lod4;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lkotlinx/serialization/MissingFieldException;

    iget-object v1, p0, Lkotlinx/serialization/MissingFieldException;->b:Ljava/util/List;

    iget-object v2, p0, Lkotlinx/serialization/MissingFieldException;->c:Ljava/lang/String;

    invoke-direct {v0, p1, p0, v1, v2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;Lkotlinx/serialization/MissingFieldException;Ljava/util/List;Ljava/lang/String;)V

    throw v0
.end method

.method public final decodeShort()S
    .locals 5

    iget-object p0, p0, Ln98;->c:Lw98;

    invoke-virtual {p0}, Lw98;->h()J

    move-result-wide v0

    long-to-int v2, v0

    int-to-short v2, v2

    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    const-string v2, "Failed to parse short for input \'"

    const/16 v3, 0x27

    invoke-static {v2, v0, v1, v3}, Lrg;->g(Ljava/lang/String;JC)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v3, v2}, Lw98;->l(Lw98;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3
.end method

.method public final decodeString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ln98;->g:Lfc4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Ln98;->c:Lw98;

    invoke-virtual {p0}, Lw98;->i()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final endStructure(Lmp7;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lmp7;->e()I

    move-result v0

    const/4 v1, -0x1

    iget-object v2, p0, Ln98;->a:Lxb4;

    if-nez v0, :cond_1

    invoke-static {v2, p1}, Lfd4;->c(Lxb4;Lmp7;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Ln98;->decodeElementIndex(Lmp7;)I

    move-result v0

    if-ne v0, v1, :cond_0

    :cond_1
    iget-object p1, p0, Ln98;->c:Lw98;

    invoke-virtual {p1}, Lw98;->t()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Ln98;->b:Lml9;

    iget-char p0, p0, Lml9;->end:C

    invoke-virtual {p1, p0}, Lw98;->g(C)V

    iget-object p0, p1, Lw98;->c:Lod4;

    iget p1, p0, Lod4;->d:I

    iget-object v0, p0, Lod4;->c:[I

    aget v2, v0, p1

    const/4 v3, -0x2

    if-ne v2, v3, :cond_2

    aput v1, v0, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lod4;->d:I

    :cond_2
    if-eq p1, v1, :cond_3

    add-int/2addr p1, v1

    iput p1, p0, Lod4;->d:I

    :cond_3
    return-void

    :cond_4
    iget-object p0, v2, Lxb4;->a:Lfc4;

    const-string p0, ""

    invoke-static {p1, p0}, Lyc4;->d(Lw98;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getSerializersModule()Ljq7;
    .locals 0

    iget-object p0, p0, Ln98;->d:Ljq7;

    return-object p0
.end method
