.class public final Lyads/ym5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/id1;


# instance fields
.field public final a:Lyads/q84;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(Lyads/q84;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ym5;->a:Lyads/q84;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lyads/ym5;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final a(Lyads/fo1;Lyads/ni4;)V
    .locals 3

    .line 149
    new-instance v0, Lyads/cn5;

    iget-object v1, p0, Lyads/ym5;->a:Lyads/q84;

    .line 150
    iget-object v2, p1, Lyads/fo1;->h:Lyads/nn0;

    .line 151
    invoke-direct {v0, p2, v1, v2}, Lyads/cn5;-><init>(Lyads/ni4;Lyads/q84;Lyads/nn0;)V

    .line 152
    iget-object p0, p0, Lyads/ym5;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 153
    iget-object p1, p1, Lyads/fo1;->e:Lyads/db1;

    .line 154
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lyads/vq0;Landroid/view/View;)V
    .locals 0

    .line 162
    iget-object p1, p1, Lyads/vq0;->Q:Lyads/db1;

    .line 163
    iget-object p0, p0, Lyads/ym5;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/cn5;

    return-void
.end method

.method public final a(Lyads/vq0;Landroid/view/View;Lyads/p41;)V
    .locals 4

    iget-object v0, p1, Lyads/vq0;->Q:Lyads/db1;

    iget-object p0, p0, Lyads/ym5;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/cn5;

    if-eqz p0, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lyads/cn5;->d:Lyads/md1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "view"

    invoke-static {p3, v0}, Lyads/md1;->a(Lyads/p41;Ljava/lang/String;)Lyads/gd1;

    move-result-object p3

    if-eqz p3, :cond_2

    iget-object v0, p0, Lyads/cn5;->e:Lyads/ss2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p3, Lyads/gd1;->b:Lorg/json/JSONObject;

    if-eqz p3, :cond_0

    :try_start_0
    const-string v0, "position"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_2

    iget-object v0, p0, Lyads/cn5;->a:Lyads/ni4;

    invoke-virtual {v0}, Lyads/ni4;->k()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/pg4;

    new-instance v1, Lyads/dp4;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Lyads/dp4;-><init>(I)V

    iget-object v2, p0, Lyads/cn5;->f:Lyads/xk;

    invoke-virtual {v2, p2, v1}, Lyads/xk;->a(Landroid/view/View;Lyads/vd4;)Lyads/ih4;

    move-result-object v1

    :try_start_1
    invoke-static {p1}, Lyads/xq0;->a(Lyads/vq0;)Lyads/ak5;

    move-result-object p1

    iget-object v2, p0, Lyads/cn5;->c:Lyads/nn0;

    iget-object v3, p1, Lyads/ak5;->a:Lyads/qz;

    iget-object v3, v3, Lyads/qz;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/pz;

    if-nez v3, :cond_1

    new-instance v3, Lyads/pz;

    invoke-direct {v3, v2}, Lyads/pz;-><init>(Lyads/nn0;)V

    iget-object p1, p1, Lyads/ak5;->a:Lyads/qz;

    iget-object p1, p1, Lyads/qz;->a:Ljava/util/LinkedHashMap;

    invoke-interface {p1, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-interface {v0, v1, v3}, Lyads/pg4;->a(Lyads/ih4;Lyads/pz;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Lyads/yf4; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :goto_2
    iget-object p0, p0, Lyads/cn5;->b:Lyads/q84;

    const-string p2, "Failed to bind DivKit Slider Inner Ad"

    invoke-virtual {p0, p2, p1}, Lyads/q84;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    return-void
.end method

.method public final a(Lyads/p41;)Z
    .locals 3

    .line 155
    const-string p0, "view"

    invoke-static {p1, p0}, Lyads/md1;->a(Lyads/p41;Ljava/lang/String;)Lyads/gd1;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    .line 156
    iget-object v0, p0, Lyads/gd1;->b:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 157
    :try_start_0
    const-string v2, "position"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object v0, v1

    .line 158
    :goto_0
    iget-object p0, p0, Lyads/gd1;->b:Lorg/json/JSONObject;

    if-eqz p0, :cond_1

    .line 159
    :try_start_1
    const-string v2, "view_name"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    if-eqz v0, :cond_2

    .line 160
    const-string p0, "native_ad_view"

    .line 161
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    :cond_2
    return p1
.end method
