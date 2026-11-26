.class public final Lyads/cx1;
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

    iput-object p1, p0, Lyads/cx1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 146
    check-cast p2, Lyads/by1;

    invoke-virtual {p0, p1, p2, p3}, Lyads/cx1;->a(Lyads/ys4;Lyads/by1;Lorg/json/JSONObject;)Lyads/gw1;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/by1;Lorg/json/JSONObject;)Lyads/gw1;
    .locals 11

    new-instance v0, Lyads/gw1;

    iget-object v2, p2, Lyads/by1;->a:Lyads/zw2;

    iget-object v1, p0, Lyads/cx1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->W5:Lcl4;

    iget-object v6, v1, Lyads/tq3;->U5:Lcl4;

    const-string v4, "center_x"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/jw1;

    if-nez p1, :cond_0

    sget-object p1, Lyads/dx1;->a:Lyads/iw1;

    :cond_0
    iget-object v2, p2, Lyads/by1;->b:Lyads/zw2;

    iget-object p3, p0, Lyads/cx1;->a:Lyads/tq3;

    iget-object v5, p3, Lyads/tq3;->W5:Lcl4;

    iget-object v6, p3, Lyads/tq3;->U5:Lcl4;

    const-string v4, "center_y"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyads/jw1;

    if-nez p3, :cond_1

    sget-object p3, Lyads/dx1;->b:Lyads/iw1;

    :cond_1
    iget-object v2, p2, Lyads/by1;->c:Lyads/zw2;

    iget-object v4, p0, Lyads/cx1;->a:Lyads/tq3;

    move-object v5, v4

    iget-object v4, v5, Lyads/tq3;->o6:Lcl4;

    iget-object v5, v5, Lyads/tq3;->m6:Lcl4;

    sget-object v6, Lyads/dx1;->e:Lyads/st3;

    invoke-static/range {v1 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Lcl4;Lcl4;Lyads/st3;)Ljava/util/List;

    move-result-object v8

    iget-object v9, p2, Lyads/by1;->d:Lyads/zw2;

    sget-object v4, Lyads/w36;->f:Lyads/p36;

    sget-object v5, Lyads/bt4;->a:Lnl3;

    sget-object v6, Lyads/dx1;->d:Lyads/st3;

    sget-object v7, Lyads/uq3;->a:Lyads/l66;

    iget-boolean v2, v9, Lyads/zw2;->b:Z

    if-eqz v2, :cond_2

    move-object v2, v3

    const-string v3, "colors"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/p36;Lnl3;Lyads/st3;Lyads/l66;)Lyads/ds2;

    move-result-object v3

    :goto_0
    move-object v7, v3

    goto :goto_1

    :cond_2
    move-object v2, v3

    :cond_3
    iget v3, v9, Lyads/zw2;->a:I

    const/4 v10, 0x2

    if-ne v3, v10, :cond_4

    check-cast v9, Lyads/yw2;

    iget-object v3, v9, Lyads/yw2;->c:Ljava/lang/Object;

    check-cast v3, Lyads/ds2;

    goto :goto_0

    :cond_4
    const/4 v10, 0x3

    if-ne v3, v10, :cond_5

    check-cast v9, Lyads/xw2;

    iget-object v3, v9, Lyads/xw2;->c:Ljava/lang/String;

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/p36;Lnl3;Lyads/st3;Lyads/l66;)Lyads/ds2;

    move-result-object v3

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    :goto_1
    iget-object p2, p2, Lyads/by1;->e:Lyads/zw2;

    iget-object p0, p0, Lyads/cx1;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->c6:Lcl4;

    iget-object v6, p0, Lyads/tq3;->a6:Lcl4;

    const-string v4, "radius"

    move-object v3, v2

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/gx1;

    if-nez p0, :cond_6

    sget-object p0, Lyads/dx1;->c:Lyads/fx1;

    :cond_6
    move-object v5, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, v7

    move-object v3, v8

    invoke-direct/range {v0 .. v5}, Lyads/gw1;-><init>(Lyads/jw1;Lyads/jw1;Ljava/util/List;Lyads/ds2;Lyads/gx1;)V

    return-object v0
.end method
