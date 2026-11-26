.class public final Ljc0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I
    .annotation runtime Lbq7;
        value = "id"
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "backgroundColor"
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "description"
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "descriptionColor"
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "imageUrl"
    .end annotation
.end field

.field private final f:Lkv0;
    .annotation runtime Lbq7;
        value = "mainButton"
    .end annotation
.end field

.field private final g:Lkv0;
    .annotation runtime Lbq7;
        value = "secondButton"
    .end annotation
.end field

.field private final h:Ljava/lang/Integer;
    .annotation runtime Lbq7;
        value = "showIntervalHours"
    .end annotation
.end field

.field private final i:Ljava/lang/Integer;
    .annotation runtime Lbq7;
        value = "sort"
    .end annotation
.end field

.field private final j:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "title"
    .end annotation
.end field

.field private final k:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "titleColor"
    .end annotation
.end field

.field private final l:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "type"
    .end annotation
.end field

.field private final m:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "url"
    .end annotation
.end field

.field private final n:Lc06;
    .annotation runtime Lbq7;
        value = "ordInfo"
    .end annotation
.end field

.field private final o:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "topText"
    .end annotation
.end field

.field private final p:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "topTextColor"
    .end annotation
.end field

.field private final q:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "bottomText"
    .end annotation
.end field

.field private final r:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "bottomTextColor"
    .end annotation
.end field

.field private final s:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "bottomBackgroundColor"
    .end annotation
.end field

.field private final t:Z
    .annotation runtime Lbq7;
        value = "isRedesign"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkv0;Lkv0;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc06;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljc0;->a:I

    iput-object p2, p0, Ljc0;->b:Ljava/lang/String;

    iput-object p3, p0, Ljc0;->c:Ljava/lang/String;

    iput-object p4, p0, Ljc0;->d:Ljava/lang/String;

    iput-object p5, p0, Ljc0;->e:Ljava/lang/String;

    iput-object p6, p0, Ljc0;->f:Lkv0;

    iput-object p7, p0, Ljc0;->g:Lkv0;

    iput-object p8, p0, Ljc0;->h:Ljava/lang/Integer;

    iput-object p9, p0, Ljc0;->i:Ljava/lang/Integer;

    iput-object p10, p0, Ljc0;->j:Ljava/lang/String;

    iput-object p11, p0, Ljc0;->k:Ljava/lang/String;

    iput-object p12, p0, Ljc0;->l:Ljava/lang/String;

    iput-object p13, p0, Ljc0;->m:Ljava/lang/String;

    iput-object p14, p0, Ljc0;->n:Lc06;

    iput-object p15, p0, Ljc0;->o:Ljava/lang/String;

    move-object/from16 p1, p16

    iput-object p1, p0, Ljc0;->p:Ljava/lang/String;

    move-object/from16 p1, p17

    iput-object p1, p0, Ljc0;->q:Ljava/lang/String;

    move-object/from16 p1, p18

    iput-object p1, p0, Ljc0;->r:Ljava/lang/String;

    move-object/from16 p1, p19

    iput-object p1, p0, Ljc0;->s:Ljava/lang/String;

    move/from16 p1, p20

    iput-boolean p1, p0, Ljc0;->t:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljc0;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Lhc0$a;
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Ljc0;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-object v1, v0, Ljc0;->s:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v5, v1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    iget-object v6, v0, Ljc0;->q:Ljava/lang/String;

    iget-object v1, v0, Ljc0;->r:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v7, v1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    iget-object v1, v0, Ljc0;->f:Lkv0;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lkv0;->a()Lfw0;

    move-result-object v1

    move-object v8, v1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9}, Ljava/lang/String;-><init>()V

    iget v10, v0, Ljc0;->a:I

    iget-object v1, v0, Ljc0;->h:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v11, v1

    goto :goto_4

    :cond_4
    const-wide/16 v11, 0x1

    :goto_4
    const-wide/32 v13, 0x36ee80

    mul-long/2addr v11, v13

    iget-object v13, v0, Ljc0;->e:Ljava/lang/String;

    iget-object v1, v0, Ljc0;->d:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v14, v1

    goto :goto_5

    :cond_5
    const/4 v14, 0x0

    :goto_5
    iget-object v1, v0, Ljc0;->g:Lkv0;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lkv0;->a()Lfw0;

    move-result-object v1

    move-object v15, v1

    goto :goto_6

    :cond_6
    const/4 v15, 0x0

    :goto_6
    iget-object v1, v0, Ljc0;->c:Ljava/lang/String;

    iget-object v3, v0, Ljc0;->j:Ljava/lang/String;

    iget-object v2, v0, Ljc0;->o:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v1, v0, Ljc0;->p:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v20, v1

    goto :goto_7

    :cond_7
    const/16 v20, 0x0

    :goto_7
    iget-object v1, v0, Ljc0;->n:Lc06;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lc06;->f()Lb06;

    move-result-object v1

    move-object/from16 v21, v1

    goto :goto_8

    :cond_8
    const/16 v21, 0x0

    :goto_8
    iget-object v1, v0, Ljc0;->m:Ljava/lang/String;

    if-nez v1, :cond_9

    const-string v1, ""

    :cond_9
    move-object/from16 v22, v1

    iget-object v1, v0, Ljc0;->k:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v18, v1

    goto :goto_9

    :cond_a
    const/16 v18, 0x0

    :goto_9
    iget-boolean v0, v0, Ljc0;->t:Z

    move-object/from16 v16, v17

    move-object/from16 v17, v3

    new-instance v3, Lhc0$a;

    move/from16 v23, v0

    move-object/from16 v19, v2

    invoke-direct/range {v3 .. v23}, Lhc0$a;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Lfw0;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/Integer;Lfw0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Lb06;Ljava/lang/String;Z)V

    return-object v3
.end method

.method public final c()Lhc0$b;
    .locals 6

    iget v1, p0, Ljc0;->a:I

    iget-object v0, p0, Ljc0;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    move-object v4, v0

    iget-object v3, p0, Ljc0;->e:Ljava/lang/String;

    iget-object v0, p0, Ljc0;->n:Lc06;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lc06;->c()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Ljc0;->n:Lc06;

    invoke-virtual {v0}, Lc06;->f()Lb06;

    move-result-object v0

    :goto_1
    move-object v2, v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    iget-object v5, p0, Ljc0;->j:Ljava/lang/String;

    new-instance v0, Lhc0$b;

    invoke-direct/range {v0 .. v5}, Lhc0$b;-><init>(ILb06;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final d()Lhc0$c;
    .locals 8

    iget v1, p0, Ljc0;->a:I

    iget-object v3, p0, Ljc0;->j:Ljava/lang/String;

    iget-object v0, p0, Ljc0;->c:Ljava/lang/String;

    const-string v2, ""

    if-nez v0, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    iget-object v0, p0, Ljc0;->f:Lkv0;

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lkv0;->a()Lfw0;

    move-result-object v0

    move-object v6, v0

    :goto_1
    move-object v0, v2

    goto :goto_2

    :cond_1
    move-object v6, v5

    goto :goto_1

    :goto_2
    iget-object v2, p0, Ljc0;->e:Ljava/lang/String;

    iget-object v7, p0, Ljc0;->m:Ljava/lang/String;

    if-nez v7, :cond_2

    goto :goto_3

    :cond_2
    move-object v0, v7

    :goto_3
    iget-object p0, p0, Ljc0;->n:Lc06;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lc06;->f()Lb06;

    move-result-object v5

    :cond_3
    move-object v7, v5

    move-object v5, v0

    new-instance v0, Lhc0$c;

    invoke-direct/range {v0 .. v7}, Lhc0$c;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfw0;Lb06;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljc0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ljc0;

    iget v1, p0, Ljc0;->a:I

    iget v3, p1, Ljc0;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Ljc0;->b:Ljava/lang/String;

    iget-object v3, p1, Ljc0;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Ljc0;->c:Ljava/lang/String;

    iget-object v3, p1, Ljc0;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Ljc0;->d:Ljava/lang/String;

    iget-object v3, p1, Ljc0;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Ljc0;->e:Ljava/lang/String;

    iget-object v3, p1, Ljc0;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Ljc0;->f:Lkv0;

    iget-object v3, p1, Ljc0;->f:Lkv0;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Ljc0;->g:Lkv0;

    iget-object v3, p1, Ljc0;->g:Lkv0;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Ljc0;->h:Ljava/lang/Integer;

    iget-object v3, p1, Ljc0;->h:Ljava/lang/Integer;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Ljc0;->i:Ljava/lang/Integer;

    iget-object v3, p1, Ljc0;->i:Ljava/lang/Integer;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Ljc0;->j:Ljava/lang/String;

    iget-object v3, p1, Ljc0;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Ljc0;->k:Ljava/lang/String;

    iget-object v3, p1, Ljc0;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Ljc0;->l:Ljava/lang/String;

    iget-object v3, p1, Ljc0;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Ljc0;->m:Ljava/lang/String;

    iget-object v3, p1, Ljc0;->m:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Ljc0;->n:Lc06;

    iget-object v3, p1, Ljc0;->n:Lc06;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Ljc0;->o:Ljava/lang/String;

    iget-object v3, p1, Ljc0;->o:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Ljc0;->p:Ljava/lang/String;

    iget-object v3, p1, Ljc0;->p:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Ljc0;->q:Ljava/lang/String;

    iget-object v3, p1, Ljc0;->q:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Ljc0;->r:Ljava/lang/String;

    iget-object v3, p1, Ljc0;->r:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Ljc0;->s:Ljava/lang/String;

    iget-object v3, p1, Ljc0;->s:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-boolean p0, p0, Ljc0;->t:Z

    iget-boolean p1, p1, Ljc0;->t:Z

    if-eq p0, p1, :cond_15

    return v2

    :cond_15
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Ljc0;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Ljc0;->b:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Ljc0;->c:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Ljc0;->d:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Ljc0;->e:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Ljc0;->f:Lkv0;

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lkv0;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Ljc0;->g:Lkv0;

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Lkv0;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Ljc0;->h:Ljava/lang/Integer;

    if-nez v2, :cond_6

    move v2, v3

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Ljc0;->i:Ljava/lang/Integer;

    if-nez v2, :cond_7

    move v2, v3

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Ljc0;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Ljc0;->k:Ljava/lang/String;

    if-nez v2, :cond_8

    move v2, v3

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Ljc0;->l:Ljava/lang/String;

    if-nez v2, :cond_9

    move v2, v3

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Ljc0;->m:Ljava/lang/String;

    if-nez v2, :cond_a

    move v2, v3

    goto :goto_a

    :cond_a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Ljc0;->n:Lc06;

    if-nez v2, :cond_b

    move v2, v3

    goto :goto_b

    :cond_b
    invoke-virtual {v2}, Lc06;->hashCode()I

    move-result v2

    :goto_b
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Ljc0;->o:Ljava/lang/String;

    if-nez v2, :cond_c

    move v2, v3

    goto :goto_c

    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_c
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Ljc0;->p:Ljava/lang/String;

    if-nez v2, :cond_d

    move v2, v3

    goto :goto_d

    :cond_d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_d
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Ljc0;->q:Ljava/lang/String;

    if-nez v2, :cond_e

    move v2, v3

    goto :goto_e

    :cond_e
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_e
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Ljc0;->r:Ljava/lang/String;

    if-nez v2, :cond_f

    move v2, v3

    goto :goto_f

    :cond_f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_f
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Ljc0;->s:Ljava/lang/String;

    if-nez v2, :cond_10

    goto :goto_10

    :cond_10
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_10
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean p0, p0, Ljc0;->t:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 22

    move-object/from16 v0, p0

    iget v1, v0, Ljc0;->a:I

    iget-object v2, v0, Ljc0;->b:Ljava/lang/String;

    iget-object v3, v0, Ljc0;->c:Ljava/lang/String;

    iget-object v4, v0, Ljc0;->d:Ljava/lang/String;

    iget-object v5, v0, Ljc0;->e:Ljava/lang/String;

    iget-object v6, v0, Ljc0;->f:Lkv0;

    iget-object v7, v0, Ljc0;->g:Lkv0;

    iget-object v8, v0, Ljc0;->h:Ljava/lang/Integer;

    iget-object v9, v0, Ljc0;->i:Ljava/lang/Integer;

    iget-object v10, v0, Ljc0;->j:Ljava/lang/String;

    iget-object v11, v0, Ljc0;->k:Ljava/lang/String;

    iget-object v12, v0, Ljc0;->l:Ljava/lang/String;

    iget-object v13, v0, Ljc0;->m:Ljava/lang/String;

    iget-object v14, v0, Ljc0;->n:Lc06;

    iget-object v15, v0, Ljc0;->o:Ljava/lang/String;

    move-object/from16 v16, v15

    iget-object v15, v0, Ljc0;->p:Ljava/lang/String;

    move-object/from16 v17, v15

    iget-object v15, v0, Ljc0;->q:Ljava/lang/String;

    move-object/from16 v18, v15

    iget-object v15, v0, Ljc0;->r:Ljava/lang/String;

    move-object/from16 v19, v15

    iget-object v15, v0, Ljc0;->s:Ljava/lang/String;

    iget-boolean v0, v0, Ljc0;->t:Z

    move/from16 p0, v0

    const-string v0, ", backgroundColor="

    move-object/from16 v20, v15

    const-string v15, ", description="

    move-object/from16 v21, v14

    const-string v14, "BannerResponse(id="

    invoke-static {v1, v14, v0, v2, v15}, Lng;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", descriptionColor="

    const-string v2, ", imageUrl="

    invoke-static {v0, v3, v1, v4, v2}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mainButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secondButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showIntervalHours="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", titleColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    const-string v2, ", url="

    invoke-static {v0, v11, v1, v12, v2}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ordInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", topText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", topTextColor="

    const-string v2, ", bottomText="

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    invoke-static {v0, v3, v1, v4, v2}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", bottomTextColor="

    const-string v2, ", bottomBackgroundColor="

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    invoke-static {v0, v3, v1, v4, v2}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isRedesign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
