.class public final Lmc1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final A:J

.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:J

.field public final i:J

.field public final j:J

.field public final k:J

.field public final l:J

.field public final m:J

.field public final n:J

.field public final o:J

.field public final p:J

.field public final q:J

.field public final r:J

.field public final s:J

.field public final t:J

.field public final u:J

.field public final v:J

.field public final w:J

.field public final x:J

.field public final y:J

.field public final z:J


# direct methods
.method public constructor <init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lmc1;->a:J

    iput-wide p3, p0, Lmc1;->b:J

    iput-wide p5, p0, Lmc1;->c:J

    iput-wide p7, p0, Lmc1;->d:J

    iput-wide p9, p0, Lmc1;->e:J

    iput-wide p11, p0, Lmc1;->f:J

    iput-wide p13, p0, Lmc1;->g:J

    move-wide p1, p15

    iput-wide p1, p0, Lmc1;->h:J

    move-wide/from16 p1, p17

    iput-wide p1, p0, Lmc1;->i:J

    move-wide/from16 p1, p19

    iput-wide p1, p0, Lmc1;->j:J

    move-wide/from16 p1, p21

    iput-wide p1, p0, Lmc1;->k:J

    move-wide/from16 p1, p23

    iput-wide p1, p0, Lmc1;->l:J

    move-wide/from16 p1, p25

    iput-wide p1, p0, Lmc1;->m:J

    move-wide/from16 p1, p27

    iput-wide p1, p0, Lmc1;->n:J

    move-wide/from16 p1, p29

    iput-wide p1, p0, Lmc1;->o:J

    move-wide/from16 p1, p31

    iput-wide p1, p0, Lmc1;->p:J

    move-wide/from16 p1, p33

    iput-wide p1, p0, Lmc1;->q:J

    move-wide/from16 p1, p35

    iput-wide p1, p0, Lmc1;->r:J

    move-wide/from16 p1, p37

    iput-wide p1, p0, Lmc1;->s:J

    move-wide/from16 p1, p39

    iput-wide p1, p0, Lmc1;->t:J

    move-wide/from16 p1, p41

    iput-wide p1, p0, Lmc1;->u:J

    move-wide/from16 p1, p43

    iput-wide p1, p0, Lmc1;->v:J

    move-wide/from16 p1, p45

    iput-wide p1, p0, Lmc1;->w:J

    move-wide/from16 p1, p47

    iput-wide p1, p0, Lmc1;->x:J

    move-wide/from16 p1, p49

    iput-wide p1, p0, Lmc1;->y:J

    move-wide/from16 p1, p51

    iput-wide p1, p0, Lmc1;->z:J

    move-wide/from16 p1, p53

    iput-wide p1, p0, Lmc1;->A:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lmc1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lmc1;

    iget-wide v3, p0, Lmc1;->a:J

    iget-wide v5, p1, Lmc1;->a:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lmc1;->b:J

    iget-wide v5, p1, Lmc1;->b:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lmc1;->c:J

    iget-wide v5, p1, Lmc1;->c:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lmc1;->d:J

    iget-wide v5, p1, Lmc1;->d:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lmc1;->e:J

    iget-wide v5, p1, Lmc1;->e:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lmc1;->f:J

    iget-wide v5, p1, Lmc1;->f:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lmc1;->g:J

    iget-wide v5, p1, Lmc1;->g:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lmc1;->h:J

    iget-wide v5, p1, Lmc1;->h:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lmc1;->i:J

    iget-wide v5, p1, Lmc1;->i:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-wide v3, p0, Lmc1;->j:J

    iget-wide v5, p1, Lmc1;->j:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-wide v3, p0, Lmc1;->k:J

    iget-wide v5, p1, Lmc1;->k:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-wide v3, p0, Lmc1;->l:J

    iget-wide v5, p1, Lmc1;->l:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-wide v3, p0, Lmc1;->m:J

    iget-wide v5, p1, Lmc1;->m:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-wide v3, p0, Lmc1;->n:J

    iget-wide v5, p1, Lmc1;->n:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-wide v3, p0, Lmc1;->o:J

    iget-wide v5, p1, Lmc1;->o:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-wide v3, p0, Lmc1;->p:J

    iget-wide v5, p1, Lmc1;->p:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-wide v3, p0, Lmc1;->q:J

    iget-wide v5, p1, Lmc1;->q:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-wide v3, p0, Lmc1;->r:J

    iget-wide v5, p1, Lmc1;->r:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-wide v3, p0, Lmc1;->s:J

    iget-wide v5, p1, Lmc1;->s:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-wide v3, p0, Lmc1;->t:J

    iget-wide v5, p1, Lmc1;->t:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-wide v3, p0, Lmc1;->u:J

    iget-wide v5, p1, Lmc1;->u:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-wide v3, p0, Lmc1;->v:J

    iget-wide v5, p1, Lmc1;->v:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-wide v3, p0, Lmc1;->w:J

    iget-wide v5, p1, Lmc1;->w:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-wide v3, p0, Lmc1;->x:J

    iget-wide v5, p1, Lmc1;->x:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-wide v3, p0, Lmc1;->y:J

    iget-wide v5, p1, Lmc1;->y:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-wide v3, p0, Lmc1;->z:J

    iget-wide v5, p1, Lmc1;->z:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget-wide v3, p0, Lmc1;->A:J

    iget-wide p0, p1, Lmc1;->A:J

    invoke-static {v3, v4, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_1c

    return v2

    :cond_1c
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lmc1;->a:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lmc1;->b:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Lmc1;->c:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Lmc1;->d:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Lmc1;->e:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Lmc1;->f:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Lmc1;->g:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Lmc1;->h:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Lmc1;->i:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Lmc1;->j:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Lmc1;->k:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Lmc1;->l:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Lmc1;->m:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Lmc1;->n:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Lmc1;->o:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Lmc1;->p:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Lmc1;->q:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Lmc1;->r:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Lmc1;->s:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Lmc1;->t:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Lmc1;->u:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Lmc1;->v:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Lmc1;->w:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Lmc1;->x:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Lmc1;->y:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Lmc1;->z:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v1, p0, Lmc1;->A:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 30

    move-object/from16 v0, p0

    iget-wide v1, v0, Lmc1;->a:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, v0, Lmc1;->b:J

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, v0, Lmc1;->c:J

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v0, Lmc1;->d:J

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, v0, Lmc1;->e:J

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v0, Lmc1;->f:J

    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v6

    iget-wide v7, v0, Lmc1;->g:J

    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v0, Lmc1;->h:J

    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v8

    iget-wide v9, v0, Lmc1;->i:J

    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v9

    iget-wide v10, v0, Lmc1;->j:J

    invoke-static {v10, v11}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v10

    iget-wide v11, v0, Lmc1;->k:J

    invoke-static {v11, v12}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v11

    iget-wide v12, v0, Lmc1;->l:J

    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v12

    iget-wide v13, v0, Lmc1;->m:J

    invoke-static {v13, v14}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v13

    iget-wide v14, v0, Lmc1;->n:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v14

    move-object v15, v13

    move-object/from16 v16, v14

    iget-wide v13, v0, Lmc1;->o:J

    invoke-static {v13, v14}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v17, v15

    iget-wide v14, v0, Lmc1;->p:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v14

    move-object v15, v13

    move-object/from16 v18, v14

    iget-wide v13, v0, Lmc1;->q:J

    invoke-static {v13, v14}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v19, v15

    iget-wide v14, v0, Lmc1;->r:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v14

    move-object v15, v13

    move-object/from16 v20, v14

    iget-wide v13, v0, Lmc1;->s:J

    invoke-static {v13, v14}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v21, v15

    iget-wide v14, v0, Lmc1;->t:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v14

    move-object v15, v13

    move-object/from16 v22, v14

    iget-wide v13, v0, Lmc1;->u:J

    invoke-static {v13, v14}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v23, v15

    iget-wide v14, v0, Lmc1;->v:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v14

    move-object v15, v13

    move-object/from16 v24, v14

    iget-wide v13, v0, Lmc1;->w:J

    invoke-static {v13, v14}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v25, v15

    iget-wide v14, v0, Lmc1;->x:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v14

    move-object v15, v13

    move-object/from16 v26, v14

    iget-wide v13, v0, Lmc1;->y:J

    invoke-static {v13, v14}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v27, v15

    iget-wide v14, v0, Lmc1;->z:J

    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v14

    move-object v15, v13

    move-object/from16 v28, v14

    iget-wide v13, v0, Lmc1;->A:J

    invoke-static {v13, v14}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    const-string v13, ", primary20="

    const-string v14, ", primary30="

    move-object/from16 v29, v15

    const-string v15, "CheckscanColors(primary10="

    invoke-static {v15, v1, v13, v2, v14}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", primary40="

    const-string v13, ", primary60="

    invoke-static {v1, v3, v2, v4, v13}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ", gray10="

    const-string v3, ", gray20="

    invoke-static {v1, v5, v2, v6, v3}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ", gray30="

    const-string v3, ", gray40="

    invoke-static {v1, v7, v2, v8, v3}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ", gray60="

    const-string v3, ", gray80="

    invoke-static {v1, v9, v2, v10, v3}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ", gray100="

    const-string v3, ", success10="

    invoke-static {v1, v11, v2, v12, v3}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ", success40="

    const-string v3, ", success80="

    move-object/from16 v4, v16

    move-object/from16 v15, v17

    invoke-static {v1, v15, v2, v4, v3}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ", success100="

    const-string v3, ", warning10="

    move-object/from16 v4, v18

    move-object/from16 v15, v19

    invoke-static {v1, v15, v2, v4, v3}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ", warning30="

    const-string v3, ", warning40="

    move-object/from16 v4, v20

    move-object/from16 v15, v21

    invoke-static {v1, v15, v2, v4, v3}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ", warning60="

    const-string v3, ", warning80="

    move-object/from16 v4, v22

    move-object/from16 v15, v23

    invoke-static {v1, v15, v2, v4, v3}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ", red10="

    const-string v3, ", red20="

    move-object/from16 v4, v24

    move-object/from16 v15, v25

    invoke-static {v1, v15, v2, v4, v3}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ", red60="

    const-string v3, ", red90="

    move-object/from16 v4, v26

    move-object/from16 v15, v27

    invoke-static {v1, v15, v2, v4, v3}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ", white="

    const-string v3, ", black="

    move-object/from16 v4, v28

    move-object/from16 v15, v29

    invoke-static {v1, v15, v2, v4, v3}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ")"

    invoke-static {v1, v0, v2}, Lme0;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
