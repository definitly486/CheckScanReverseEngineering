.class public abstract Lyads/u71;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public final a:Lyads/pi2;

.field public final b:Lyads/tt;

.field public final c:Lyads/w41;

.field public final d:Lyads/qh2;

.field public e:Lyads/br0;


# direct methods
.method public constructor <init>(Lyads/pi2;Lyads/tt;Lyads/w41;Lyads/qh2;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lyads/u71;->a:Lyads/pi2;

    iput-object p2, p0, Lyads/u71;->b:Lyads/tt;

    iput-object p3, p0, Lyads/u71;->c:Lyads/w41;

    iput-object p4, p0, Lyads/u71;->d:Lyads/qh2;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .line 142
    return-void
.end method

.method public a(Lyads/tt;Lyads/br0;ILyads/n32;)V
    .locals 6

    iget-object p3, p1, Lyads/tt;->a:Lyads/vq0;

    iget-object v0, p1, Lyads/tt;->b:Lyads/fs2;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lyads/u71;->a:Lyads/pi2;

    invoke-virtual {v1}, Lyads/pi2;->j()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lyads/u71;->e:Lyads/br0;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_3

    instance-of v2, v1, Lyads/wh1;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lyads/wh1;

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lyads/wh1;->c()Lyads/tt;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v2, Lyads/tt;->b:Lyads/fs2;

    if-eqz v2, :cond_2

    iget-object v4, p0, Lyads/u71;->e:Lyads/br0;

    invoke-static {v4, p2, v2, v0}, Lyads/b81;->a(Lyads/br0;Lyads/br0;Lyads/fs2;Lyads/fs2;)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    move-object v3, v1

    :cond_2
    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lyads/u71;->e:Lyads/br0;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lyads/u71;->a()V

    :cond_4
    iget-object v1, p0, Lyads/u71;->a:Lyads/pi2;

    iget-object v2, p1, Lyads/tt;->a:Lyads/vq0;

    invoke-static {v1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lzo7;

    move-result-object v3

    invoke-interface {v3}, Lzo7;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v2}, Lyads/vq0;->u()Lyads/w55;

    move-result-object v5

    invoke-static {v5, v4}, Lyads/di2;->a(Lyads/ci2;Landroid/view/View;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lyads/u71;->d:Lyads/qh2;

    iget-object v2, p1, Lyads/tt;->b:Lyads/fs2;

    invoke-virtual {v1, p2, v2}, Lyads/qh2;->c(Lyads/br0;Lyads/fs2;)Landroid/view/View;

    move-result-object v3

    iget-object v1, p0, Lyads/u71;->a:Lyads/pi2;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_3
    iput-object p2, p0, Lyads/u71;->e:Lyads/br0;

    iget-object v1, p3, Lyads/vq0;->z:Lyads/ub5;

    iget-object v2, p0, Lyads/u71;->b:Lyads/tt;

    iget-object v2, v2, Lyads/tt;->b:Lyads/fs2;

    invoke-interface {v1, p4, p2, v0, v2}, Lyads/ub5;->a(Lyads/n32;Lyads/br0;Lyads/fs2;Lyads/fs2;)Lyads/ms2;

    iget-object v0, p0, Lyads/u71;->c:Lyads/w41;

    invoke-virtual {v0, p1, v3, p2, p4}, Lyads/w41;->a(Lyads/tt;Landroid/view/View;Lyads/br0;Lyads/n32;)V

    invoke-virtual {p0, v3}, Lyads/u71;->a(Landroid/view/View;)V

    iget-object p0, p3, Lyads/vq0;->z:Lyads/ub5;

    invoke-virtual {p2}, Lyads/br0;->a()Lyads/p41;

    move-result-object p1

    invoke-interface {p0, p1}, Lyads/ub5;->a(Lyads/p41;)V

    return-void
.end method
