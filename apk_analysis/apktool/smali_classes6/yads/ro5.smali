.class public final Lyads/ro5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final w:Lyads/g12;


# instance fields
.field public final b:I

.field public final c:I

.field public final d:Lyads/d82;

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/Integer;

.field public final i:Lyads/g12;

.field public final j:Lyads/tf1;

.field public final k:Ljava/lang/Integer;

.field public final l:Lorg/json/JSONObject;

.field public final m:Ljava/lang/Double;

.field public final n:Ljava/lang/Integer;

.field public final o:Lyads/bx3;

.field public final p:Lyads/bp1;

.field public final q:Ljava/lang/Integer;

.field public final r:Lyads/yj5;

.field public final s:Ljava/lang/Integer;

.field public final t:Ljava/lang/Integer;

.field public final u:Ljava/lang/Integer;

.field public final v:Lyads/bp1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lyads/g12;->f:Lyads/g12;

    sput-object v0, Lyads/ro5;->w:Lyads/g12;

    return-void
.end method

.method public constructor <init>(IILyads/d82;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lyads/g12;Lyads/tf1;Ljava/lang/Integer;Lorg/json/JSONObject;Ljava/lang/Double;Ljava/lang/Integer;Lyads/bx3;Lyads/bp1;Ljava/lang/Integer;Lyads/yj5;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lyads/bp1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lyads/ro5;->b:I

    iput p2, p0, Lyads/ro5;->c:I

    iput-object p3, p0, Lyads/ro5;->d:Lyads/d82;

    iput p4, p0, Lyads/ro5;->e:I

    iput-object p5, p0, Lyads/ro5;->f:Ljava/lang/String;

    iput-object p6, p0, Lyads/ro5;->g:Ljava/lang/String;

    iput-object p7, p0, Lyads/ro5;->h:Ljava/lang/Integer;

    iput-object p8, p0, Lyads/ro5;->i:Lyads/g12;

    iput-object p9, p0, Lyads/ro5;->j:Lyads/tf1;

    iput-object p10, p0, Lyads/ro5;->k:Ljava/lang/Integer;

    iput-object p11, p0, Lyads/ro5;->l:Lorg/json/JSONObject;

    iput-object p12, p0, Lyads/ro5;->m:Ljava/lang/Double;

    iput-object p13, p0, Lyads/ro5;->n:Ljava/lang/Integer;

    iput-object p14, p0, Lyads/ro5;->o:Lyads/bx3;

    iput-object p15, p0, Lyads/ro5;->p:Lyads/bp1;

    move-object/from16 p1, p16

    iput-object p1, p0, Lyads/ro5;->q:Ljava/lang/Integer;

    move-object/from16 p1, p17

    iput-object p1, p0, Lyads/ro5;->r:Lyads/yj5;

    move-object/from16 p1, p18

    iput-object p1, p0, Lyads/ro5;->s:Ljava/lang/Integer;

    move-object/from16 p1, p19

    iput-object p1, p0, Lyads/ro5;->t:Ljava/lang/Integer;

    move-object/from16 p1, p20

    iput-object p1, p0, Lyads/ro5;->u:Ljava/lang/Integer;

    move-object/from16 p1, p21

    iput-object p1, p0, Lyads/ro5;->v:Lyads/bp1;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 160
    iget p0, p0, Lyads/ro5;->b:I

    return p0
.end method

.method public final a(Lyads/ro5;II)Lyads/ro5;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lyads/ro5;

    iget-object v3, v1, Lyads/ro5;->d:Lyads/d82;

    if-nez v3, :cond_0

    iget-object v3, v0, Lyads/ro5;->d:Lyads/d82;

    :cond_0
    iget v4, v1, Lyads/ro5;->e:I

    if-nez v4, :cond_1

    iget v4, v0, Lyads/ro5;->e:I

    :cond_1
    iget-object v5, v1, Lyads/ro5;->f:Ljava/lang/String;

    if-nez v5, :cond_2

    iget-object v5, v0, Lyads/ro5;->f:Ljava/lang/String;

    :cond_2
    iget-object v6, v1, Lyads/ro5;->g:Ljava/lang/String;

    if-nez v6, :cond_3

    iget-object v6, v0, Lyads/ro5;->g:Ljava/lang/String;

    :cond_3
    iget-object v7, v1, Lyads/ro5;->h:Ljava/lang/Integer;

    if-nez v7, :cond_4

    iget-object v7, v0, Lyads/ro5;->h:Ljava/lang/Integer;

    :cond_4
    iget-object v8, v1, Lyads/ro5;->i:Lyads/g12;

    sget-object v9, Lyads/ro5;->w:Lyads/g12;

    if-ne v8, v9, :cond_5

    iget-object v8, v0, Lyads/ro5;->i:Lyads/g12;

    :cond_5
    iget-object v9, v1, Lyads/ro5;->j:Lyads/tf1;

    if-nez v9, :cond_6

    iget-object v9, v0, Lyads/ro5;->j:Lyads/tf1;

    :cond_6
    iget-object v10, v1, Lyads/ro5;->k:Ljava/lang/Integer;

    if-nez v10, :cond_7

    iget-object v10, v0, Lyads/ro5;->k:Ljava/lang/Integer;

    :cond_7
    iget-object v11, v1, Lyads/ro5;->l:Lorg/json/JSONObject;

    if-nez v11, :cond_8

    iget-object v11, v0, Lyads/ro5;->l:Lorg/json/JSONObject;

    :cond_8
    iget-object v12, v1, Lyads/ro5;->m:Ljava/lang/Double;

    if-nez v12, :cond_9

    iget-object v12, v0, Lyads/ro5;->m:Ljava/lang/Double;

    :cond_9
    iget-object v13, v1, Lyads/ro5;->n:Ljava/lang/Integer;

    if-nez v13, :cond_a

    iget-object v13, v0, Lyads/ro5;->n:Ljava/lang/Integer;

    :cond_a
    iget-object v14, v1, Lyads/ro5;->o:Lyads/bx3;

    if-nez v14, :cond_b

    iget-object v14, v0, Lyads/ro5;->o:Lyads/bx3;

    :cond_b
    iget-object v15, v1, Lyads/ro5;->p:Lyads/bp1;

    if-nez v15, :cond_c

    iget-object v15, v0, Lyads/ro5;->p:Lyads/bp1;

    :cond_c
    move-object/from16 v16, v2

    iget-object v2, v1, Lyads/ro5;->q:Ljava/lang/Integer;

    if-nez v2, :cond_d

    iget-object v2, v0, Lyads/ro5;->q:Ljava/lang/Integer;

    :cond_d
    move-object/from16 v17, v2

    iget-object v2, v1, Lyads/ro5;->r:Lyads/yj5;

    if-nez v2, :cond_e

    iget-object v2, v0, Lyads/ro5;->r:Lyads/yj5;

    :cond_e
    move-object/from16 v18, v2

    iget-object v2, v1, Lyads/ro5;->s:Ljava/lang/Integer;

    move-object/from16 v19, v2

    if-nez v2, :cond_f

    iget-object v2, v0, Lyads/ro5;->s:Ljava/lang/Integer;

    :cond_f
    if-eqz v19, :cond_10

    move-object/from16 v20, v2

    iget-object v2, v1, Lyads/ro5;->t:Ljava/lang/Integer;

    goto :goto_0

    :cond_10
    move-object/from16 v20, v2

    iget-object v2, v0, Lyads/ro5;->t:Ljava/lang/Integer;

    :goto_0
    if-eqz v19, :cond_11

    move-object/from16 v19, v2

    iget-object v2, v1, Lyads/ro5;->u:Ljava/lang/Integer;

    goto :goto_1

    :cond_11
    move-object/from16 v19, v2

    iget-object v2, v0, Lyads/ro5;->u:Ljava/lang/Integer;

    :goto_1
    iget-object v1, v1, Lyads/ro5;->v:Lyads/bp1;

    if-nez v1, :cond_12

    iget-object v1, v0, Lyads/ro5;->v:Lyads/bp1;

    :cond_12
    move-object/from16 v21, v1

    move-object/from16 v0, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v20

    move/from16 v1, p2

    move-object/from16 v20, v2

    move/from16 v2, p3

    invoke-direct/range {v0 .. v21}, Lyads/ro5;-><init>(IILyads/d82;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lyads/g12;Lyads/tf1;Ljava/lang/Integer;Lorg/json/JSONObject;Ljava/lang/Double;Ljava/lang/Integer;Lyads/bx3;Lyads/bp1;Ljava/lang/Integer;Lyads/yj5;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lyads/bp1;)V

    return-object v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lyads/ro5;

    iget p0, p0, Lyads/ro5;->b:I

    iget p1, p1, Lyads/ro5;->b:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/ro5;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/ro5;

    iget v1, p0, Lyads/ro5;->b:I

    iget v3, p1, Lyads/ro5;->b:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lyads/ro5;->c:I

    iget v3, p1, Lyads/ro5;->c:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lyads/ro5;->d:Lyads/d82;

    iget-object v3, p1, Lyads/ro5;->d:Lyads/d82;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lyads/ro5;->e:I

    iget v3, p1, Lyads/ro5;->e:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lyads/ro5;->f:Ljava/lang/String;

    iget-object v3, p1, Lyads/ro5;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lyads/ro5;->g:Ljava/lang/String;

    iget-object v3, p1, Lyads/ro5;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lyads/ro5;->h:Ljava/lang/Integer;

    iget-object v3, p1, Lyads/ro5;->h:Ljava/lang/Integer;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lyads/ro5;->i:Lyads/g12;

    iget-object v3, p1, Lyads/ro5;->i:Lyads/g12;

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lyads/ro5;->j:Lyads/tf1;

    iget-object v3, p1, Lyads/ro5;->j:Lyads/tf1;

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lyads/ro5;->k:Ljava/lang/Integer;

    iget-object v3, p1, Lyads/ro5;->k:Ljava/lang/Integer;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lyads/ro5;->l:Lorg/json/JSONObject;

    iget-object v3, p1, Lyads/ro5;->l:Lorg/json/JSONObject;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lyads/ro5;->m:Ljava/lang/Double;

    iget-object v3, p1, Lyads/ro5;->m:Ljava/lang/Double;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lyads/ro5;->n:Ljava/lang/Integer;

    iget-object v3, p1, Lyads/ro5;->n:Ljava/lang/Integer;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lyads/ro5;->o:Lyads/bx3;

    iget-object v3, p1, Lyads/ro5;->o:Lyads/bx3;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lyads/ro5;->p:Lyads/bp1;

    iget-object v3, p1, Lyads/ro5;->p:Lyads/bp1;

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lyads/ro5;->q:Ljava/lang/Integer;

    iget-object v3, p1, Lyads/ro5;->q:Ljava/lang/Integer;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lyads/ro5;->r:Lyads/yj5;

    iget-object v3, p1, Lyads/ro5;->r:Lyads/yj5;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lyads/ro5;->s:Ljava/lang/Integer;

    iget-object v3, p1, Lyads/ro5;->s:Ljava/lang/Integer;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lyads/ro5;->t:Ljava/lang/Integer;

    iget-object v3, p1, Lyads/ro5;->t:Ljava/lang/Integer;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lyads/ro5;->u:Ljava/lang/Integer;

    iget-object v3, p1, Lyads/ro5;->u:Ljava/lang/Integer;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object p0, p0, Lyads/ro5;->v:Lyads/bp1;

    iget-object p1, p1, Lyads/ro5;->v:Lyads/bp1;

    if-eq p0, p1, :cond_16

    return v2

    :cond_16
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lyads/ro5;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lyads/ro5;->c:I

    invoke-static {v2, v0, v1}, Lyads/i96;->a(III)I

    move-result v0

    iget-object v2, p0, Lyads/ro5;->d:Lyads/d82;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lyads/ro5;->e:I

    invoke-static {v2, v0, v1}, Lyads/i96;->a(III)I

    move-result v0

    iget-object v2, p0, Lyads/ro5;->f:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lyads/ro5;->g:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lyads/ro5;->h:Ljava/lang/Integer;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lyads/ro5;->i:Lyads/g12;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lyads/ro5;->j:Lyads/tf1;

    if-nez v0, :cond_4

    move v0, v3

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lyads/ro5;->k:Ljava/lang/Integer;

    if-nez v0, :cond_5

    move v0, v3

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lyads/ro5;->l:Lorg/json/JSONObject;

    if-nez v0, :cond_6

    move v0, v3

    goto :goto_6

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lyads/ro5;->m:Ljava/lang/Double;

    if-nez v0, :cond_7

    move v0, v3

    goto :goto_7

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lyads/ro5;->n:Ljava/lang/Integer;

    if-nez v0, :cond_8

    move v0, v3

    goto :goto_8

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lyads/ro5;->o:Lyads/bx3;

    if-nez v0, :cond_9

    move v0, v3

    goto :goto_9

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lyads/ro5;->p:Lyads/bp1;

    if-nez v0, :cond_a

    move v0, v3

    goto :goto_a

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lyads/ro5;->q:Ljava/lang/Integer;

    if-nez v0, :cond_b

    move v0, v3

    goto :goto_b

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lyads/ro5;->r:Lyads/yj5;

    if-nez v0, :cond_c

    move v0, v3

    goto :goto_c

    :cond_c
    invoke-virtual {v0}, Lyads/yj5;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lyads/ro5;->s:Ljava/lang/Integer;

    if-nez v0, :cond_d

    move v0, v3

    goto :goto_d

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_d
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lyads/ro5;->t:Ljava/lang/Integer;

    if-nez v0, :cond_e

    move v0, v3

    goto :goto_e

    :cond_e
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_e
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lyads/ro5;->u:Ljava/lang/Integer;

    if-nez v0, :cond_f

    move v0, v3

    goto :goto_f

    :cond_f
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_f
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lyads/ro5;->v:Lyads/bp1;

    if-nez p0, :cond_10

    goto :goto_10

    :cond_10
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_10
    add-int/2addr v2, v3

    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 23

    move-object/from16 v0, p0

    iget v1, v0, Lyads/ro5;->b:I

    iget v2, v0, Lyads/ro5;->c:I

    iget-object v3, v0, Lyads/ro5;->d:Lyads/d82;

    iget v4, v0, Lyads/ro5;->e:I

    iget-object v5, v0, Lyads/ro5;->f:Ljava/lang/String;

    iget-object v6, v0, Lyads/ro5;->g:Ljava/lang/String;

    iget-object v7, v0, Lyads/ro5;->h:Ljava/lang/Integer;

    iget-object v8, v0, Lyads/ro5;->i:Lyads/g12;

    iget-object v9, v0, Lyads/ro5;->j:Lyads/tf1;

    iget-object v10, v0, Lyads/ro5;->k:Ljava/lang/Integer;

    iget-object v11, v0, Lyads/ro5;->l:Lorg/json/JSONObject;

    iget-object v12, v0, Lyads/ro5;->m:Ljava/lang/Double;

    iget-object v13, v0, Lyads/ro5;->n:Ljava/lang/Integer;

    iget-object v14, v0, Lyads/ro5;->o:Lyads/bx3;

    iget-object v15, v0, Lyads/ro5;->p:Lyads/bp1;

    move-object/from16 v16, v15

    iget-object v15, v0, Lyads/ro5;->q:Ljava/lang/Integer;

    move-object/from16 v17, v15

    iget-object v15, v0, Lyads/ro5;->r:Lyads/yj5;

    move-object/from16 v18, v15

    iget-object v15, v0, Lyads/ro5;->s:Ljava/lang/Integer;

    move-object/from16 v19, v15

    iget-object v15, v0, Lyads/ro5;->t:Ljava/lang/Integer;

    move-object/from16 v20, v15

    iget-object v15, v0, Lyads/ro5;->u:Ljava/lang/Integer;

    iget-object v0, v0, Lyads/ro5;->v:Lyads/bp1;

    move-object/from16 p0, v0

    const-string v0, ", end="

    move-object/from16 v21, v15

    const-string v15, ", alignmentVertical="

    move-object/from16 v22, v14

    const-string v14, "SpanData(start="

    invoke-static {v1, v2, v14, v0, v15}, Lbg;->f(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", baselineOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fontFamily="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fontFeatureSettings="

    const-string v2, ", fontSize="

    invoke-static {v0, v5, v1, v6, v2}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontSizeUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontWeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontWeightValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontVariationSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", letterSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lineHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", strike="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textShadow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", topOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", topOffsetStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", topOffsetEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", underline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
