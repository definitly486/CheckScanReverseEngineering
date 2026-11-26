.class public abstract Lcom/warefly/checkscan/shimmer/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/shimmer/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/warefly/checkscan/shimmer/a$b<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/warefly/checkscan/shimmer/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/warefly/checkscan/shimmer/a;

    invoke-direct {v0}, Lcom/warefly/checkscan/shimmer/a;-><init>()V

    iput-object v0, p0, Lcom/warefly/checkscan/shimmer/a$b;->a:Lcom/warefly/checkscan/shimmer/a;

    return-void
.end method


# virtual methods
.method public final a()Lcom/warefly/checkscan/shimmer/a;
    .locals 9

    iget-object p0, p0, Lcom/warefly/checkscan/shimmer/a$b;->a:Lcom/warefly/checkscan/shimmer/a;

    iget v0, p0, Lcom/warefly/checkscan/shimmer/a;->f:I

    iget-object v1, p0, Lcom/warefly/checkscan/shimmer/a;->b:[I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_0

    iget v6, p0, Lcom/warefly/checkscan/shimmer/a;->e:I

    aput v6, v1, v4

    iget v7, p0, Lcom/warefly/checkscan/shimmer/a;->d:I

    aput v7, v1, v5

    aput v7, v1, v3

    aput v6, v1, v2

    goto :goto_0

    :cond_0
    iget v6, p0, Lcom/warefly/checkscan/shimmer/a;->d:I

    aput v6, v1, v4

    aput v6, v1, v5

    iget v6, p0, Lcom/warefly/checkscan/shimmer/a;->e:I

    aput v6, v1, v3

    aput v6, v1, v2

    :goto_0
    iget-object v1, p0, Lcom/warefly/checkscan/shimmer/a;->a:[F

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-eq v0, v5, :cond_1

    iget v0, p0, Lcom/warefly/checkscan/shimmer/a;->k:F

    sub-float v0, v7, v0

    iget v8, p0, Lcom/warefly/checkscan/shimmer/a;->l:F

    sub-float/2addr v0, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v0, v8

    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, v1, v4

    iget v0, p0, Lcom/warefly/checkscan/shimmer/a;->k:F

    sub-float v0, v7, v0

    const v4, 0x3a83126f    # 0.001f

    sub-float/2addr v0, v4

    div-float/2addr v0, v8

    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, v1, v5

    iget v0, p0, Lcom/warefly/checkscan/shimmer/a;->k:F

    add-float/2addr v0, v7

    add-float/2addr v0, v4

    div-float/2addr v0, v8

    invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aput v0, v1, v3

    iget v0, p0, Lcom/warefly/checkscan/shimmer/a;->k:F

    add-float/2addr v0, v7

    iget v3, p0, Lcom/warefly/checkscan/shimmer/a;->l:F

    add-float/2addr v0, v3

    div-float/2addr v0, v8

    invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aput v0, v1, v2

    return-object p0

    :cond_1
    aput v6, v1, v4

    iget v0, p0, Lcom/warefly/checkscan/shimmer/a;->k:F

    invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aput v0, v1, v5

    iget v0, p0, Lcom/warefly/checkscan/shimmer/a;->k:F

    iget v4, p0, Lcom/warefly/checkscan/shimmer/a;->l:F

    add-float/2addr v0, v4

    invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aput v0, v1, v3

    aput v7, v1, v2

    return-object p0
.end method

.method public b(Landroid/content/res/TypedArray;)Lcom/warefly/checkscan/shimmer/a$b;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/TypedArray;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    iget-object v2, p0, Lcom/warefly/checkscan/shimmer/a$b;->a:Lcom/warefly/checkscan/shimmer/a;

    if-eqz v1, :cond_0

    iget-boolean v1, v2, Lcom/warefly/checkscan/shimmer/a;->n:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v2, Lcom/warefly/checkscan/shimmer/a;->n:Z

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, v2, Lcom/warefly/checkscan/shimmer/a;->o:Z

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Lcom/warefly/checkscan/shimmer/a;->o:Z

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    const v5, 0xffffff

    const/high16 v6, 0x437f0000    # 255.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    if-eqz v4, :cond_2

    const v4, 0x3e99999a    # 0.3f

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    shl-int/lit8 v4, v4, 0x18

    iget v9, v2, Lcom/warefly/checkscan/shimmer/a;->e:I

    and-int/2addr v9, v5

    or-int/2addr v4, v9

    iput v4, v2, Lcom/warefly/checkscan/shimmer/a;->e:I

    :cond_2
    const/16 v4, 0xb

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p1, v4, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    shl-int/lit8 v4, v4, 0x18

    iget v6, v2, Lcom/warefly/checkscan/shimmer/a;->d:I

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    iput v4, v2, Lcom/warefly/checkscan/shimmer/a;->d:I

    :cond_3
    const/4 v4, 0x7

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    const/4 v6, 0x0

    const-wide/16 v9, 0x0

    if-eqz v5, :cond_5

    iget-wide v11, v2, Lcom/warefly/checkscan/shimmer/a;->s:J

    long-to-int v5, v11

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    int-to-long v4, v4

    cmp-long v7, v4, v9

    if-ltz v7, :cond_4

    iput-wide v4, v2, Lcom/warefly/checkscan/shimmer/a;->s:J

    goto :goto_0

    :cond_4
    const-string p0, "Given a negative duration: "

    invoke-static {v4, v5, p0}, Lr01;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v6

    :cond_5
    :goto_0
    const/16 v4, 0xe

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_6

    iget v5, v2, Lcom/warefly/checkscan/shimmer/a;->q:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v2, Lcom/warefly/checkscan/shimmer/a;->q:I

    :cond_6
    const/16 v4, 0xf

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-wide v11, v2, Lcom/warefly/checkscan/shimmer/a;->t:J

    long-to-int v5, v11

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    int-to-long v4, v4

    cmp-long v7, v4, v9

    if-ltz v7, :cond_7

    iput-wide v4, v2, Lcom/warefly/checkscan/shimmer/a;->t:J

    goto :goto_1

    :cond_7
    const-string p0, "Given a negative repeat delay: "

    invoke-static {v4, v5, p0}, Lr01;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v6

    :cond_8
    :goto_1
    const/16 v4, 0x10

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_9

    iget v5, v2, Lcom/warefly/checkscan/shimmer/a;->r:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v2, Lcom/warefly/checkscan/shimmer/a;->r:I

    :cond_9
    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_d

    iget v5, v2, Lcom/warefly/checkscan/shimmer/a;->c:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-eq v4, v3, :cond_c

    const/4 v5, 0x2

    if-eq v4, v5, :cond_b

    if-eq v4, v0, :cond_a

    iput v1, v2, Lcom/warefly/checkscan/shimmer/a;->c:I

    goto :goto_2

    :cond_a
    iput v0, v2, Lcom/warefly/checkscan/shimmer/a;->c:I

    goto :goto_2

    :cond_b
    iput v5, v2, Lcom/warefly/checkscan/shimmer/a;->c:I

    goto :goto_2

    :cond_c
    iput v3, v2, Lcom/warefly/checkscan/shimmer/a;->c:I

    :cond_d
    :goto_2
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_f

    iget v4, v2, Lcom/warefly/checkscan/shimmer/a;->f:I

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-eq v0, v3, :cond_e

    iput v1, v2, Lcom/warefly/checkscan/shimmer/a;->f:I

    goto :goto_3

    :cond_e
    iput v3, v2, Lcom/warefly/checkscan/shimmer/a;->f:I

    :cond_f
    :goto_3
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_11

    iget v1, v2, Lcom/warefly/checkscan/shimmer/a;->l:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    cmpg-float v1, v0, v8

    if-ltz v1, :cond_10

    iput v0, v2, Lcom/warefly/checkscan/shimmer/a;->l:F

    goto :goto_4

    :cond_10
    const-string p0, "Given invalid dropoff value: "

    invoke-static {p0, v0}, Lvh;->f(Ljava/lang/String;F)V

    return-object v6

    :cond_11
    :goto_4
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_13

    iget v1, v2, Lcom/warefly/checkscan/shimmer/a;->g:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-ltz v0, :cond_12

    iput v0, v2, Lcom/warefly/checkscan/shimmer/a;->g:I

    goto :goto_5

    :cond_12
    const-string p0, "Given invalid width: "

    invoke-static {v0, p0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v6

    :cond_13
    :goto_5
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_15

    iget v1, v2, Lcom/warefly/checkscan/shimmer/a;->h:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-ltz v0, :cond_14

    iput v0, v2, Lcom/warefly/checkscan/shimmer/a;->h:I

    goto :goto_6

    :cond_14
    const-string p0, "Given invalid height: "

    invoke-static {v0, p0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v6

    :cond_15
    :goto_6
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_17

    iget v1, v2, Lcom/warefly/checkscan/shimmer/a;->k:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    cmpg-float v1, v0, v8

    if-ltz v1, :cond_16

    iput v0, v2, Lcom/warefly/checkscan/shimmer/a;->k:F

    goto :goto_7

    :cond_16
    const-string p0, "Given invalid intensity value: "

    invoke-static {p0, v0}, Lvh;->f(Ljava/lang/String;F)V

    return-object v6

    :cond_17
    :goto_7
    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_19

    iget v1, v2, Lcom/warefly/checkscan/shimmer/a;->i:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    cmpg-float v1, v0, v8

    if-ltz v1, :cond_18

    iput v0, v2, Lcom/warefly/checkscan/shimmer/a;->i:F

    goto :goto_8

    :cond_18
    const-string p0, "Given invalid width ratio: "

    invoke-static {p0, v0}, Lvh;->f(Ljava/lang/String;F)V

    return-object v6

    :cond_19
    :goto_8
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget v1, v2, Lcom/warefly/checkscan/shimmer/a;->j:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    cmpg-float v1, v0, v8

    if-ltz v1, :cond_1a

    iput v0, v2, Lcom/warefly/checkscan/shimmer/a;->j:F

    goto :goto_9

    :cond_1a
    const-string p0, "Given invalid height ratio: "

    invoke-static {p0, v0}, Lvh;->f(Ljava/lang/String;F)V

    return-object v6

    :cond_1b
    :goto_9
    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget v1, v2, Lcom/warefly/checkscan/shimmer/a;->m:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, v2, Lcom/warefly/checkscan/shimmer/a;->m:F

    :cond_1c
    invoke-virtual {p0}, Lcom/warefly/checkscan/shimmer/a$b;->c()Lcom/warefly/checkscan/shimmer/a$b;

    move-result-object p0

    return-object p0
.end method

.method public abstract c()Lcom/warefly/checkscan/shimmer/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
