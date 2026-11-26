.class public final Lyads/xk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Collection;

.field public final b:Lyads/jh4;


# direct methods
.method public constructor <init>(Ljava/util/Set;I)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lkx2;->b:Lkx2;

    :cond_0
    new-instance p2, Lyads/jh4;

    invoke-direct {p2}, Lyads/jh4;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/xk;->a:Ljava/util/Collection;

    iput-object p2, p0, Lyads/xk;->b:Lyads/jh4;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lyads/vd4;)Lyads/ih4;
    .locals 4

    iget-object v0, p0, Lyads/xk;->b:Lyads/jh4;

    sget-object v1, Lyads/gi4;->c:Lyads/gi4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lyads/hh4;

    invoke-direct {v0, p1}, Lyads/hh4;-><init>(Landroid/view/View;)V

    invoke-interface {p2, p1}, Lyads/vd4;->h(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lyads/hh4;->d:Ljava/util/LinkedHashMap;

    const-string v3, "age"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p1}, Lyads/vd4;->a(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lyads/hh4;->d:Ljava/util/LinkedHashMap;

    const-string v3, "body"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p1}, Lyads/vd4;->e(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lyads/hh4;->d:Ljava/util/LinkedHashMap;

    const-string v3, "call_to_action"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p1}, Lyads/vd4;->n(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lyads/hh4;->d:Ljava/util/LinkedHashMap;

    const-string v3, "domain"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p1}, Lyads/vd4;->g(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, v0, Lyads/hh4;->d:Ljava/util/LinkedHashMap;

    const-string v3, "favicon"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p1}, Lyads/vd4;->l(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, v0, Lyads/hh4;->d:Ljava/util/LinkedHashMap;

    const-string v3, "feedback"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p1}, Lyads/vd4;->o(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, v0, Lyads/hh4;->d:Ljava/util/LinkedHashMap;

    const-string v3, "icon"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p1}, Lyads/vd4;->c(Landroid/view/View;)Lcom/monetization/ads/nativeads/CustomizableMediaView;

    move-result-object v1

    iget-object v2, v0, Lyads/hh4;->d:Ljava/util/LinkedHashMap;

    const-string v3, "media"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p1}, Lyads/vd4;->b(Landroid/view/View;)Landroid/widget/CheckBox;

    move-result-object v1

    iput-object v1, v0, Lyads/hh4;->b:Landroid/widget/CheckBox;

    invoke-interface {p2, p1}, Lyads/vd4;->k(Landroid/view/View;)Landroid/widget/ProgressBar;

    move-result-object v1

    iput-object v1, v0, Lyads/hh4;->c:Landroid/widget/ProgressBar;

    invoke-interface {p2, p1}, Lyads/vd4;->d(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lyads/hh4;->d:Ljava/util/LinkedHashMap;

    const-string v3, "price"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p1}, Lyads/vd4;->i(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lyads/b45;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lyads/hh4;->d:Ljava/util/LinkedHashMap;

    const-string v3, "rating"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p1}, Lyads/vd4;->p(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lyads/hh4;->d:Ljava/util/LinkedHashMap;

    const-string v3, "review_count"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p1}, Lyads/vd4;->m(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lyads/hh4;->d:Ljava/util/LinkedHashMap;

    const-string v3, "sponsored"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p1}, Lyads/vd4;->j(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lyads/hh4;->d:Ljava/util/LinkedHashMap;

    const-string v3, "title"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p1}, Lyads/vd4;->f(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lyads/hh4;->d:Ljava/util/LinkedHashMap;

    const-string v3, "warning"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lyads/xk;->a:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2, p1, v1}, Lyads/vd4;->a(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v0, Lyads/hh4;->d:Ljava/util/LinkedHashMap;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    new-instance p0, Lyads/ih4;

    invoke-direct {p0, v0}, Lyads/ih4;-><init>(Lyads/hh4;)V

    return-object p0
.end method
