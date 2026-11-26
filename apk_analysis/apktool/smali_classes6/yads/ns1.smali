.class public final Lyads/ns1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ln0;


# instance fields
.field public final a:Lyads/tq3;


# direct methods
.method public constructor <init>(Lyads/tq3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ns1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 10

    invoke-static {p2}, Lyads/wq3;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lyads/ys4;->b()Lyads/pv5;

    move-result-object v1

    invoke-interface {v1, v0}, Lyads/pv5;->get(Ljava/lang/String;)Lyads/xq3;

    move-result-object v1

    instance-of v2, v1, Lyads/ss1;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lyads/ss1;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const-string v2, "wrap_content"

    const-string v4, "fixed"

    const-string v5, "percentage"

    if-eqz v1, :cond_4

    instance-of v0, v1, Lyads/rs1;

    if-eqz v0, :cond_1

    move-object v0, v5

    goto :goto_1

    :cond_1
    instance-of v0, v1, Lyads/ps1;

    if-eqz v0, :cond_2

    move-object v0, v4

    goto :goto_1

    :cond_2
    instance-of v0, v1, Lyads/qs1;

    if-eqz v0, :cond_3

    move-object v0, v2

    goto :goto_1

    :cond_3
    invoke-static {}, Lme0;->e()V

    return-object v3

    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x36f20d66

    if-eq v6, v7, :cond_a

    const v5, 0x5cee774

    if-eq v6, v5, :cond_7

    const p1, 0x1476c184

    if-ne v6, p1, :cond_6

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Lyads/qs1;

    iget-object p0, p0, Lyads/ns1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->f5:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/nq1;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lyads/ss1;->a()Ljava/lang/Object;

    move-result-object v3

    :cond_5
    check-cast v3, Lyads/pq1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/pq1;

    invoke-direct {p0}, Lyads/pq1;-><init>()V

    invoke-direct {p1, p0}, Lyads/qs1;-><init>(Lyads/pq1;)V

    return-object p1

    :cond_6
    move-object v2, p2

    goto/16 :goto_4

    :cond_7
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v0, Lyads/ps1;

    iget-object p0, p0, Lyads/ns1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->W4:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/xp1;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lyads/ss1;->a()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_8
    move-object v1, v3

    :goto_2
    check-cast v1, Lyads/zp1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lyads/ys4;->d()Z

    move-result v7

    invoke-static {p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v4

    new-instance p1, Lyads/zp1;

    if-eqz v1, :cond_9

    iget-object v3, v1, Lyads/zp1;->a:Lyads/zw2;

    :cond_9
    move-object v8, v3

    iget-object p0, p0, Lyads/xp1;->a:Lyads/tq3;

    iget-object v9, p0, Lyads/tq3;->w3:Lcl4;

    const-string v6, "neighbour_page_width"

    move-object v5, p2

    invoke-static/range {v4 .. v9}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object p0

    invoke-direct {p1, p0}, Lyads/zp1;-><init>(Lyads/zw2;)V

    invoke-direct {v0, p1}, Lyads/ps1;-><init>(Lyads/zp1;)V

    return-object v0

    :cond_a
    move-object v2, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    new-instance p2, Lyads/rs1;

    iget-object p0, p0, Lyads/ns1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->i5:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/sq1;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lyads/ss1;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_b
    move-object v0, v3

    :goto_3
    check-cast v0, Lyads/uq1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lyads/ys4;->d()Z

    move-result v4

    invoke-static {p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v1

    new-instance p1, Lyads/uq1;

    if-eqz v0, :cond_c

    iget-object v3, v0, Lyads/uq1;->a:Lyads/zw2;

    :cond_c
    move-object v5, v3

    iget-object p0, p0, Lyads/sq1;->a:Lyads/tq3;

    iget-object v6, p0, Lyads/tq3;->D5:Lcl4;

    const-string v3, "page_width"

    invoke-static/range {v1 .. v6}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object p0

    invoke-direct {p1, p0}, Lyads/uq1;-><init>(Lyads/zw2;)V

    invoke-direct {p2, p1}, Lyads/rs1;-><init>(Lyads/uq1;)V

    return-object p2

    :cond_d
    :goto_4
    const-string p0, "type"

    invoke-static {v2, p0, v0}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0
.end method
