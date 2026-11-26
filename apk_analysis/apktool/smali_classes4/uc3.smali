.class public final Luc3;
.super Lyf4;
.source "SourceFile"


# instance fields
.field public d:F

.field public e:F

.field public f:F

.field public g:Z


# direct methods
.method public varargs constructor <init>([Luf4$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    iput v0, p0, Lyf4;->a:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lyf4;->b:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Luf4;

    const/4 p1, 0x1

    sub-int/2addr v0, p1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luf4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean p1, p0, Luc3;->g:Z

    return-void
.end method


# virtual methods
.method public final a()Luc3;
    .locals 4

    iget-object p0, p0, Lyf4;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Luf4$a;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Luf4;

    invoke-virtual {v3}, Luf4;->e()Luf4$a;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Luc3;

    invoke-direct {p0, v1}, Luc3;-><init>([Luf4$a;)V

    return-object p0
.end method

.method public final b(F)F
    .locals 8

    iget-object v0, p0, Lyf4;->b:Ljava/util/ArrayList;

    iget v1, p0, Lyf4;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Luc3;->g:Z

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Luc3;->g:Z

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luf4$a;

    iget v1, v1, Luf4$a;->c:F

    iput v1, p0, Luc3;->d:F

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luf4$a;

    iget v0, v0, Luf4$a;->c:F

    iput v0, p0, Luc3;->e:F

    iget v1, p0, Luc3;->d:F

    sub-float/2addr v0, v1

    iput v0, p0, Luc3;->f:F

    :cond_0
    iget-object v0, p0, Lyf4;->c:Lu39;

    iget v1, p0, Luc3;->d:F

    if-nez v0, :cond_1

    iget p0, p0, Luc3;->f:F

    mul-float/2addr p1, p0

    add-float/2addr p1, v1

    return p1

    :cond_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget p0, p0, Luc3;->e:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {v0, p1, v1, p0}, Lu39;->k(FLjava/lang/Float;Ljava/lang/Float;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0

    :cond_2
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luf4$a;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luf4$a;

    iget v2, v1, Luf4$a;->c:F

    iget v3, v0, Luf4$a;->c:F

    iget v1, v1, Luf4;->b:F

    iget v0, v0, Luf4;->b:F

    sub-float/2addr p1, v1

    sub-float/2addr v0, v1

    div-float/2addr p1, v0

    iget-object p0, p0, Lyf4;->c:Lu39;

    if-nez p0, :cond_3

    invoke-static {v3, v2, p1, v2}, Li8;->b(FFFF)F

    move-result p0

    return p0

    :cond_3
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p0, p1, v0, v1}, Lu39;->k(FLjava/lang/Float;Ljava/lang/Float;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0

    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_6

    add-int/lit8 v2, v1, -0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Luf4$a;

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luf4$a;

    iget v1, v2, Luf4$a;->c:F

    iget v3, v0, Luf4$a;->c:F

    iget v2, v2, Luf4;->b:F

    iget v0, v0, Luf4;->b:F

    sub-float/2addr p1, v2

    sub-float/2addr v0, v2

    div-float/2addr p1, v0

    iget-object p0, p0, Lyf4;->c:Lu39;

    if-nez p0, :cond_5

    invoke-static {v3, v1, p1, v1}, Li8;->b(FFFF)F

    move-result p0

    return p0

    :cond_5
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p0, p1, v0, v1}, Lu39;->k(FLjava/lang/Float;Ljava/lang/Float;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0

    :cond_6
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Luf4$a;

    move v3, v4

    :goto_0
    if-ge v3, v1, :cond_9

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Luf4$a;

    iget v6, v5, Luf4;->b:F

    cmpg-float v7, p1, v6

    if-gez v7, :cond_8

    iget v0, v2, Luf4;->b:F

    sub-float/2addr p1, v0

    sub-float/2addr v6, v0

    div-float/2addr p1, v6

    iget v0, v2, Luf4$a;->c:F

    iget v1, v5, Luf4$a;->c:F

    iget-object p0, p0, Lyf4;->c:Lu39;

    if-nez p0, :cond_7

    invoke-static {v1, v0, p1, v0}, Li8;->b(FFFF)F

    move-result p0

    return p0

    :cond_7
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p0, p1, v0, v1}, Lu39;->k(FLjava/lang/Float;Ljava/lang/Float;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0

    :cond_8
    add-int/lit8 v3, v3, 0x1

    move-object v2, v5

    goto :goto_0

    :cond_9
    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Luf4;

    invoke-virtual {p0}, Luf4;->h()Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Luc3;->a()Luc3;

    move-result-object p0

    return-object p0
.end method
