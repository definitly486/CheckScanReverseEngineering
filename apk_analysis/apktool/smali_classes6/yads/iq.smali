.class public final Lyads/iq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public final b:Lyads/kq;

.field public final c:I

.field public d:Landroid/view/ViewGroup;

.field public final synthetic e:Lyads/oq;


# direct methods
.method public constructor <init>(Lyads/oq;Landroid/view/ViewGroup;Lyads/kq;I)V
    .locals 0

    iput-object p1, p0, Lyads/iq;->e:Lyads/oq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/iq;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lyads/iq;->b:Lyads/kq;

    iput p4, p0, Lyads/iq;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    iget-object v0, p0, Lyads/iq;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lyads/iq;->e:Lyads/oq;

    iget-object v1, p0, Lyads/iq;->a:Landroid/view/ViewGroup;

    iget-object v2, p0, Lyads/iq;->b:Lyads/kq;

    iget v3, p0, Lyads/iq;->c:I

    check-cast v0, Lyads/a62;

    check-cast v2, Lyads/t02;

    iget-object v4, v0, Lyads/a62;->q:Lyads/tt;

    iget-object v4, v4, Lyads/tt;->a:Lyads/vq0;

    invoke-static {v1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lzo7;

    move-result-object v5

    invoke-interface {v5}, Lzo7;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v4}, Lyads/vq0;->u()Lyads/w55;

    move-result-object v7

    invoke-static {v7, v6}, Lyads/di2;->a(Lyads/ci2;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, v2, Lyads/t02;->a:Lyads/t52;

    iget-object v2, v2, Lyads/t52;->a:Lyads/br0;

    iget-object v4, v0, Lyads/a62;->q:Lyads/tt;

    iget-object v4, v4, Lyads/tt;->b:Lyads/fs2;

    iget-object v5, v0, Lyads/a62;->r:Lyads/qh2;

    invoke-virtual {v5, v2, v4}, Lyads/qh2;->c(Lyads/br0;Lyads/fs2;)Landroid/view/View;

    move-result-object v4

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v0, Lyads/a62;->y:Ljava/util/LinkedHashMap;

    iget-object v6, v0, Lyads/a62;->z:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    iget-object v7, v0, Lyads/a62;->v:Lyads/n32;

    iget-object v8, v0, Lyads/a62;->z:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Lyads/n32;->a(Ljava/lang/String;)Lyads/n32;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    check-cast v7, Lyads/n32;

    iget-object v5, v0, Lyads/a62;->s:Lyads/w41;

    iget-object v6, v0, Lyads/a62;->q:Lyads/tt;

    invoke-virtual {v5, v6, v4, v2, v7}, Lyads/w41;->a(Lyads/tt;Landroid/view/View;Lyads/br0;Lyads/n32;)V

    iget-object v0, v0, Lyads/a62;->x:Ljava/util/LinkedHashMap;

    new-instance v5, Lyads/ou5;

    invoke-direct {v5, v3, v2, v4}, Lyads/ou5;-><init>(ILyads/br0;Landroid/view/View;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v1, p0, Lyads/iq;->d:Landroid/view/ViewGroup;

    return-void
.end method
