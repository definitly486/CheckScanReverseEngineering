.class public final Lyads/be3;
.super Lyads/rf6;
.source "SourceFile"


# static fields
.field public static final synthetic l:I


# instance fields
.field public final c:Ly22;

.field public final d:Lyads/hc3;

.field public final e:Lyads/vd3;

.field public final f:Lyads/un5;

.field public g:Lmb4;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lyads/b05;Lyads/d9;Ly22;)V
    .locals 3

    new-instance v0, Lyads/hc3;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lyads/kj4;

    invoke-direct {v2, p3}, Lyads/kj4;-><init>(Lyads/d9;)V

    invoke-direct {v0, v1, v2, p2}, Lyads/hc3;-><init>(Landroid/content/Context;Lyads/bc3;Lyads/b05;)V

    new-instance p3, Lyads/vd3;

    invoke-direct {p3, p2}, Lyads/vd3;-><init>(Lyads/b05;)V

    new-instance p2, Lyads/un5;

    invoke-direct {p2}, Lyads/un5;-><init>()V

    invoke-direct {p0, p1}, Lyads/rf6;-><init>(Landroid/view/View;)V

    iput-object p4, p0, Lyads/be3;->c:Ly22;

    iput-object v0, p0, Lyads/be3;->d:Lyads/hc3;

    iput-object p3, p0, Lyads/be3;->e:Lyads/vd3;

    iput-object p2, p0, Lyads/be3;->f:Lyads/un5;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    .line 66
    check-cast p1, Landroid/widget/ImageView;

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    iget-object p0, p0, Lyads/be3;->f:Lyads/un5;

    invoke-virtual {p0, p1}, Lyads/un5;->a(Landroid/widget/ImageView;)V

    const/16 p0, 0x8

    .line 69
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p0, 0x0

    .line 72
    invoke-virtual {p1, p0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Landroid/widget/ImageView;

    check-cast p2, Lyads/rd3;

    iget-object p0, p0, Lyads/be3;->e:Lyads/vd3;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lyads/vd3;->a:Lyads/b05;

    invoke-virtual {v0, p2}, Lyads/b05;->a(Lyads/rd3;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lyads/vd3;->a:Lyads/b05;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lyads/b05;->b(Lyads/rd3;)Lyads/a05;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lyads/b05;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    instance-of p0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p0, :cond_2

    new-instance p0, Lyads/du;

    invoke-direct {p0}, Lyads/du;-><init>()V

    goto :goto_1

    :cond_2
    new-instance p0, Lyads/yk2;

    invoke-direct {p0}, Lyads/yk2;-><init>()V

    :goto_1
    invoke-interface {p0, p1, v0}, Lyads/bu;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final b(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroid/widget/ImageView;

    check-cast p2, Lyads/rd3;

    iget-object p1, p0, Lyads/be3;->g:Lmb4;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iget-object p1, p0, Lyads/be3;->c:Ly22;

    new-instance v1, Lyads/ae3;

    invoke-direct {v1, p0, p2, v0}, Lyads/ae3;-><init>(Lyads/be3;Lyads/rd3;Le02;)V

    const/4 p2, 0x3

    invoke-static {p1, v0, v0, v1, p2}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p1

    iput-object p1, p0, Lyads/be3;->g:Lmb4;

    return-void
.end method
