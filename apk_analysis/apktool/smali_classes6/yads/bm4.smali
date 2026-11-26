.class public final Lyads/bm4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/gr2;


# direct methods
.method public constructor <init>(Lyads/gr2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/bm4;->a:Lyads/gr2;

    return-void
.end method


# virtual methods
.method public final a(Lyads/am4;)V
    .locals 1

    iget-object v0, p1, Lyads/am4;->b:Landroid/view/TextureView;

    iget-object p0, p0, Lyads/bm4;->a:Lyads/gr2;

    invoke-virtual {p0, v0}, Lyads/gr2;->a(Landroid/view/TextureView;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lyads/am4;->c:Lyads/sk4;

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Lyads/am4;->a:Lyads/xd6;

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final b(Lyads/am4;)V
    .locals 2

    iget-object v0, p1, Lyads/am4;->b:Landroid/view/TextureView;

    iget-object p0, p0, Lyads/bm4;->a:Lyads/gr2;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lyads/gr2;->a(Landroid/view/TextureView;)V

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lyads/am4;->c:Lyads/sk4;

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Lyads/am4;->a:Lyads/xd6;

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
