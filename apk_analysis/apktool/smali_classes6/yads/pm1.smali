.class public final Lyads/pm1;
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

    iput-object p1, p0, Lyads/pm1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 165
    check-cast p2, Lyads/ym1;

    invoke-virtual {p0, p1, p2, p3}, Lyads/pm1;->a(Lyads/ys4;Lyads/ym1;Lorg/json/JSONObject;)Lyads/am1;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/ym1;Lorg/json/JSONObject;)Lyads/am1;
    .locals 12

    instance-of v2, p2, Lyads/xm1;

    const-string v7, "variable"

    const-string v8, "label_id"

    if-eqz v2, :cond_1

    new-instance v9, Lyads/zl1;

    iget-object v0, p0, Lyads/pm1;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->z4:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/tm1;

    move-object v1, p2

    check-cast v1, Lyads/xm1;

    iget-object v10, v1, Lyads/xm1;->a:Lyads/vm1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Lyads/qm1;

    iget-object v1, v10, Lyads/vm1;->a:Lyads/zw2;

    sget-object v4, Lyads/w36;->a:Lyads/o36;

    sget-object v5, Lyads/bt4;->c:Lnl3;

    sget-object v6, Lyads/um1;->a:Lyads/xr2;

    const-string v3, "allow_empty"

    move-object v0, p1

    move-object v2, p3

    invoke-static/range {v0 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v6, v1

    :goto_0
    iget-object v0, v10, Lyads/vm1;->b:Lyads/zw2;

    sget-object v1, Lyads/w36;->c:Lyads/u36;

    invoke-static {p1, v0, p3, v8, v1}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v0

    iget-object v4, v10, Lyads/vm1;->c:Lyads/zw2;

    const-string v5, "pattern"

    invoke-static {p1, v4, p3, v5, v1}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v1

    iget-object v2, v10, Lyads/vm1;->d:Lyads/zw2;

    invoke-static {v2, p3, v7}, Lyads/qq3;->a(Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v11, v6, v0, v1, v2}, Lyads/qm1;-><init>(Lyads/as2;Lyads/as2;Lyads/as2;Ljava/lang/String;)V

    invoke-direct {v9, v11}, Lyads/zl1;-><init>(Lyads/qm1;)V

    return-object v9

    :cond_1
    instance-of v4, p2, Lyads/wm1;

    if-eqz v4, :cond_3

    new-instance v9, Lyads/yl1;

    iget-object v0, p0, Lyads/pm1;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->w4:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/km1;

    move-object v1, p2

    check-cast v1, Lyads/wm1;

    iget-object v10, v1, Lyads/wm1;->a:Lyads/mm1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Lyads/hm1;

    iget-object v1, v10, Lyads/mm1;->a:Lyads/zw2;

    sget-object v4, Lyads/w36;->a:Lyads/o36;

    sget-object v5, Lyads/bt4;->c:Lnl3;

    sget-object v6, Lyads/lm1;->a:Lyads/xr2;

    const-string v3, "allow_empty"

    move-object v0, p1

    move-object v2, p3

    invoke-static/range {v0 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v6, v1

    :goto_1
    iget-object v1, v10, Lyads/mm1;->b:Lyads/zw2;

    const-string v3, "condition"

    move-object v0, p1

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v1

    iget-object v3, v10, Lyads/mm1;->c:Lyads/zw2;

    sget-object v4, Lyads/w36;->c:Lyads/u36;

    invoke-static {p1, v3, p3, v8, v4}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v0

    iget-object v3, v10, Lyads/mm1;->d:Lyads/zw2;

    invoke-static {v3, p3, v7}, Lyads/qq3;->a(Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v11, v6, v1, v0, v2}, Lyads/hm1;-><init>(Lyads/as2;Lyads/as2;Lyads/as2;Ljava/lang/String;)V

    invoke-direct {v9, v11}, Lyads/yl1;-><init>(Lyads/hm1;)V

    return-object v9

    :cond_3
    invoke-static {}, Lme0;->e()V

    const/4 v0, 0x0

    return-object v0
.end method
