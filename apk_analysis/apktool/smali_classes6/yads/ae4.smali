.class public final Lyads/ae4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lyads/yh4;

.field public c:Ljava/lang/String;

.field public d:Lyads/dh4;


# direct methods
.method public constructor <init>(Ljava/util/List;Lyads/yh4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ae4;->a:Ljava/util/List;

    iput-object p2, p0, Lyads/ae4;->b:Lyads/yh4;

    return-void
.end method

.method public static final a(Lyads/ae4;Lyads/dh4;)Z
    .locals 3

    .line 229
    iget-object p0, p0, Lyads/ae4;->a:Ljava/util/List;

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 231
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lyads/ak;

    .line 232
    iget-boolean v2, v2, Lyads/ak;->f:Z

    if-eqz v2, :cond_0

    .line 233
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    .line 235
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/ak;

    .line 236
    invoke-virtual {p1, v0}, Lyads/dh4;->a(Lyads/ak;)Lyads/bk;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 237
    invoke-interface {v0}, Lyads/bk;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static final b(Lyads/ae4;Lyads/dh4;)Z
    .locals 3

    iget-object p0, p0, Lyads/ae4;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lyads/ak;

    iget-boolean v2, v1, Lyads/ak;->f:Z

    if-eqz v2, :cond_0

    iget-object v1, v1, Lyads/ak;->a:Ljava/lang/String;

    const-string v2, "sponsored"

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lyads/ak;

    const/4 p0, 0x1

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Lyads/dh4;->a(Lyads/ak;)Lyads/bk;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lyads/bk;->d()Z

    move-result p1

    if-ne p1, p0, :cond_3

    :goto_1
    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static final c(Lyads/ae4;Lyads/dh4;)Z
    .locals 5

    iget-object v0, p0, Lyads/ae4;->a:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lyads/ak;

    iget-boolean v3, v3, Lyads/ak;->f:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lyads/ak;

    invoke-virtual {p1, v3}, Lyads/dh4;->a(Lyads/ak;)Lyads/bk;

    move-result-object v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move-object v4, v2

    :goto_1
    if-eqz v4, :cond_5

    iget-object v3, v3, Lyads/ak;->c:Ljava/lang/Object;

    invoke-interface {v4, v3}, Lyads/bk;->a(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_4
    move-object v1, v2

    :cond_5
    :goto_2
    check-cast v1, Lyads/ak;

    if-eqz v1, :cond_6

    iget-object v2, v1, Lyads/ak;->a:Ljava/lang/String;

    :cond_6
    iput-object v2, p0, Lyads/ae4;->c:Ljava/lang/String;

    if-nez v1, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static final d(Lyads/ae4;Lyads/dh4;)Z
    .locals 4

    iget-object v0, p0, Lyads/ae4;->a:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lyads/ak;

    iget-boolean v3, v3, Lyads/ak;->f:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lyads/ak;

    invoke-virtual {p1, v3}, Lyads/dh4;->a(Lyads/ak;)Lyads/bk;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Lyads/bk;->e()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_3
    move-object v1, v2

    :cond_4
    :goto_1
    check-cast v1, Lyads/ak;

    if-eqz v1, :cond_5

    iget-object v2, v1, Lyads/ak;->a:Ljava/lang/String;

    :cond_5
    iput-object v2, p0, Lyads/ae4;->c:Ljava/lang/String;

    if-nez v1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static final e(Lyads/ae4;Lyads/dh4;)Z
    .locals 4

    iget-object v0, p0, Lyads/ae4;->a:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lyads/ak;

    iget-boolean v3, v3, Lyads/ak;->f:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lyads/ak;

    invoke-virtual {p1, v3}, Lyads/dh4;->a(Lyads/ak;)Lyads/bk;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Lyads/bk;->b()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_3
    move-object v1, v2

    :cond_4
    :goto_1
    check-cast v1, Lyads/ak;

    if-eqz v1, :cond_5

    iget-object v2, v1, Lyads/ak;->a:Ljava/lang/String;

    :cond_5
    iput-object v2, p0, Lyads/ae4;->c:Ljava/lang/String;

    if-nez v1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Z)Lyads/i66;
    .locals 10

    invoke-virtual {p0}, Lyads/ae4;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object p0, p0, Lyads/ae4;->c:Ljava/lang/String;

    new-instance p1, Lyads/f66;

    sget-object v0, Lyads/e66;->f:Lyads/e66;

    invoke-direct {p1, v0, p0, v1}, Lyads/f66;-><init>(Lyads/e66;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lyads/ae4;->a:Ljava/util/List;

    iget-object v2, p0, Lyads/ae4;->d:Lyads/dh4;

    const/4 v3, 0x2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/ak;

    iget-object v5, v4, Lyads/ak;->g:Lyads/wr3;

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v4}, Lyads/dh4;->a(Lyads/ak;)Lyads/bk;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {v6}, Lyads/bk;->c()Lyads/tg6;

    move-result-object v6

    if-nez v6, :cond_5

    goto :goto_0

    :cond_5
    iget-object v7, v2, Lyads/dh4;->d:Lyads/qh4;

    invoke-virtual {v7}, Lyads/qh4;->a()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    if-eqz v7, :cond_7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    iget-object v8, v5, Lyads/wr3;->a:Ljava/lang/Integer;

    iget-object v5, v5, Lyads/wr3;->b:Ljava/lang/Integer;

    if-eqz v8, :cond_6

    iget v9, v6, Lyads/tg6;->a:I

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v7

    float-to-int v8, v8

    if-ge v9, v8, :cond_6

    iget-object v0, v4, Lyads/ak;->a:Ljava/lang/String;

    invoke-static {v3, v0, v1}, Lyads/d66;->a(ILjava/lang/String;Ljava/lang/String;)Lyads/f66;

    move-result-object v0

    goto :goto_2

    :cond_6
    if-eqz v5, :cond_2

    iget v6, v6, Lyads/tg6;->b:I

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v7

    float-to-int v5, v5

    if-ge v6, v5, :cond_2

    iget-object v0, v4, Lyads/ak;->a:Ljava/lang/String;

    invoke-static {v3, v0, v1}, Lyads/d66;->a(ILjava/lang/String;Ljava/lang/String;)Lyads/f66;

    move-result-object v0

    goto :goto_2

    :cond_7
    :goto_1
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_8

    return-object v0

    :cond_8
    invoke-static {}, Lu96;->e()Lar4;

    move-result-object v0

    invoke-virtual {p0}, Lyads/ae4;->b()Z

    move-result v2

    if-eqz v2, :cond_9

    if-nez p1, :cond_9

    sget-object v2, Lyads/h66;->d:Lyads/h66;

    invoke-virtual {v0, v2}, Lar4;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v2, p0, Lyads/ae4;->a:Ljava/util/List;

    instance-of v4, v2, Ljava/util/Collection;

    const/4 v5, 0x0

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_4

    :cond_a
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/ak;

    iget-boolean v4, v4, Lyads/ak;->f:Z

    if-eqz v4, :cond_b

    add-int/lit8 v5, v5, 0x1

    if-ltz v5, :cond_c

    goto :goto_3

    :cond_c
    invoke-static {}, Lu96;->n()V

    throw v1

    :cond_d
    :goto_4
    if-lt v5, v3, :cond_e

    invoke-virtual {p0}, Lyads/ae4;->a()Z

    move-result v1

    if-eqz v1, :cond_e

    if-nez p1, :cond_e

    sget-object p1, Lyads/h66;->e:Lyads/h66;

    invoke-virtual {v0, p1}, Lar4;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-virtual {p0}, Lyads/ae4;->c()Z

    move-result p0

    if-eqz p0, :cond_f

    sget-object p0, Lyads/h66;->c:Lyads/h66;

    invoke-virtual {v0, p0}, Lar4;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-static {v0}, Lu96;->d(Lar4;)Lar4;

    move-result-object p0

    new-instance p1, Lyads/g66;

    invoke-direct {p1, p0}, Lyads/g66;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public final a()Z
    .locals 1

    .line 228
    new-instance v0, Lhu2;

    invoke-direct {v0, p0}, Lhu2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lyads/ae4;->a(Lyads/ci4;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final a(Lyads/ci4;)Z
    .locals 1

    .line 238
    iget-object v0, p0, Lyads/ae4;->d:Lyads/dh4;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 239
    :cond_0
    iget-object p0, p0, Lyads/ae4;->b:Lyads/yh4;

    .line 240
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    invoke-interface {p1, v0}, Lyads/ci4;->a(Lyads/dh4;)Z

    move-result p0

    return p0
.end method

.method public final b()Z
    .locals 2

    .line 56
    new-instance v0, Lq3;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lq3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lyads/ae4;->a(Lyads/ci4;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final c()Z
    .locals 1

    .line 84
    new-instance v0, Lul0;

    invoke-direct {v0, p0}, Lul0;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lyads/ae4;->a(Lyads/ci4;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final d()Z
    .locals 1

    .line 78
    new-instance v0, Ls77;

    invoke-direct {v0, p0}, Ls77;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lyads/ae4;->a(Lyads/ci4;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final e()Lyads/m85;
    .locals 2

    .line 78
    new-instance v0, Lgu2;

    invoke-direct {v0, p0}, Lgu2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lyads/ae4;->a(Lyads/ci4;)Z

    move-result v0

    .line 79
    new-instance v1, Lyads/m85;

    iget-object p0, p0, Lyads/ae4;->c:Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Lyads/m85;-><init>(Ljava/lang/String;Z)V

    return-object v1
.end method
