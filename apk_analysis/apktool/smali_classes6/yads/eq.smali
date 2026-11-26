.class public final Lyads/eq;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SourceFile"


# instance fields
.field public a:Landroid/util/SparseArray;

.field public final synthetic b:Lyads/a62;


# direct methods
.method public constructor <init>(Lyads/a62;)V
    .locals 0

    iput-object p1, p0, Lyads/eq;->b:Lyads/a62;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lyads/eq;->b:Lyads/a62;

    iget-object v0, v0, Lyads/oq;->c:Lyads/ld5;

    invoke-static {v0}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lyads/eq;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    :cond_0
    check-cast p3, Landroid/view/ViewGroup;

    iget-object v0, p0, Lyads/eq;->b:Lyads/a62;

    iget-object v0, v0, Lyads/oq;->g:Landroidx/collection/ArrayMap;

    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/iq;

    iget-object v1, v0, Lyads/iq;->d:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lyads/iq;->e:Lyads/oq;

    check-cast v2, Lyads/a62;

    iget-object v3, v2, Lyads/a62;->x:Ljava/util/LinkedHashMap;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v2, Lyads/a62;->q:Lyads/tt;

    iget-object v2, v2, Lyads/tt;->a:Lyads/vq0;

    invoke-static {v1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lzo7;

    move-result-object v3

    invoke-interface {v3}, Lzo7;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v2}, Lyads/vq0;->u()Lyads/w55;

    move-result-object v5

    invoke-static {v5, v4}, Lyads/di2;->a(Lyads/ci2;Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v1, 0x0

    iput-object v1, v0, Lyads/iq;->d:Landroid/view/ViewGroup;

    :goto_1
    iget-object p0, p0, Lyads/eq;->b:Lyads/a62;

    iget-object p0, p0, Lyads/oq;->h:Landroidx/collection/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget p0, Lyads/rv3;->a:I

    sget-object p0, Lyads/vj5;->b:[Lyads/vj5;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final getCount()I
    .locals 0

    iget-object p0, p0, Lyads/eq;->b:Lyads/a62;

    iget-object p0, p0, Lyads/oq;->m:Lyads/lq;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lyads/lq;->a()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p0, -0x2

    return p0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lyads/eq;->b:Lyads/a62;

    iget-object v0, v0, Lyads/oq;->c:Lyads/ld5;

    invoke-static {v0}, Lyads/oh6;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lyads/eq;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    :cond_0
    sget v0, Lyads/rv3;->a:I

    sget-object v0, Lyads/vj5;->b:[Lyads/vj5;

    iget-object v0, p0, Lyads/eq;->b:Lyads/a62;

    iget-object v0, v0, Lyads/oq;->h:Landroidx/collection/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/iq;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lyads/iq;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lyads/eq;->b:Lyads/a62;

    iget-object v1, v0, Lyads/oq;->a:Lyads/qg6;

    iget-object v0, v0, Lyads/oq;->i:Ljava/lang/String;

    invoke-interface {v1, v0}, Lyads/qg6;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lyads/eq;->b:Lyads/a62;

    iget-object v0, v0, Lyads/oq;->m:Lyads/lq;

    invoke-interface {v0}, Lyads/lq;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/kq;

    new-instance v2, Lyads/iq;

    iget-object v3, p0, Lyads/eq;->b:Lyads/a62;

    invoke-direct {v2, v3, v1, v0, p2}, Lyads/iq;-><init>(Lyads/oq;Landroid/view/ViewGroup;Lyads/kq;I)V

    iget-object v0, v3, Lyads/oq;->h:Landroidx/collection/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lyads/eq;->b:Lyads/a62;

    iget-object p1, p1, Lyads/oq;->g:Landroidx/collection/ArrayMap;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lyads/eq;->b:Lyads/a62;

    iget-object p1, p1, Lyads/oq;->c:Lyads/ld5;

    invoke-virtual {p1}, Lyads/pb5;->getCurrentItem()I

    move-result p1

    if-ne p2, p1, :cond_2

    invoke-virtual {v0}, Lyads/iq;->a()V

    :cond_2
    iget-object p0, p0, Lyads/eq;->a:Landroid/util/SparseArray;

    if-eqz p0, :cond_3

    invoke-virtual {v1, p0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_3
    return-object v1
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p2, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    instance-of p2, p1, Landroid/os/Bundle;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lyads/eq;->a:Landroid/util/SparseArray;

    return-void

    :cond_0
    check-cast p1, Landroid/os/Bundle;

    const-class p2, Lyads/eq;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string p2, "div_tabs_child_states"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Lyads/eq;->a:Landroid/util/SparseArray;

    return-void
.end method

.method public final saveState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Landroid/util/SparseArray;

    iget-object v1, p0, Lyads/eq;->b:Lyads/a62;

    iget-object v1, v1, Lyads/oq;->g:Landroidx/collection/ArrayMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iget-object p0, p0, Lyads/eq;->b:Lyads/a62;

    iget-object p0, p0, Lyads/oq;->g:Landroidx/collection/ArrayMap;

    invoke-virtual {p0}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "div_tabs_child_states"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object p0
.end method
