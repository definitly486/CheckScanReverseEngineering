.class public final Lyads/xh4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/li4;


# instance fields
.field public final a:Lyads/e95;

.field public final b:Lyads/u8;

.field public final c:Lyads/o50;


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lyads/e95;

    invoke-direct {v0}, Lyads/e95;-><init>()V

    new-instance v1, Lyads/u8;

    invoke-direct {v1}, Lyads/u8;-><init>()V

    new-instance v2, Lyads/o50;

    invoke-direct {v2}, Lyads/o50;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/xh4;->a:Lyads/e95;

    iput-object v1, p0, Lyads/xh4;->b:Lyads/u8;

    iput-object v2, p0, Lyads/xh4;->c:Lyads/o50;

    return-void
.end method


# virtual methods
.method public final a(Lyads/e4;Lyads/d9;Lyads/vg4;)Lyads/h75;
    .locals 6

    iget-object v0, p0, Lyads/xh4;->a:Lyads/e95;

    invoke-virtual {v0, p1, p2}, Lyads/e95;->a(Lyads/e4;Lyads/d9;)Lyads/h75;

    move-result-object p2

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v1}, Lv39;->e(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_1
    if-eqz p3, :cond_8

    iget-object v2, v0, Lyads/e95;->b:Lyads/yg4;

    invoke-virtual {v2, p3}, Lyads/yg4;->a(Lyads/vg4;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "image_sizes"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v2, v0, Lyads/e95;->b:Lyads/yg4;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p3, Lyads/vg4;->a:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/sd4;

    iget-object v5, v5, Lyads/sd4;->a:Lyads/f95;

    iget-object v5, v5, Lyads/f95;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "native_ad_types"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, v0, Lyads/e95;->b:Lyads/yg4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Lyads/yg4;->b(Lyads/vg4;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-static {p3}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "undefined"

    const-string v4, "ad_id"

    if-nez v0, :cond_5

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    move-object p3, v3

    :goto_3
    const-string v0, "ad_ids"

    if-nez p3, :cond_7

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_4
    iget-object p3, p2, Lyads/h75;->b:Lyads/c;

    if-nez p3, :cond_9

    move-object p3, v3

    :cond_9
    iget-object p2, p2, Lyads/h75;->a:Ljava/util/Map;

    invoke-static {p2, v1}, Ln05;->g(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p2

    invoke-static {p2}, Lv39;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    move-object p2, v3

    :goto_5
    if-nez p2, :cond_b

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_b
    iget-object v0, p0, Lyads/xh4;->b:Lyads/u8;

    iget-object v1, p1, Lyads/e4;->e:Lyads/n8;

    invoke-virtual {v0, v1}, Lyads/u8;->a(Lyads/n8;)Lyads/h75;

    move-result-object v0

    iget-object p0, p0, Lyads/xh4;->c:Lyads/o50;

    invoke-virtual {p0, p1}, Lyads/o50;->a(Lyads/e4;)Lyads/h75;

    move-result-object p0

    if-nez p3, :cond_c

    iget-object p3, v0, Lyads/h75;->b:Lyads/c;

    :cond_c
    iget-object p1, v0, Lyads/h75;->a:Ljava/util/Map;

    invoke-static {p2, p1}, Ln05;->g(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-static {p1}, Lv39;->e(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    move-object v3, p1

    :cond_d
    if-nez v3, :cond_e

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_e
    if-nez p3, :cond_f

    iget-object p3, p0, Lyads/h75;->b:Lyads/c;

    :cond_f
    iget-object p0, p0, Lyads/h75;->a:Ljava/util/Map;

    invoke-static {v3, p0}, Ln05;->g(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p0

    new-instance p1, Lyads/h75;

    invoke-direct {p1, p0, p3}, Lyads/h75;-><init>(Ljava/util/Map;Lyads/c;)V

    return-object p1
.end method
