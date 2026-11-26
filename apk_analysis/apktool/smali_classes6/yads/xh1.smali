.class public final Lyads/xh1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/wh1;
.implements Lyads/s51;
.implements Lyads/r16;


# instance fields
.field public final synthetic a:Lyads/t51;

.field public final synthetic b:Lyads/u16;

.field public c:Lyads/br0;

.field public d:Lyads/tt;

.field public final e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/t51;

    invoke-direct {v0}, Lyads/t51;-><init>()V

    iput-object v0, p0, Lyads/xh1;->a:Lyads/t51;

    new-instance v0, Lyads/u16;

    invoke-direct {v0}, Lyads/u16;-><init>()V

    iput-object v0, p0, Lyads/xh1;->b:Lyads/u16;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyads/xh1;->e:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()Lyads/br0;
    .locals 0

    .line 6
    iget-object p0, p0, Lyads/xh1;->c:Lyads/br0;

    return-object p0
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lyads/xh1;->b:Lyads/u16;

    invoke-virtual {p0, p1}, Lyads/u16;->a(Landroid/view/View;)V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lyads/xh1;->b:Lyads/u16;

    invoke-virtual {p0, p1}, Lyads/u16;->b(Landroid/view/View;)V

    return-void
.end method

.method public final c()Lyads/tt;
    .locals 0

    iget-object p0, p0, Lyads/xh1;->d:Lyads/tt;

    return-object p0
.end method

.method public final d()V
    .locals 0

    iget-object p0, p0, Lyads/xh1;->a:Lyads/t51;

    invoke-interface {p0}, Lyads/s51;->d()V

    return-void
.end method

.method public final e()V
    .locals 0

    iget-object p0, p0, Lyads/xh1;->a:Lyads/t51;

    invoke-interface {p0}, Lyads/s51;->e()V

    return-void
.end method

.method public final f()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lyads/xh1;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final g()Z
    .locals 0

    iget-object p0, p0, Lyads/xh1;->b:Lyads/u16;

    invoke-virtual {p0}, Lyads/u16;->g()Z

    move-result p0

    return p0
.end method

.method public final h()V
    .locals 0

    iget-object p0, p0, Lyads/xh1;->a:Lyads/t51;

    iget-object p0, p0, Lyads/t51;->a:Lyads/l51;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lyads/l51;->d()V

    :cond_0
    return-void
.end method

.method public final i()Lyads/l51;
    .locals 0

    iget-object p0, p0, Lyads/xh1;->a:Lyads/t51;

    iget-object p0, p0, Lyads/t51;->a:Lyads/l51;

    return-object p0
.end method

.method public final setBindingContext(Lyads/tt;)V
    .locals 0

    iput-object p1, p0, Lyads/xh1;->d:Lyads/tt;

    return-void
.end method

.method public final setBorder(Lyads/tt;Lyads/f51;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lyads/xh1;->a:Lyads/t51;

    invoke-virtual {p0, p1, p2, p3}, Lyads/t51;->setBorder(Lyads/tt;Lyads/f51;Landroid/view/View;)V

    return-void
.end method

.method public final setDiv(Lyads/br0;)V
    .locals 0

    iput-object p1, p0, Lyads/xh1;->c:Lyads/br0;

    return-void
.end method

.method public final setNeedClipping(Z)V
    .locals 0

    iget-object p0, p0, Lyads/xh1;->a:Lyads/t51;

    invoke-virtual {p0, p1}, Lyads/t51;->setNeedClipping(Z)V

    return-void
.end method
