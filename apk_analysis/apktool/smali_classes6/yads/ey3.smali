.class public final Lyads/ey3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/bk;
.implements Lyads/dn0;


# instance fields
.field public final a:Lyads/be3;

.field public final b:Lyads/z14;


# direct methods
.method public constructor <init>(Lyads/be3;Lyads/z14;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ey3;->a:Lyads/be3;

    iput-object p2, p0, Lyads/ey3;->b:Lyads/z14;

    return-void
.end method

.method public static a(Lyads/rf6;)Landroid/view/View;
    .locals 0

    if-eqz p0, :cond_0

    .line 75
    invoke-virtual {p0}, Lyads/rf6;->b()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/util/List;)Lyads/rd3;
    .locals 1

    if-eqz p0, :cond_0

    .line 73
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 74
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/rd3;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 63
    iget-object v0, p0, Lyads/ey3;->a:Lyads/be3;

    invoke-static {v0}, Lyads/ey3;->a(Lyads/rf6;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 64
    iget-object v1, p0, Lyads/ey3;->a:Lyads/be3;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 65
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    iget-object v1, v1, Lyads/be3;->f:Lyads/un5;

    invoke-virtual {v1, v0}, Lyads/un5;->a(Landroid/widget/ImageView;)V

    const/16 v1, 0x8

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v1, 0x0

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 71
    :cond_0
    iget-object v0, p0, Lyads/ey3;->b:Lyads/z14;

    invoke-static {v0}, Lyads/ey3;->a(Lyads/rf6;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    if-eqz v0, :cond_1

    .line 72
    iget-object p0, p0, Lyads/ey3;->b:Lyads/z14;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Lyads/rf6;->a(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final a(Lyads/ak;Lyads/vf6;)V
    .locals 3

    .line 57
    iget-object v0, p1, Lyads/ak;->c:Ljava/lang/Object;

    .line 58
    check-cast v0, Lyads/v14;

    .line 59
    iget-object v1, p0, Lyads/ey3;->a:Lyads/be3;

    if-eqz v1, :cond_0

    .line 60
    iget-object v2, v0, Lyads/v14;->c:Ljava/util/List;

    .line 61
    invoke-static {v2}, Lyads/ey3;->a(Ljava/util/List;)Lyads/rd3;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Lyads/rf6;->a(Lyads/ak;Lyads/vf6;Ljava/lang/Object;)V

    .line 62
    :cond_0
    iget-object p0, p0, Lyads/ey3;->b:Lyads/z14;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2, v0}, Lyads/rf6;->a(Lyads/ak;Lyads/vf6;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 5

    check-cast p1, Lyads/v14;

    iget-object v0, p0, Lyads/ey3;->a:Lyads/be3;

    iget-object v1, p1, Lyads/v14;->c:Ljava/util/List;

    invoke-static {v1}, Lyads/ey3;->a(Ljava/util/List;)Lyads/rd3;

    move-result-object v1

    invoke-static {v0}, Lyads/ey3;->a(Lyads/rf6;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2, v1}, Lyads/be3;->a(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v4, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-object p0, p0, Lyads/ey3;->b:Lyads/z14;

    invoke-static {p0}, Lyads/ey3;->a(Lyads/rf6;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1, p1}, Lyads/rf6;->a(Landroid/view/View;Ljava/lang/Object;)Z

    move-result p0

    if-ne p0, v4, :cond_1

    move p0, v4

    goto :goto_1

    :cond_1
    move p0, v3

    :goto_1
    if-nez v0, :cond_3

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    return v3

    :cond_3
    :goto_2
    return v4
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 7

    check-cast p1, Lyads/v14;

    iget-object v0, p1, Lyads/v14;->c:Ljava/util/List;

    invoke-static {v0}, Lyads/ey3;->a(Ljava/util/List;)Lyads/rd3;

    move-result-object v0

    iget-object v1, p0, Lyads/ey3;->a:Lyads/be3;

    invoke-static {v1}, Lyads/ey3;->a(Lyads/rf6;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v3, p0, Lyads/ey3;->a:Lyads/be3;

    if-eqz v3, :cond_1

    iget-object v4, v3, Lyads/be3;->g:Lmb4;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-interface {v4, v5}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iget-object v4, v3, Lyads/be3;->c:Ly22;

    new-instance v6, Lyads/ae3;

    invoke-direct {v6, v3, v0, v5}, Lyads/ae3;-><init>(Lyads/be3;Lyads/rd3;Le02;)V

    const/4 v0, 0x3

    invoke-static {v4, v5, v5, v6, v0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object v0

    iput-object v0, v3, Lyads/be3;->g:Lmb4;

    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lyads/ey3;->b:Lyads/z14;

    invoke-static {v0}, Lyads/ey3;->a(Lyads/rf6;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object p0, p0, Lyads/ey3;->b:Lyads/z14;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p1}, Lyads/z14;->a(Lyads/v14;)V

    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lyads/ey3;->b:Lyads/z14;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Lyads/rf6;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-object p0, p0, Lyads/ey3;->a:Lyads/be3;

    if-eqz p0, :cond_1

    .line 75
    invoke-virtual {p0}, Lyads/rf6;->b()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final c()Lyads/tg6;
    .locals 1

    .line 71
    iget-object v0, p0, Lyads/ey3;->b:Lyads/z14;

    invoke-static {v0}, Lyads/ey3;->a(Lyads/rf6;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    .line 72
    iget-object p0, p0, Lyads/ey3;->a:Lyads/be3;

    invoke-static {p0}, Lyads/ey3;->a(Lyads/rf6;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 73
    new-instance p0, Lyads/tg6;

    invoke-direct {p0, v0}, Lyads/tg6;-><init>(Landroid/view/View;)V

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lyads/tg6;

    invoke-direct {v0, p0}, Lyads/tg6;-><init>(Landroid/view/View;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 7

    check-cast p1, Lyads/v14;

    iget-object v0, p1, Lyads/v14;->c:Ljava/util/List;

    invoke-static {v0}, Lyads/ey3;->a(Ljava/util/List;)Lyads/rd3;

    move-result-object v0

    iget-object v1, p0, Lyads/ey3;->a:Lyads/be3;

    invoke-static {v1}, Lyads/ey3;->a(Lyads/rf6;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v3, p0, Lyads/ey3;->a:Lyads/be3;

    if-eqz v3, :cond_1

    iget-object v4, v3, Lyads/be3;->g:Lmb4;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-interface {v4, v5}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iget-object v4, v3, Lyads/be3;->c:Ly22;

    new-instance v6, Lyads/ae3;

    invoke-direct {v6, v3, v0, v5}, Lyads/ae3;-><init>(Lyads/be3;Lyads/rd3;Le02;)V

    const/4 v0, 0x3

    invoke-static {v4, v5, v5, v6, v0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object v0

    iput-object v0, v3, Lyads/be3;->g:Lmb4;

    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lyads/ey3;->b:Lyads/z14;

    invoke-static {v0}, Lyads/ey3;->a(Lyads/rf6;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lyads/ey3;->b:Lyads/z14;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v0, p1}, Lyads/z14;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lyads/v14;)V

    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public final d()Z
    .locals 4

    iget-object v0, p0, Lyads/ey3;->b:Lyads/z14;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x64

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lyads/rf6;->b()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lyads/eh6;->a(Landroid/view/View;)I

    move-result v0

    if-lt v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object p0, p0, Lyads/ey3;->a:Lyads/be3;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lyads/rf6;->b()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lyads/eh6;->a(Landroid/view/View;)I

    move-result p0

    if-lt p0, v3, :cond_1

    move p0, v2

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-nez v0, :cond_3

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    return v1

    :cond_3
    :goto_2
    return v2
.end method

.method public final destroy()V
    .locals 0

    iget-object p0, p0, Lyads/ey3;->b:Lyads/z14;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lyads/rf6;->a()V

    :cond_0
    return-void
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Lyads/ey3;->b:Lyads/z14;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lyads/rf6;->c()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lyads/ey3;->a:Lyads/be3;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lyads/rf6;->c()Z

    move-result p0

    if-ne p0, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
