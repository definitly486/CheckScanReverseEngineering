.class public final Lyads/hg3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/cg3;

.field public final b:Lyads/gl5;

.field public final c:Lyads/pf3;

.field public final d:Lyads/gs4;

.field public final e:Lyads/gg3;

.field public f:I

.field public g:I

.field public h:F

.field public i:F

.field public j:F

.field public k:I

.field public l:I

.field public m:I

.field public n:F


# direct methods
.method public constructor <init>(Lyads/cg3;Lyads/gl5;Lyads/pf3;Lyads/gs4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/hg3;->a:Lyads/cg3;

    iput-object p2, p0, Lyads/hg3;->b:Lyads/gl5;

    iput-object p3, p0, Lyads/hg3;->c:Lyads/pf3;

    iput-object p4, p0, Lyads/hg3;->d:Lyads/gs4;

    new-instance p2, Lyads/gg3;

    invoke-direct {p2, p0}, Lyads/gg3;-><init>(Lyads/hg3;)V

    iput-object p2, p0, Lyads/hg3;->e:Lyads/gg3;

    iget-object p1, p1, Lyads/cg3;->c:Lyads/bg3;

    invoke-virtual {p1}, Lyads/bg3;->b()Lyads/yf3;

    move-result-object p1

    invoke-virtual {p1}, Lyads/yf3;->b()F

    move-result p1

    iput p1, p0, Lyads/hg3;->h:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lyads/hg3;->j:F

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 133
    iget-object v0, p0, Lyads/hg3;->a:Lyads/cg3;

    .line 134
    iget-object v0, v0, Lyads/cg3;->e:Lyads/vf3;

    .line 135
    instance-of v1, v0, Lyads/tf3;

    if-eqz v1, :cond_0

    iget v1, p0, Lyads/hg3;->k:I

    int-to-float v1, v1

    check-cast v0, Lyads/tf3;

    .line 136
    iget v0, v0, Lyads/tf3;->a:F

    div-float/2addr v1, v0

    float-to-int v0, v1

    goto :goto_0

    .line 137
    :cond_0
    instance-of v1, v0, Lyads/uf3;

    if-eqz v1, :cond_2

    check-cast v0, Lyads/uf3;

    .line 138
    iget v0, v0, Lyads/uf3;->b:I

    .line 139
    :goto_0
    iget v1, p0, Lyads/hg3;->f:I

    if-le v0, v1, :cond_1

    move v0, v1

    .line 140
    :cond_1
    iput v0, p0, Lyads/hg3;->g:I

    return-void

    .line 141
    :cond_2
    invoke-static {}, Lme0;->e()V

    return-void
.end method

.method public final a(IF)V
    .locals 11

    iget-object p0, p0, Lyads/hg3;->e:Lyads/gg3;

    iget-object v0, p0, Lyads/gg3;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lyads/gg3;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lyads/gg3;->c:Lyads/hg3;

    iget v1, v0, Lyads/hg3;->f:I

    if-gtz v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lyads/hg3;->d:Lyads/gs4;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lyads/oh6;->a(Landroid/view/View;II)Lw74;

    move-result-object v0

    iget v1, v0, Lw74;->b:I

    iget-object v3, p0, Lyads/gg3;->c:Lyads/hg3;

    invoke-virtual {v0}, Lw74;->b()Lx74;

    move-result-object v0

    :goto_0
    iget-boolean v4, v0, Lx74;->d:Z

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lx74;->nextInt()I

    move-result v6

    iget-object v4, v3, Lyads/hg3;->c:Lyads/pf3;

    invoke-interface {v4, v6}, Lyads/pf3;->a(I)Lyads/yf3;

    move-result-object v4

    iget v5, v3, Lyads/hg3;->j:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v5, v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    instance-of v7, v4, Lyads/xf3;

    if-eqz v7, :cond_2

    check-cast v4, Lyads/xf3;

    iget v7, v4, Lyads/xf3;->a:F

    mul-float/2addr v7, v5

    const/4 v5, 0x0

    const/4 v8, 0x6

    invoke-static {v4, v7, v5, v8}, Lyads/xf3;->a(Lyads/xf3;FFI)Lyads/xf3;

    move-result-object v4

    iget-object v5, v3, Lyads/hg3;->c:Lyads/pf3;

    iget v7, v4, Lyads/xf3;->a:F

    invoke-interface {v5, v7}, Lyads/pf3;->b(F)V

    :cond_2
    :goto_1
    move-object v9, v4

    if-ne v6, v1, :cond_3

    invoke-virtual {v9}, Lyads/yf3;->b()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    :goto_2
    move v8, v4

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lyads/gg3;->a:Ljava/util/ArrayList;

    invoke-static {v4}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/fg3;

    iget v4, v4, Lyads/fg3;->c:F

    iget v5, v3, Lyads/hg3;->i:F

    add-float/2addr v4, v5

    goto :goto_2

    :goto_3
    iget-object v4, p0, Lyads/gg3;->a:Ljava/util/ArrayList;

    new-instance v5, Lyads/fg3;

    if-ne v6, p1, :cond_4

    const/4 v7, 0x1

    goto :goto_4

    :cond_4
    move v7, v2

    :goto_4
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct/range {v5 .. v10}, Lyads/fg3;-><init>(IZFLyads/yf3;F)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lyads/gg3;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lyads/gg3;->a(IF)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final a(II)V
    .locals 3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 142
    :cond_0
    iput p1, p0, Lyads/hg3;->k:I

    .line 143
    iput p2, p0, Lyads/hg3;->l:I

    .line 144
    invoke-virtual {p0}, Lyads/hg3;->a()V

    .line 145
    iget-object p1, p0, Lyads/hg3;->a:Lyads/cg3;

    .line 146
    iget-object v0, p1, Lyads/cg3;->e:Lyads/vf3;

    .line 147
    instance-of v1, v0, Lyads/tf3;

    if-eqz v1, :cond_1

    .line 148
    check-cast v0, Lyads/tf3;

    .line 149
    iget p1, v0, Lyads/tf3;->a:F

    .line 150
    iput p1, p0, Lyads/hg3;->i:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 151
    iput p1, p0, Lyads/hg3;->j:F

    goto :goto_0

    .line 152
    :cond_1
    instance-of v1, v0, Lyads/uf3;

    if-eqz v1, :cond_2

    .line 153
    iget v1, p0, Lyads/hg3;->k:I

    int-to-float v1, v1

    check-cast v0, Lyads/uf3;

    .line 154
    iget v0, v0, Lyads/uf3;->a:F

    add-float/2addr v1, v0

    .line 155
    iget v2, p0, Lyads/hg3;->g:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lyads/hg3;->i:F

    sub-float/2addr v1, v0

    .line 156
    iget-object p1, p1, Lyads/cg3;->b:Lyads/bg3;

    .line 157
    invoke-virtual {p1}, Lyads/bg3;->b()Lyads/yf3;

    move-result-object p1

    invoke-virtual {p1}, Lyads/yf3;->b()F

    move-result p1

    div-float/2addr v1, p1

    .line 158
    iput v1, p0, Lyads/hg3;->j:F

    .line 159
    :cond_2
    :goto_0
    iget-object p1, p0, Lyads/hg3;->c:Lyads/pf3;

    iget v0, p0, Lyads/hg3;->i:F

    invoke-interface {p1, v0}, Lyads/pf3;->a(F)V

    int-to-float p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 160
    iput p1, p0, Lyads/hg3;->h:F

    .line 161
    iget p1, p0, Lyads/hg3;->m:I

    iget p2, p0, Lyads/hg3;->n:F

    invoke-virtual {p0, p1, p2}, Lyads/hg3;->a(IF)V

    :cond_3
    :goto_1
    return-void
.end method
