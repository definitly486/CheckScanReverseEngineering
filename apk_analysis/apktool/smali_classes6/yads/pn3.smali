.class public abstract Lyads/pn3;
.super Lyads/o05;
.source "SourceFile"


# instance fields
.field private final b:Lyads/e4;

.field private final c:Lyads/do6;

.field private final d:Lyads/aw3;

.field private final e:Lyads/fw3;

.field private final f:Lyads/zg5;

.field private final g:Lyads/yn;

.field private final h:Lyads/qn3;

.field private final i:Ljava/util/ArrayList;

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILyads/e4;Lyads/do6;)V
    .locals 8

    sget-object v0, Lyads/ee5;->a:Lyads/ng3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lyads/ng3;->a()Lyads/aw3;

    move-result-object v0

    new-instance v1, Lyads/fw3;

    invoke-direct {v1, p1}, Lyads/fw3;-><init>(Landroid/content/Context;)V

    new-instance v7, Lyads/t5;

    invoke-direct {v7}, Lyads/t5;-><init>()V

    new-instance v6, Lyads/wn;

    invoke-direct {v6, p1, p4, p5, v7}, Lyads/wn;-><init>(Landroid/content/Context;Lyads/e4;Lyads/do6;Lyads/t5;)V

    sget-object v2, Lyads/zg5;->l:Lyads/zg5;

    if-nez v2, :cond_1

    sget-object v2, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lyads/zg5;->l:Lyads/zg5;

    if-nez v3, :cond_0

    new-instance v3, Lyads/zg5;

    invoke-direct {v3}, Lyads/zg5;-><init>()V

    sput-object v3, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v2

    move-object v2, v3

    goto :goto_2

    :goto_1
    monitor-exit v2

    throw p0

    :cond_1
    :goto_2
    invoke-direct {p0, p1, p2, p3}, Lyads/o05;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p4, p0, Lyads/pn3;->b:Lyads/e4;

    iput-object p5, p0, Lyads/pn3;->c:Lyads/do6;

    iput-object v0, p0, Lyads/pn3;->d:Lyads/aw3;

    iput-object v1, p0, Lyads/pn3;->e:Lyads/fw3;

    iput-object v2, p0, Lyads/pn3;->f:Lyads/zg5;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lyads/pn3;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lyads/fw3;->a()V

    move-object v5, p0

    check-cast v5, Lcom/yandex/mobile/ads/banner/BannerAdView;

    new-instance v2, Lyads/yn;

    move-object v3, p1

    move-object v4, p4

    invoke-direct/range {v2 .. v7}, Lyads/yn;-><init>(Landroid/content/Context;Lyads/e4;Lcom/yandex/mobile/ads/banner/BannerAdView;Lyads/wn;Lyads/t5;)V

    iput-object v2, p0, Lyads/pn3;->g:Lyads/yn;

    new-instance p1, Lyads/q8;

    invoke-direct {p1, v4}, Lyads/q8;-><init>(Lyads/e4;)V

    iget-object p2, v6, Lyads/wn;->b:Lyads/v5;

    iput-object p1, p2, Lyads/v5;->e:Lyads/g85;

    invoke-static {p0, v2}, Lyads/tn3;->a(Lyads/pn3;Lyads/yn;)Lyads/qn3;

    move-result-object p1

    iput-object p1, p0, Lyads/pn3;->h:Lyads/qn3;

    invoke-interface {p1, v3, p0}, Lyads/qn3;->a(Landroid/content/Context;Lyads/pn3;)V

    return-void
.end method

.method private final a(I)V
    .locals 0

    sget p1, Lyads/ya;->b:I

    iget-object p1, p0, Lyads/pn3;->g:Lyads/yn;

    invoke-static {p1}, Lyads/ya;->a(Lyads/nz;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lyads/pn3;->i:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/gh6;

    check-cast p1, Lyads/yn;

    invoke-virtual {p1}, Lyads/yn;->m()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final a(Lyads/pn3;Lyads/n8;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lyads/pn3;->g:Lyads/yn;

    .line 38
    iget-object v1, p1, Lyads/n8;->a:Ljava/lang/String;

    .line 39
    iget-object v0, v0, Lyads/pp;->c:Lyads/e4;

    .line 40
    invoke-virtual {v0, v1}, Lyads/e4;->a(Ljava/lang/String;)V

    .line 41
    iget-object p0, p0, Lyads/pn3;->g:Lyads/yn;

    invoke-virtual {p0, p1}, Lyads/pp;->b(Lyads/n8;)V

    return-void
.end method

.method public static synthetic b(Lyads/pn3;Lyads/n8;)V
    .locals 0

    .line 43
    invoke-static {p0, p1}, Lyads/pn3;->a(Lyads/pn3;Lyads/n8;)V

    return-void
.end method


# virtual methods
.method public final a(Lyads/n8;)V
    .locals 3

    .line 35
    iget-object v0, p0, Lyads/pn3;->e:Lyads/fw3;

    invoke-virtual {v0}, Lyads/fw3;->a()V

    .line 36
    iget-object v0, p0, Lyads/pn3;->d:Lyads/aw3;

    new-instance v1, Lzt;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, Lzt;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lyads/aw3;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lyads/pm6;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lyads/pn3;->e:Lyads/fw3;

    invoke-virtual {v0}, Lyads/fw3;->a()V

    .line 43
    iget-object p0, p0, Lyads/pn3;->g:Lyads/yn;

    .line 44
    iget-object v0, p0, Lyads/yn;->F:Lyads/wn;

    .line 45
    iput-object v0, p0, Lyads/pp;->v:Lyads/wn;

    .line 46
    iput-object p1, v0, Lyads/wn;->c:Lyads/pm6;

    .line 47
    iget-object p0, v0, Lyads/wn;->b:Lyads/v5;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyads/v5;->a([Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lyads/r70;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lyads/pn3;->e:Lyads/fw3;

    invoke-virtual {v0}, Lyads/fw3;->a()V

    .line 49
    iget-object p0, p0, Lyads/pn3;->g:Lyads/yn;

    .line 50
    iget-object p1, p1, Lyads/r70;->a:Lyads/sl5;

    .line 51
    iget-object p0, p0, Lyads/pp;->c:Lyads/e4;

    .line 52
    invoke-virtual {p0, p1}, Lyads/e4;->a(Lyads/sl5;)V

    return-void
.end method

.method public final addVisibilityChangeListener(Lyads/gh6;)V
    .locals 0

    iget-object p0, p0, Lyads/pn3;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Lyads/r70;
    .locals 3

    iget-object v0, p0, Lyads/pn3;->e:Lyads/fw3;

    invoke-virtual {v0}, Lyads/fw3;->a()V

    iget-object p0, p0, Lyads/pn3;->g:Lyads/yn;

    iget-object v0, p0, Lyads/pp;->w:Lyads/d9;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lyads/d9;->c()Lyads/wx2;

    move-result-object v0

    iget v2, v0, Lyads/wx2;->c:I

    if-nez v2, :cond_1

    iget v2, v0, Lyads/wx2;->d:I

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    :cond_2
    iget-object p0, p0, Lyads/pp;->c:Lyads/e4;

    iget-object p0, p0, Lyads/e4;->d:Lyads/tl5;

    iget-object v0, p0, Lyads/tl5;->a:Lyads/sl5;

    :cond_3
    if-eqz v0, :cond_4

    new-instance p0, Lyads/r70;

    invoke-direct {p0, v0}, Lyads/r70;-><init>(Lyads/sl5;)V

    return-object p0

    :cond_4
    return-object v1
.end method

.method public final c()Lyads/i70;
    .locals 6

    iget-object v0, p0, Lyads/pn3;->e:Lyads/fw3;

    invoke-virtual {v0}, Lyads/fw3;->a()V

    new-instance v0, Lyads/i70;

    iget-object v1, p0, Lyads/pn3;->e:Lyads/fw3;

    invoke-virtual {v1}, Lyads/fw3;->a()V

    iget-object v1, p0, Lyads/pn3;->g:Lyads/yn;

    iget-object v1, v1, Lyads/yn;->N:Lyads/go;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lyads/go;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    iget-object v3, p0, Lyads/pn3;->e:Lyads/fw3;

    invoke-virtual {v3}, Lyads/fw3;->a()V

    iget-object v3, p0, Lyads/pn3;->g:Lyads/yn;

    iget-object v3, v3, Lyads/yn;->N:Lyads/go;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lyads/go;->getAdInfo()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    iget-object v4, p0, Lyads/pn3;->e:Lyads/fw3;

    invoke-virtual {v4}, Lyads/fw3;->a()V

    iget-object v4, p0, Lyads/pn3;->g:Lyads/yn;

    iget-object v4, v4, Lyads/yn;->N:Lyads/go;

    if-eqz v4, :cond_3

    invoke-interface {v4}, Lyads/go;->a()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v2

    :goto_2
    iget-object v5, p0, Lyads/pn3;->e:Lyads/fw3;

    invoke-virtual {v5}, Lyads/fw3;->a()V

    iget-object p0, p0, Lyads/pn3;->g:Lyads/yn;

    iget-object p0, p0, Lyads/yn;->N:Lyads/go;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lyads/go;->b()Ljava/util/List;

    move-result-object v2

    :cond_4
    if-nez v2, :cond_5

    sget-object v2, Lkx2;->b:Lkx2;

    :cond_5
    invoke-direct {v0, v1, v3, v4, v2}, Lyads/i70;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public final d()Lyads/gd6;
    .locals 1

    iget-object v0, p0, Lyads/pn3;->e:Lyads/fw3;

    invoke-virtual {v0}, Lyads/fw3;->a()V

    iget-object p0, p0, Lyads/pn3;->g:Lyads/yn;

    iget-object p0, p0, Lyads/yn;->G:Lyads/gd6;

    return-object p0
.end method

.method public final getAdConfiguration$mobileads_externalRelease()Lyads/e4;
    .locals 0

    iget-object p0, p0, Lyads/pn3;->b:Lyads/e4;

    return-object p0
.end method

.method public final getHeightMeasureSpec$mobileads_externalRelease()I
    .locals 0

    iget p0, p0, Lyads/pn3;->k:I

    return p0
.end method

.method public final getSdkEnvironmentModule$mobileads_externalRelease()Lyads/bf5;
    .locals 0

    iget-object p0, p0, Lyads/pn3;->c:Lyads/do6;

    return-object p0
.end method

.method public final getWidthMeasureSpec$mobileads_externalRelease()I
    .locals 0

    iget p0, p0, Lyads/pn3;->j:I

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object v0, p0, Lyads/pn3;->h:Lyads/qn3;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    invoke-interface {v0}, Lyads/qn3;->onAttachedToWindow()V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget v0, Lyads/ya;->b:I

    iget-object v0, p0, Lyads/pn3;->g:Lyads/yn;

    invoke-static {v0}, Lyads/ya;->a(Lyads/nz;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lyads/pn3;->g:Lyads/yn;

    iget-object v1, v0, Lyads/pp;->w:Lyads/d9;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lyads/d9;->c()Lyads/wx2;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, v0, Lyads/pp;->c:Lyads/e4;

    iget-object v2, v2, Lyads/e4;->d:Lyads/tl5;

    iget-object v2, v2, Lyads/tl5;->a:Lyads/sl5;

    iget-object v3, v0, Lyads/pp;->w:Lyads/d9;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    iget-object v5, v0, Lyads/pp;->a:Landroid/content/Context;

    iget-object v0, v0, Lyads/yn;->H:Lyads/ao;

    invoke-static {v5, v3, v1, v0, v2}, Lyads/ul5;->a(Landroid/content/Context;Lyads/d9;Lyads/wx2;Lyads/ao;Lyads/sl5;)Z

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lyads/pn3;->b:Lyads/e4;

    iget-object v0, v0, Lyads/e4;->e:Lyads/n8;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lyads/pn3;->a(Lyads/n8;)V

    :cond_3
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object v0, p0, Lyads/pn3;->h:Lyads/qn3;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    invoke-interface {v0}, Lyads/qn3;->onDetachedFromWindow()V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    iput p1, p0, Lyads/pn3;->j:I

    iput p2, p0, Lyads/pn3;->k:I

    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object v0, p0, Lyads/pn3;->f:Lyads/zg5;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lyads/pn3;->f:Lyads/zg5;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lyads/fe5;->F0()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne p0, p1, :cond_1

    invoke-direct {p0, p2}, Lyads/pn3;->a(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, p2}, Lyads/pn3;->a(I)V

    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-direct {p0, p1}, Lyads/pn3;->a(I)V

    return-void
.end method

.method public final removeVisibilityChangeListener(Lyads/gh6;)V
    .locals 0

    iget-object p0, p0, Lyads/pn3;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
