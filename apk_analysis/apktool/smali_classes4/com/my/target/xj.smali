.class public Lcom/my/target/xj;
.super Lcom/my/target/o4;
.source "SourceFile"

# interfaces
.implements Lj2a;


# static fields
.field public static final synthetic t:I


# instance fields
.field public q:Lcom/my/target/yj;

.field public r:Lcom/my/target/n;

.field public s:Lcom/my/target/f0;


# virtual methods
.method public final c(Lv2a;)V
    .locals 8

    new-instance v0, Lcom/my/target/f1$a;

    iget-object v1, p0, Lcom/my/target/o4;->o:Lcom/my/target/f1;

    invoke-direct {v0, v1}, Lcom/my/target/f1$a;-><init>(Lcom/my/target/f1;)V

    iget-object v2, p0, Lcom/my/target/xj;->q:Lcom/my/target/yj;

    iget-object v3, p0, Lcom/my/target/o4;->h:Landroid/widget/FrameLayout;

    if-nez v2, :cond_0

    new-instance v2, Lcom/my/target/f0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/my/target/f0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lho9;->a(Landroid/content/Context;Z)Lcom/my/target/n;

    move-result-object v4

    new-instance v6, Lcom/my/target/yj;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v4, v2, v7, v0}, Lcom/my/target/yj;-><init>(Lcom/my/target/n;Lcom/my/target/f0;Landroid/content/Context;Lu0a;)V

    iput-object v6, p0, Lcom/my/target/xj;->q:Lcom/my/target/yj;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v4, Lyu9;

    invoke-direct {v4, v2}, Lyu9;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v4}, Lcom/my/target/o4;->d(Lyu9;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setClipToOutline(Z)V

    iget-object v2, p0, Lcom/my/target/xj;->q:Lcom/my/target/yj;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    new-instance v2, La71;

    invoke-direct {v2, v5, p0, v0}, La71;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/my/target/xj;->q:Lcom/my/target/yj;

    invoke-virtual {v0}, Lcom/my/target/yj;->getVideoControlView()Lcom/my/target/zj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/zj;->getVideoControlButton()Lcom/my/target/e6;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/my/target/xj;->q:Lcom/my/target/yj;

    invoke-virtual {v0}, Lcom/my/target/yj;->getVideoControlView()Lcom/my/target/zj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/zj;->getSoundControlButton()Lcom/my/target/e6;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/my/target/xj;->r:Lcom/my/target/n;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/my/target/xj;->q:Lcom/my/target/yj;

    invoke-virtual {v0}, Lcom/my/target/yj;->getVideoPlayer()Lcom/my/target/n;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/xj;->r:Lcom/my/target/n;

    :cond_1
    iget-object v0, p0, Lcom/my/target/xj;->s:Lcom/my/target/f0;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/my/target/xj;->q:Lcom/my/target/yj;

    invoke-virtual {v0}, Lcom/my/target/yj;->getVideoView()Lcom/my/target/f0;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/xj;->s:Lcom/my/target/f0;

    :cond_2
    iget-object v0, p0, Lcom/my/target/xj;->q:Lcom/my/target/yj;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/my/target/yj;->getVideoPlayer()Lcom/my/target/n;

    move-result-object v2

    iput-object v2, v1, Lcom/my/target/f1;->c:Lcom/my/target/n;

    invoke-virtual {v0}, Lcom/my/target/yj;->getVideoView()Lcom/my/target/f0;

    move-result-object v2

    iput-object v2, v1, Lcom/my/target/f1;->d:Lcom/my/target/f0;

    iput-object v0, v1, Lcom/my/target/f1;->b:Lcom/my/target/yj;

    iget-object v0, v1, Lcom/my/target/f1;->c:Lcom/my/target/n;

    invoke-interface {v0, v1}, Lcom/my/target/n;->a(Lcom/my/target/n$a;)V

    iget-object v0, v1, Lcom/my/target/f1;->d:Lcom/my/target/f0;

    invoke-virtual {v0, v1}, Lcom/my/target/f0;->setAdVideoViewListener(Lcom/my/target/f0$a;)V

    invoke-virtual {v1, p1, p0}, Lcom/my/target/f1;->e(Lv2a;Lcom/my/target/o4;)V

    iget-object v0, p0, Lcom/my/target/o4;->j:Lcom/my/target/e6;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lv2a;->a:Lxda;

    iget-object p1, p1, Lxda;->Z:Lkha;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lkha;->S:Lh14;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/my/target/xj;->q:Lcom/my/target/yj;

    invoke-virtual {v0}, Lcom/my/target/yj;->getPreviewView()Lcom/my/target/zh;

    move-result-object v0

    iget-object v1, p1, Lxha;->d:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/my/target/zh;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v0, Ly11;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Ly11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public getVideoContent()Lcom/my/target/yj;
    .locals 0

    iget-object p0, p0, Lcom/my/target/xj;->q:Lcom/my/target/yj;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public getVideoPlayer()Lcom/my/target/n;
    .locals 0

    iget-object p0, p0, Lcom/my/target/xj;->r:Lcom/my/target/n;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lcom/my/target/n;

    return-object p0
.end method

.method public getVideoView()Lcom/my/target/f0;
    .locals 0

    iget-object p0, p0, Lcom/my/target/xj;->s:Lcom/my/target/f0;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
