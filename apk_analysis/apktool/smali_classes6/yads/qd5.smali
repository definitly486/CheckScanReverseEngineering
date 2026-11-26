.class public final Lyads/qd5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/e4;

.field public final b:Lyads/bf5;

.field public final c:Lyads/u8;


# direct methods
.method public constructor <init>(Lyads/e4;Lyads/bf5;)V
    .locals 2

    new-instance v0, Lyads/u8;

    invoke-direct {v0}, Lyads/u8;-><init>()V

    new-instance v1, Lyads/yg4;

    invoke-direct {v1}, Lyads/yg4;-><init>()V

    new-instance v1, Lyads/rd5;

    invoke-direct {v1}, Lyads/rd5;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/qd5;->a:Lyads/e4;

    iput-object p2, p0, Lyads/qd5;->b:Lyads/bf5;

    iput-object v0, p0, Lyads/qd5;->c:Lyads/u8;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lyads/d9;Lyads/e75;Lyads/h75;)V
    .locals 5

    iget-object v0, p0, Lyads/qd5;->c:Lyads/u8;

    iget-object v1, p0, Lyads/qd5;->a:Lyads/e4;

    iget-object v1, v1, Lyads/e4;->e:Lyads/n8;

    invoke-virtual {v0, v1}, Lyads/u8;->a(Lyads/n8;)Lyads/h75;

    move-result-object v0

    const-string v1, "ad_unit_id"

    iget-object v2, p2, Lyads/d9;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lyads/c75;->a:Ljava/lang/String;

    const-string v2, "adapter"

    invoke-virtual {v0, v1, v2}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p2, Lyads/d9;->a:Lyads/n70;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v2, Lyads/n70;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    const-string v4, "ad_type"

    invoke-virtual {v0, v2, v4}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p2, Lyads/d9;->t:Ljava/lang/Object;

    check-cast v2, Lyads/vg4;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lyads/vg4;->a:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/sd4;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lyads/sd4;->a:Lyads/f95;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lyads/f95;->c:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    if-nez v2, :cond_2

    const-string v2, ""

    :cond_2
    const-string v4, "native_ad_type"

    invoke-virtual {v0, v2, v4}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    const-string v2, "ad_source"

    iget-object p2, p2, Lyads/d9;->l:Ljava/lang/String;

    invoke-virtual {v0, p2, v2}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p4}, Lyads/i75;->a(Lyads/h75;Lyads/h75;)Lyads/h75;

    move-result-object p2

    new-instance p4, Lyads/g75;

    iget-object v0, p2, Lyads/h75;->a:Ljava/util/Map;

    iget-object p2, p2, Lyads/h75;->b:Lyads/c;

    iget-object v2, p3, Lyads/e75;->b:Ljava/lang/String;

    invoke-static {v0}, Ln05;->n(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-direct {p4, v2, v0, p2}, Lyads/g75;-><init>(Ljava/lang/String;Ljava/util/Map;Lyads/c;)V

    iget-object p2, p0, Lyads/qd5;->b:Lyads/bf5;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lyads/qd5;->b:Lyads/bf5;

    check-cast p0, Lyads/do6;

    new-instance p2, Lyads/lm6;

    iget-object p0, p0, Lyads/do6;->a:Landroid/content/Context;

    invoke-direct {p2, p0}, Lyads/lm6;-><init>(Landroid/content/Context;)V

    invoke-static {p1, p2}, Lyads/re;->a(Landroid/content/Context;Lyads/lm6;)Lyads/q84;

    move-result-object p0

    invoke-virtual {p0, p4}, Lyads/q84;->a(Lyads/g75;)V

    new-instance p0, Lyads/le;

    invoke-direct {p0, p1}, Lyads/le;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p3, v0, v1, v3}, Lyads/le;->a(Lyads/e75;Ljava/util/Map;Ljava/lang/String;Lyads/j5;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lyads/d9;Lyads/vh4;)V
    .locals 3

    .line 136
    new-instance v0, Lyads/h75;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lyads/h75;-><init>(Ljava/util/Map;I)V

    if-eqz p3, :cond_2

    .line 137
    iget-object p3, p3, Lyads/vh4;->a:Lyads/e4;

    .line 138
    iget-object p3, p3, Lyads/e4;->b:Lyads/c40;

    .line 139
    iget-object p3, p3, Lyads/c40;->c:Ljava/util/List;

    .line 140
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v2, p3

    :cond_0
    if-eqz v2, :cond_1

    .line 141
    invoke-static {v2}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p3

    const-string v1, "image_sizes"

    .line 142
    invoke-static {v1, p3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    .line 143
    :cond_1
    sget-object p3, Lmx2;->b:Lmx2;

    .line 144
    :goto_0
    iget-object v1, v0, Lyads/h75;->a:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 145
    :cond_2
    sget-object p3, Lyads/e75;->f:Lyads/e75;

    invoke-virtual {p0, p1, p2, p3, v0}, Lyads/qd5;->a(Landroid/content/Context;Lyads/d9;Lyads/e75;Lyads/h75;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lyads/d9;Lyads/wh4;)V
    .locals 2

    .line 131
    new-instance p3, Lyads/h75;

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p3, v0, v1}, Lyads/h75;-><init>(Ljava/util/Map;I)V

    .line 132
    sget-object v0, Lyads/f75;->c:Lyads/f75;

    .line 133
    const-string v0, "success"

    .line 134
    const-string v1, "status"

    invoke-virtual {p3, v0, v1}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    sget-object v0, Lyads/e75;->g:Lyads/e75;

    invoke-virtual {p0, p1, p2, v0, p3}, Lyads/qd5;->a(Landroid/content/Context;Lyads/d9;Lyads/e75;Lyads/h75;)V

    return-void
.end method
