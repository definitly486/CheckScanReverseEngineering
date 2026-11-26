.class public final Lyads/bc0;
.super Lyads/rf6;
.source "SourceFile"


# instance fields
.field public final c:Lyads/ac0;

.field public final d:Lyads/yb0;

.field public final e:Lyads/sz;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Lyads/ac0;Lyads/yb0;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lyads/sz;

    invoke-direct {v0}, Lyads/sz;-><init>()V

    invoke-direct {p0, p1}, Lyads/rf6;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lyads/bc0;->c:Lyads/ac0;

    iput-object p3, p0, Lyads/bc0;->d:Lyads/yb0;

    iput-object v0, p0, Lyads/bc0;->e:Lyads/sz;

    iput-object p4, p0, Lyads/bc0;->f:Ljava/lang/String;

    return-void
.end method

.method public static final a(Lyads/bc0;Lyads/yb0;Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lyads/bc0;->e:Lyads/sz;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lyads/sz;->a(Landroid/view/View;Ljava/lang/Long;)Ljava/util/LinkedHashMap;

    move-result-object p2

    iget-object v0, p0, Lyads/bc0;->c:Lyads/ac0;

    iget-object v2, p1, Lyads/yb0;->a:Ljava/lang/String;

    iget-object v3, v0, Lyads/ac0;->b:Lyads/ot3;

    if-eqz v3, :cond_0

    iget-object v4, v0, Lyads/ac0;->c:Lyads/h16;

    iget-object v5, v3, Lyads/ot3;->c:Ljava/util/List;

    sget-object v6, Lyads/vz;->a:Lyads/vz;

    invoke-virtual {v4, v5, v6, p2}, Lyads/h16;->a(Ljava/util/List;Lyads/zz;Ljava/util/Map;)V

    iget-object p2, v3, Lyads/ot3;->d:Ljava/lang/String;

    if-eqz p2, :cond_0

    iget-object v3, v0, Lyads/ac0;->c:Lyads/h16;

    invoke-static {p2}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    sget-object v4, Lmx2;->b:Lmx2;

    invoke-virtual {v3, p2, v6, v4}, Lyads/h16;->a(Ljava/util/List;Lyads/zz;Ljava/util/Map;)V

    :cond_0
    iget-object p2, v0, Lyads/ac0;->d:Lyads/q84;

    new-instance v3, Luz4;

    invoke-direct {v3}, Luz4;-><init>()V

    sget-object v4, Lyads/d75;->c:Lyads/d75;

    const-string v4, "custom"

    const-string v5, "click_type"

    invoke-virtual {v3, v5, v4}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "asset_name"

    invoke-virtual {v3, v4, v2}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lyads/ac0;->a:Lyads/e4;

    iget-object v2, v2, Lyads/e4;->c:Lyads/ma;

    iget-object v2, v2, Lyads/ma;->a:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v4, "ad_unit_id"

    invoke-virtual {v3, v4, v2}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, v0, Lyads/ac0;->a:Lyads/e4;

    iget-object v0, v0, Lyads/e4;->a:Lyads/n70;

    iget-object v0, v0, Lyads/n70;->b:Ljava/lang/String;

    const-string v2, "ad_type"

    invoke-virtual {v3, v2, v0}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lyads/c75;->a:Ljava/lang/String;

    const-string v2, "adapter"

    invoke-virtual {v3, v2, v0}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Luz4;->b()Luz4;

    move-result-object v0

    new-instance v2, Lyads/g75;

    sget-object v3, Lyads/e75;->c:Lyads/e75;

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const-string v0, "click"

    invoke-direct {v2, v0, v3, v1}, Lyads/g75;-><init>(Ljava/lang/String;Ljava/util/Map;Lyads/c;)V

    invoke-virtual {p2, v2}, Lyads/q84;->a(Lyads/g75;)V

    iget-object p2, p1, Lyads/yb0;->b:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Lyads/yb0;->a()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/zb0;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lyads/bc0;->f:Ljava/lang/String;

    invoke-interface {p1, p0}, Lyads/zb0;->onCustomAssetClicked(Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    const/16 p0, 0x8

    .line 132
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    .line 133
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p0, 0x0

    .line 135
    invoke-virtual {p1, p0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 136
    iget-object p1, p0, Lyads/bc0;->d:Lyads/yb0;

    .line 137
    iget-object p2, p1, Lyads/yb0;->b:Ljava/util/WeakHashMap;

    .line 138
    invoke-virtual {p1}, Lyads/yb0;->a()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/zb0;

    if-eqz p1, :cond_0

    .line 139
    iget-object p0, p0, Lyads/bc0;->d:Lyads/yb0;

    invoke-virtual {p0}, Lyads/yb0;->a()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1

    iget-object p2, p0, Lyads/bc0;->d:Lyads/yb0;

    new-instance v0, Lio9;

    invoke-direct {v0, p0, p2}, Lio9;-><init>(Lyads/bc0;Lyads/yb0;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
