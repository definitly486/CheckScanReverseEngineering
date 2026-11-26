.class public final Lyads/e95;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/g95;

.field public final b:Lyads/yg4;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lyads/g95;

    invoke-direct {v0}, Lyads/g95;-><init>()V

    new-instance v1, Lyads/yg4;

    invoke-direct {v1}, Lyads/yg4;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/e95;->a:Lyads/g95;

    iput-object v1, p0, Lyads/e95;->b:Lyads/yg4;

    return-void
.end method


# virtual methods
.method public final a(Lyads/e4;Lyads/d9;)Lyads/h75;
    .locals 5

    new-instance v0, Lyads/h75;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lyads/h75;-><init>(Ljava/util/Map;I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iget-boolean v3, p2, Lyads/d9;->y:Z

    if-ne v3, v1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_1

    iget-object v3, p2, Lyads/d9;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    const-string v4, "ad_type_format"

    invoke-virtual {v0, v3, v4}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    iget-object v3, p2, Lyads/d9;->d:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    const-string v4, "product_type"

    invoke-virtual {v0, v3, v4}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    if-eqz p2, :cond_3

    iget-object v3, p2, Lyads/d9;->e:Ljava/lang/String;

    if-nez v3, :cond_4

    :cond_3
    iget-object v3, p1, Lyads/e4;->c:Lyads/ma;

    iget-object v3, v3, Lyads/ma;->a:Ljava/lang/String;

    :cond_4
    const-string v4, "ad_unit_id"

    invoke-virtual {v0, v3, v4}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    iget-object v3, p2, Lyads/d9;->l:Ljava/lang/String;

    goto :goto_3

    :cond_5
    move-object v3, v2

    :goto_3
    const-string v4, "ad_source"

    invoke-virtual {v0, v3, v4}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_6

    iget-object v3, p2, Lyads/d9;->a:Lyads/n70;

    if-eqz v3, :cond_6

    iget-object p1, v3, Lyads/n70;->b:Ljava/lang/String;

    goto :goto_4

    :cond_6
    iget-object p1, p1, Lyads/e4;->a:Lyads/n70;

    iget-object p1, p1, Lyads/n70;->b:Ljava/lang/String;

    :goto_4
    const-string v3, "ad_type"

    invoke-virtual {v0, p1, v3}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_7

    iget-object p1, p2, Lyads/d9;->k:Ljava/lang/String;

    goto :goto_5

    :cond_7
    move-object p1, v2

    :goto_5
    const-string v3, "design"

    invoke-virtual {v0, p1, v3}, Lyads/h75;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_8

    iget-object p1, p2, Lyads/d9;->h:Ljava/util/List;

    goto :goto_6

    :cond_8
    move-object p1, v2

    :goto_6
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v1

    if-ne v3, v1, :cond_9

    iget-object v1, v0, Lyads/h75;->a:Ljava/util/Map;

    const-string v3, "active_experiments"

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    if-eqz p2, :cond_a

    iget-object p1, p2, Lyads/d9;->o:Ljava/lang/String;

    goto :goto_7

    :cond_a
    move-object p1, v2

    :goto_7
    const-string v1, "server_log_id"

    invoke-virtual {v0, p1, v1}, Lyads/h75;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lyads/e95;->a:Lyads/g95;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_b

    iget-object p0, p2, Lyads/d9;->q:Lyads/o54;

    goto :goto_8

    :cond_b
    move-object p0, v2

    :goto_8
    if-eqz p0, :cond_c

    const-string p0, "mediation"

    goto :goto_a

    :cond_c
    if-eqz p2, :cond_d

    iget-object p0, p2, Lyads/d9;->t:Ljava/lang/Object;

    goto :goto_9

    :cond_d
    move-object p0, v2

    :goto_9
    if-eqz p0, :cond_e

    const-string p0, "ad"

    goto :goto_a

    :cond_e
    const-string p0, "empty"

    :goto_a
    const-string p1, "response_type"

    invoke-virtual {v0, p0, p1}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_f

    iget-object p0, p2, Lyads/d9;->u:Ljava/util/Map;

    if-eqz p0, :cond_f

    iget-object p1, v0, Lyads/h75;->a:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_f
    if-eqz p2, :cond_10

    iget-object v2, p2, Lyads/d9;->i:Lyads/c;

    :cond_10
    iput-object v2, v0, Lyads/h75;->b:Lyads/c;

    return-object v0
.end method

.method public final b(Lyads/e4;Lyads/d9;)Lyads/h75;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lyads/e95;->a(Lyads/e4;Lyads/d9;)Lyads/h75;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p2, Lyads/d9;->t:Ljava/lang/Object;

    check-cast p2, Lyads/vg4;

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_1

    iget-object p0, p0, Lyads/e95;->b:Lyads/yg4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lyads/yg4;->b(Lyads/vg4;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_1

    :cond_1
    sget-object p0, Lkx2;->b:Lkx2;

    :goto_1
    invoke-static {p0}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    const-string v1, "ad_id"

    invoke-virtual {p1, p2, v1}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    move-object v0, p0

    :cond_2
    const-string p0, "ad_ids"

    invoke-virtual {p1, v0, p0}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
