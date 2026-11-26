.class public final Lyads/vb4;
.super Lyads/ls4;
.source "SourceFile"


# static fields
.field public static final synthetic o:I


# instance fields
.field public final k:Lyads/kb4;

.field public l:Lyads/jk6;

.field public final m:Lyads/yb4;

.field public n:Lyads/wx3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 31
    new-instance v0, Lyads/xj6;

    invoke-direct {v0}, Lyads/xj6;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lyads/vb4;-><init>(Landroid/content/Context;Lyads/xj6;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lyads/xj6;Landroid/util/AttributeSet;)V
    .locals 1

    const/16 v0, 0x38

    invoke-direct {p0, p1, p2, p3, v0}, Lyads/ls4;-><init>(Landroid/content/Context;Lyads/xj6;Landroid/util/AttributeSet;I)V

    new-instance p1, Lyads/kb4;

    invoke-direct {p1}, Lyads/kb4;-><init>()V

    iput-object p1, p0, Lyads/vb4;->k:Lyads/kb4;

    sget-object p2, Lyads/ik6;->a:Lyads/ik6;

    iput-object p2, p0, Lyads/vb4;->l:Lyads/jk6;

    new-instance p2, Lyads/yb4;

    invoke-direct {p2, p0, p1}, Lyads/yb4;-><init>(Lyads/vb4;Lyads/kb4;)V

    iput-object p2, p0, Lyads/vb4;->m:Lyads/yb4;

    new-instance p1, Lyads/uk5;

    invoke-direct {p1}, Lyads/uk5;-><init>()V

    iput-object p1, p0, Lyads/vb4;->n:Lyads/wx3;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 83
    invoke-super {p0}, Lyads/ls4;->a()V

    .line 84
    iget-object v0, p0, Lyads/vb4;->l:Lyads/jk6;

    instance-of v1, v0, Lyads/hk6;

    if-eqz v1, :cond_0

    check-cast v0, Lyads/hk6;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 85
    iget-object v0, v0, Lyads/hk6;->a:Lyads/ub4;

    if-eqz v0, :cond_1

    .line 86
    invoke-interface {v0}, Lyads/ub4;->b()V

    .line 87
    :cond_1
    sget-object v0, Lyads/gk6;->a:Lyads/gk6;

    iput-object v0, p0, Lyads/vb4;->l:Lyads/jk6;

    :cond_2
    return-void
.end method

.method public final a(I)V
    .locals 1

    .line 88
    invoke-super {p0, p1}, Lyads/ls4;->a(I)V

    .line 89
    iget-object p1, p0, Lyads/vb4;->l:Lyads/jk6;

    instance-of v0, p1, Lyads/hk6;

    if-eqz v0, :cond_0

    check-cast p1, Lyads/hk6;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 90
    iget-object p1, p1, Lyads/hk6;->a:Lyads/ub4;

    if-eqz p1, :cond_1

    .line 91
    invoke-interface {p1}, Lyads/ub4;->a()V

    .line 92
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->stopLoading()V

    .line 93
    sget-object p1, Lyads/ik6;->a:Lyads/ik6;

    iput-object p1, p0, Lyads/vb4;->l:Lyads/jk6;

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;Lyads/bc4;)V
    .locals 5

    .line 66
    iget-object v0, p0, Lyads/vb4;->l:Lyads/jk6;

    instance-of v0, v0, Lyads/ik6;

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Lyads/hk6;

    invoke-direct {v0, p2}, Lyads/hk6;-><init>(Lyads/ub4;)V

    iput-object v0, p0, Lyads/vb4;->l:Lyads/jk6;

    .line 68
    iget-object p0, p0, Lyads/vb4;->m:Lyads/yb4;

    .line 69
    iget-object p2, p0, Lyads/yb4;->a:Lyads/vb4;

    .line 70
    iget-object v0, p0, Lyads/yb4;->c:Lyads/gd6;

    .line 71
    iget-object v1, p0, Lyads/yb4;->b:Lyads/kb4;

    .line 72
    new-instance v2, Lyads/wb4;

    invoke-direct {v2, p0}, Lyads/wb4;-><init>(Lyads/ha3;)V

    .line 73
    new-instance p0, Lyads/jb4;

    const/4 v3, 0x0

    const/16 v4, 0xfe

    invoke-direct {p0, p2, v3, v4}, Lyads/jb4;-><init>(Lyads/ls4;Ljava/util/List;I)V

    const/4 v3, 0x2

    .line 74
    invoke-virtual {p2, v3}, Landroid/view/View;->setId(I)V

    .line 75
    iput-object v2, p0, Lyads/jb4;->l:Lyads/rb4;

    .line 76
    iput-object v0, p0, Lyads/jb4;->p:Lyads/rd6;

    .line 77
    iput-object v1, p0, Lyads/jb4;->n:Lyads/ia4;

    .line 78
    iput-object v1, p0, Lyads/jb4;->m:Lyads/ja4;

    .line 79
    iput-object v1, p0, Lyads/jb4;->o:Lyads/mq4;

    .line 80
    new-instance v0, Lyads/mb4;

    invoke-direct {v0, p0}, Lyads/mb4;-><init>(Lyads/jb4;)V

    .line 81
    invoke-virtual {p2, v0}, Lyads/ls4;->setHtmlWebViewListener(Lyads/ha3;)V

    .line 82
    invoke-virtual {p0, p1}, Lyads/jb4;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lyads/ub4;)V
    .locals 8

    iget-object v0, p0, Lyads/vb4;->l:Lyads/jk6;

    instance-of v0, v0, Lyads/ik6;

    if-eqz v0, :cond_1

    new-instance v0, Lyads/hk6;

    invoke-direct {v0, p2}, Lyads/hk6;-><init>(Lyads/ub4;)V

    iput-object v0, p0, Lyads/vb4;->l:Lyads/jk6;

    iget-object v3, p0, Lyads/vb4;->m:Lyads/yb4;

    iget-object p0, v3, Lyads/yb4;->e:Lyads/gb4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lyads/gb4;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    iget-object p2, v3, Lyads/yb4;->f:Lyads/ca3;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_0

    new-instance p0, Lyads/lb4;

    invoke-direct {p0}, Lyads/lb4;-><init>()V

    :goto_0
    move-object v1, p0

    goto :goto_1

    :cond_0
    new-instance p0, Lyads/cr;

    invoke-direct {p0}, Lyads/cr;-><init>()V

    goto :goto_0

    :goto_1
    iget-object v2, v3, Lyads/yb4;->a:Lyads/vb4;

    iget-object v4, v3, Lyads/yb4;->c:Lyads/gd6;

    iget-object v5, v3, Lyads/yb4;->b:Lyads/kb4;

    move-object v6, v5

    move-object v7, v5

    invoke-interface/range {v1 .. v7}, Lyads/ba3;->a(Lyads/ls4;Lyads/ha3;Lyads/rd6;Lyads/ia4;Lyads/ja4;Lyads/mq4;)Lyads/br;

    move-result-object p0

    invoke-virtual {p0, p1}, Lyads/br;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 1

    iget-object p0, p0, Lyads/vb4;->m:Lyads/yb4;

    iget-object p0, p0, Lyads/yb4;->d:Lyads/dk6;

    sget-object v0, Lmx2;->b:Lmx2;

    invoke-virtual {p0, v0}, Lyads/dk6;->a(Ljava/util/Map;)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 1

    iget-object v0, p0, Lyads/vb4;->n:Lyads/wx3;

    invoke-interface {v0, p1, p2}, Lyads/wx3;->a(II)Lyads/vx3;

    move-result-object p1

    iget p2, p1, Lyads/vx3;->a:I

    iget p1, p1, Lyads/vx3;->b:I

    invoke-super {p0, p2, p1}, Landroid/webkit/WebView;->onMeasure(II)V

    return-void
.end method

.method public final setAspectRatio(F)V
    .locals 1

    new-instance v0, Lyads/l25;

    invoke-direct {v0, p1}, Lyads/l25;-><init>(F)V

    iput-object v0, p0, Lyads/vb4;->n:Lyads/wx3;

    return-void
.end method

.method public final setClickListener(Lyads/e00;)V
    .locals 0

    iget-object p0, p0, Lyads/vb4;->m:Lyads/yb4;

    iput-object p1, p0, Lyads/yb4;->h:Lyads/e00;

    return-void
.end method

.method public final setPreloadingState(Lyads/jk6;)V
    .locals 0

    iput-object p1, p0, Lyads/vb4;->l:Lyads/jk6;

    return-void
.end method
