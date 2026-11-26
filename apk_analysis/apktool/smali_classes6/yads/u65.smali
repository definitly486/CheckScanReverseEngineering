.class public final Lyads/u65;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/nf6;

.field public final b:Lyads/au;

.field public final c:Lyads/w65;

.field public final d:Lyads/s65;


# direct methods
.method public constructor <init>(Lyads/nf6;Lyads/sl4;)V
    .locals 2

    new-instance v0, Lyads/au;

    invoke-direct {v0}, Lyads/au;-><init>()V

    new-instance v1, Lyads/w65;

    invoke-direct {v1, p1, p2}, Lyads/w65;-><init>(Lyads/nf6;Lyads/sl4;)V

    new-instance p2, Lyads/s65;

    invoke-direct {p2}, Lyads/s65;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/u65;->a:Lyads/nf6;

    iput-object v0, p0, Lyads/u65;->b:Lyads/au;

    iput-object v1, p0, Lyads/u65;->c:Lyads/w65;

    iput-object p2, p0, Lyads/u65;->d:Lyads/s65;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lyads/u65;->a:Lyads/nf6;

    invoke-virtual {v0}, Lyads/rf6;->b()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lyads/am4;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lyads/am4;->c:Lyads/sk4;

    iget-object v1, v1, Lyads/sk4;->a:Lyads/v65;

    iget-object v2, p0, Lyads/u65;->c:Lyads/w65;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v1, Lyads/v65;->a:Landroid/widget/Button;

    iget-object v2, v2, Lyads/w65;->a:Lyads/y65;

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lyads/am4;->b:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lyads/u65;->b:Lyads/au;

    new-instance v4, Lyads/t65;

    invoke-direct {v4, p0, v0, v1}, Lyads/t65;-><init>(Lyads/u65;Lyads/am4;Lyads/v65;)V

    iget-object p0, v3, Lyads/au;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lyads/zt;

    iget-object v1, v3, Lyads/au;->b:Lyads/ju;

    iget-object v3, v3, Lyads/au;->c:Landroid/os/Handler;

    invoke-direct {v0, v2, v4, v1, v3}, Lyads/zt;-><init>(Landroid/graphics/Bitmap;Lyads/t65;Lyads/ju;Landroid/os/Handler;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
