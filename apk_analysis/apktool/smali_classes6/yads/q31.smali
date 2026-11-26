.class public final Lyads/q31;
.super Lyads/yh1;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lyads/tt;

.field public final synthetic c:Lyads/r31;

.field public final synthetic d:Lyads/wc5;


# direct methods
.method public constructor <init>(Landroid/view/View;Lyads/tt;Lyads/r31;Lyads/wc5;Lyads/vq0;)V
    .locals 0

    iput-object p1, p0, Lyads/q31;->a:Landroid/view/View;

    iput-object p2, p0, Lyads/q31;->b:Lyads/tt;

    iput-object p3, p0, Lyads/q31;->c:Lyads/r31;

    iput-object p4, p0, Lyads/q31;->d:Lyads/wc5;

    invoke-direct {p0, p5}, Lyads/yh1;-><init>(Lyads/vq0;)V

    return-void
.end method

.method public static final a(Lyads/wc5;Landroid/graphics/Bitmap;)Lj59;
    .locals 0

    .line 80
    iput-object p1, p0, Lyads/wc5;->d:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 81
    iput-boolean p1, p0, Lyads/wc5;->g:Z

    .line 82
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 83
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final a(Lyads/uw;)V
    .locals 6

    iget-object v0, p0, Lyads/q31;->a:Landroid/view/View;

    iget-object v1, p0, Lyads/q31;->b:Lyads/tt;

    iget-object p1, p1, Lyads/uw;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lyads/q31;->c:Lyads/r31;

    iget-object v2, v2, Lyads/r31;->g:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/p31;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v5, v4, Lyads/n31;

    if-eqz v5, :cond_0

    check-cast v4, Lyads/n31;

    iget-object v4, v4, Lyads/n31;->b:Lyads/ud1;

    goto :goto_1

    :cond_0
    instance-of v5, v4, Lyads/o31;

    if-eqz v5, :cond_1

    check-cast v4, Lyads/o31;

    iget-object v4, v4, Lyads/o31;->a:Lyads/vd1;

    :goto_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_2
    const/4 v3, 0x0

    :cond_3
    iget-object p0, p0, Lyads/q31;->d:Lyads/wc5;

    new-instance v2, Ldt0;

    const/4 v4, 0x3

    invoke-direct {v2, p0, v4}, Ldt0;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v1, p1, v3, v2}, Lyads/tq;->a(Landroid/view/View;Lyads/tt;Landroid/graphics/Bitmap;Ljava/util/List;Lnl3;)V

    return-void
.end method
