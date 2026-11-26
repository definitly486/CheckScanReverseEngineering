.class public final Lyads/la1;
.super Lyads/oh2;
.source "SourceFile"


# instance fields
.field public final b:Lyads/v41;

.field public final c:Lyads/oa1;

.field public final d:Lyads/hd1;

.field public final e:Lws6;


# direct methods
.method public constructor <init>(Lyads/v41;Lyads/oa1;Lyads/hd1;Lws6;)V
    .locals 0

    invoke-direct {p0, p1}, Lyads/oh2;-><init>(Lyads/v41;)V

    iput-object p1, p0, Lyads/la1;->b:Lyads/v41;

    iput-object p2, p0, Lyads/la1;->c:Lyads/oa1;

    iput-object p3, p0, Lyads/la1;->d:Lyads/hd1;

    iput-object p4, p0, Lyads/la1;->e:Lws6;

    return-void
.end method

.method public static final a(Lyads/la1;Lyads/ka1;Lyads/vq0;Lyads/fs2;Lyads/n32;)Landroid/view/View;
    .locals 0

    .line 254
    iget-object p0, p0, Lyads/la1;->c:Lyads/oa1;

    invoke-interface {p0, p1, p2, p3, p4}, Lyads/oa1;->a(Lyads/ka1;Lyads/vq0;Lyads/fs2;Lyads/n32;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lyads/la1;Lyads/ka1;Lyads/vq0;Lyads/fs2;Lyads/n32;Landroid/view/View;)Lj59;
    .locals 0

    .line 253
    iget-object p0, p0, Lyads/la1;->c:Lyads/oa1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final a(Lyads/tt;Lyads/bb1;Lyads/vp0;Lyads/n32;)V
    .locals 11

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p2, v1}, Landroidx/core/view/ViewGroupKt;->get(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iget-object v3, p2, Lyads/bb1;->l:Lyads/xh1;

    iget-object v4, v3, Lyads/xh1;->c:Lyads/br0;

    check-cast v4, Lyads/vp0;

    iget-object v7, p1, Lyads/tt;->a:Lyads/vq0;

    iget-object v8, p1, Lyads/tt;->b:Lyads/fs2;

    if-ne v4, p3, :cond_1

    iget-object p0, p0, Lyads/la1;->e:Lws6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/w41;

    invoke-static {p0, p1, p2}, Lyads/tq;->a(Lyads/w41;Lyads/tt;Landroid/view/View;)V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    iget-object v3, v3, Lyads/xh1;->d:Lyads/tt;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lyads/tt;->b:Lyads/fs2;

    if-eqz v3, :cond_2

    iget-object v5, p0, Lyads/la1;->d:Lyads/hd1;

    invoke-virtual {v4}, Lyads/br0;->a()Lyads/p41;

    move-result-object v6

    invoke-virtual {v5, v7, v3, v0, v6}, Lyads/hd1;->a(Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/p41;)V

    :cond_2
    iget-object v3, p0, Lyads/la1;->b:Lyads/v41;

    invoke-virtual {v3, p1, p2, p3, v4}, Lyads/v41;->a(Lyads/tt;Landroid/view/View;Lyads/br0;Lyads/br0;)V

    iget-object v3, p0, Lyads/la1;->b:Lyads/v41;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v3, -0x1

    invoke-virtual {p2, v3}, Landroid/view/View;->setId(I)V

    iget-object v6, p3, Lyads/vp0;->a:Lyads/ka1;

    iget-object p3, p0, Lyads/la1;->c:Lyads/oa1;

    iget-object v5, v6, Lyads/ka1;->j:Ljava/lang/String;

    invoke-interface {p3, v5}, Lyads/oa1;->a(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_d

    if-eqz v4, :cond_3

    iget-object p3, v4, Lyads/vp0;->a:Lyads/ka1;

    goto :goto_1

    :cond_3
    move-object p3, v2

    :goto_1
    if-eqz v0, :cond_7

    iget-object v4, p2, Lyads/bb1;->l:Lyads/xh1;

    iget-object v4, v4, Lyads/xh1;->c:Lyads/br0;

    check-cast v4, Lyads/vp0;

    if-eqz v4, :cond_4

    iget-object v2, v4, Lyads/vp0;->a:Lyads/ka1;

    iget-object v2, v2, Lyads/ka1;->j:Ljava/lang/String;

    :cond_4
    iget-object v4, v6, Lyads/ka1;->j:Ljava/lang/String;

    invoke-static {v2, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz p3, :cond_7

    iget-object p3, p3, Lyads/ka1;->q:Ljava/util/List;

    sget-object v2, Lkx2;->b:Lkx2;

    if-nez p3, :cond_5

    move-object p3, v2

    :cond_5
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    iget-object v4, v6, Lyads/ka1;->q:Ljava/util/List;

    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    move-object v2, v4

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne p3, v2, :cond_7

    move-object v10, v0

    goto :goto_3

    :cond_7
    invoke-static {p0, v6, v7, v8, p4}, Lyads/la1;->a(Lyads/la1;Lyads/ka1;Lyads/vq0;Lyads/fs2;Lyads/n32;)Landroid/view/View;

    move-result-object p3

    sget v2, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_div_custom_tag:I

    invoke-virtual {p3, v2, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object v10, p3

    :goto_3
    iget-object p1, p1, Lyads/tt;->a:Lyads/vq0;

    invoke-static {v0, v10}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-eqz p3, :cond_8

    invoke-virtual {p1}, Lyads/vq0;->u()Lyads/w55;

    move-result-object p3

    invoke-static {p2, v1}, Landroidx/core/view/ViewGroupKt;->get(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    invoke-static {p3, v0}, Lyads/di2;->a(Lyads/ci2;Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_8
    invoke-virtual {p2, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_9
    move-object v5, p0

    move-object v9, p4

    invoke-static/range {v5 .. v10}, Lyads/la1;->a(Lyads/la1;Lyads/ka1;Lyads/vq0;Lyads/fs2;Lyads/n32;Landroid/view/View;)Lj59;

    iget-object p0, v5, Lyads/la1;->b:Lyads/v41;

    iget-object p2, v6, Lyads/ka1;->p:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_a

    goto :goto_4

    :cond_a
    iget-object p0, p1, Lyads/vq0;->o:Lyads/wq0;

    invoke-virtual {p0}, Lyads/wq0;->c()Lyads/zh2;

    move-result-object p0

    invoke-virtual {p0, p2}, Lyads/zh2;->a(Ljava/lang/String;)I

    move-result v3

    :goto_4
    invoke-virtual {v10, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v10, v3}, Landroid/view/View;->setId(I)V

    iget-object p0, v5, Lyads/la1;->d:Lyads/hd1;

    invoke-virtual {p0, v6}, Lyads/hd1;->a(Lyads/p41;)Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_6

    :cond_b
    iget-object p0, p0, Lyads/hd1;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/id1;

    invoke-interface {p2, v6}, Lyads/id1;->a(Lyads/p41;)Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-interface {p2, p1, v10, v6}, Lyads/id1;->a(Lyads/vq0;Landroid/view/View;Lyads/p41;)V

    goto :goto_5

    :cond_d
    :goto_6
    return-void
.end method
