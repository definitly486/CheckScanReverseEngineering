.class public final Lyads/ge6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/cm4;

.field public final b:Lyads/a15;


# direct methods
.method public constructor <init>(Lyads/cm4;Lyads/a15;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ge6;->a:Lyads/cm4;

    iput-object p2, p0, Lyads/ge6;->b:Lyads/a15;

    return-void
.end method


# virtual methods
.method public final a(Lyads/am4;)V
    .locals 4

    iget-object v0, p1, Lyads/am4;->b:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lyads/am4;->a:Lyads/xd6;

    iget-object v1, p0, Lyads/ge6;->b:Lyads/a15;

    iget-object v2, v1, Lyads/a15;->d:Lmb4;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2, v3}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v3, v1, Lyads/a15;->d:Lmb4;

    iget-object v1, v0, Lyads/xd6;->a:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lyads/xd6;->b:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object p1, p1, Lyads/am4;->c:Lyads/sk4;

    iget-object p0, p0, Lyads/ge6;->a:Lyads/cm4;

    iget-object p1, p1, Lyads/sk4;->b:Lyads/wz3;

    invoke-virtual {p0, p1}, Lyads/cm4;->a(Lyads/wz3;)V

    return-void
.end method
