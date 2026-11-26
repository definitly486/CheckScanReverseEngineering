.class public final Lyads/dg1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/qv5;


# instance fields
.field public final a:Lyads/tq3;


# direct methods
.method public constructor <init>(Lyads/tq3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/dg1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 7

    check-cast p2, Lyads/fg1;

    new-instance v0, Lyads/vf1;

    iget-object v1, p2, Lyads/fg1;->a:Lyads/zw2;

    iget-object p0, p0, Lyads/dg1;->a:Lyads/tq3;

    iget-object v2, p0, Lyads/tq3;->G3:Lcl4;

    iget-object p0, p0, Lyads/tq3;->E3:Lcl4;

    iget-boolean v3, v1, Lyads/zw2;->b:Z

    const-string v4, "arguments"

    if-eqz v3, :cond_0

    invoke-virtual {p3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, p3, v4, p0}, Lyads/wq3;->b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object p0

    goto :goto_2

    :cond_0
    iget v3, v1, Lyads/zw2;->a:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    check-cast v1, Lyads/yw2;

    iget-object p0, v1, Lyads/yw2;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/qv5;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/xq3;

    :try_start_0
    invoke-interface {v2, p1, v5, p3}, Lyads/qv5;->a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catch Lyads/ft4; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-interface {p1}, Lyads/ys4;->a()Lyads/et4;

    move-result-object v6

    invoke-interface {v6, v5}, Lyads/et4;->b(Ljava/lang/Exception;)V

    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move-object p0, v3

    goto :goto_2

    :cond_3
    const/4 v2, 0x3

    if-ne v3, v2, :cond_4

    check-cast v1, Lyads/xw2;

    iget-object v1, v1, Lyads/xw2;->c:Ljava/lang/String;

    invoke-static {p1, p3, v1, p0}, Lyads/wq3;->b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object p0

    :goto_2
    iget-object p1, p2, Lyads/fg1;->b:Lyads/zw2;

    const-string v1, "body"

    invoke-static {p1, p3, v1}, Lyads/qq3;->a(Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v1, p2, Lyads/fg1;->c:Lyads/zw2;

    sget-object v2, Lyads/eg1;->a:Lyads/l66;

    sget-object v3, Lyads/uq3;->b:Lnl3;

    const-string v4, "name"

    invoke-static {v1, p3, v4, v3, v2}, Lyads/qq3;->a(Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lnl3;Lyads/l66;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object p2, p2, Lyads/fg1;->d:Lyads/zw2;

    sget-object v2, Lyads/fd1;->d:Lnl3;

    sget-object v3, Lyads/uq3;->a:Lyads/l66;

    const-string v4, "return_type"

    invoke-static {p2, p3, v4, v2, v3}, Lyads/qq3;->a(Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lnl3;Lyads/l66;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/fd1;

    invoke-direct {v0, p0, p1, v1, p2}, Lyads/vf1;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lyads/fd1;)V

    return-object v0

    :cond_4
    invoke-static {v4, p3}, Lyads/gt4;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lyads/ft4;

    move-result-object p0

    throw p0
.end method
