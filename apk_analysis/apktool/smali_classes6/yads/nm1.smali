.class public final Lyads/nm1;
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

    iput-object p1, p0, Lyads/nm1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 11

    invoke-static {p2}, Lyads/wq3;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "regex"

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v7, "variable"

    const-string v8, "label_id"

    if-eqz v2, :cond_1

    new-instance v9, Lyads/zl1;

    iget-object v0, p0, Lyads/nm1;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->x4:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/rm1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lyads/qm1;

    sget-object v3, Lyads/w36;->a:Lyads/o36;

    sget-object v4, Lyads/bt4;->c:Lnl3;

    sget-object v6, Lyads/um1;->a:Lyads/xr2;

    sget-object v0, Lyads/oq3;->a:Lyads/y50;

    sget-object v5, Lyads/uq3;->a:Lyads/l66;

    const-string v2, "allow_empty"

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v6, v2

    :goto_0
    sget-object v0, Lyads/w36;->c:Lyads/u36;

    invoke-static {p1, p2, v8, v0}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v1

    const-string v2, "pattern"

    invoke-static {p1, p2, v2, v0}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v0

    invoke-static {v7, p2}, Lyads/wq3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v10, v6, v1, v0, v2}, Lyads/qm1;-><init>(Lyads/as2;Lyads/as2;Lyads/as2;Ljava/lang/String;)V

    invoke-direct {v9, v10}, Lyads/zl1;-><init>(Lyads/qm1;)V

    return-object v9

    :cond_1
    const-string v2, "expression"

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v9, Lyads/yl1;

    iget-object v0, p0, Lyads/nm1;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->u4:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/im1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lyads/hm1;

    sget-object v3, Lyads/w36;->a:Lyads/o36;

    sget-object v4, Lyads/bt4;->c:Lnl3;

    sget-object v6, Lyads/lm1;->a:Lyads/xr2;

    sget-object v0, Lyads/oq3;->a:Lyads/y50;

    sget-object v5, Lyads/uq3;->a:Lyads/l66;

    const-string v2, "allow_empty"

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v6, v2

    :goto_1
    const-string v2, "condition"

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v2

    sget-object v0, Lyads/w36;->c:Lyads/u36;

    invoke-static {p1, p2, v8, v0}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v0

    invoke-static {v7, p2}, Lyads/wq3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v10, v6, v2, v0, v1}, Lyads/hm1;-><init>(Lyads/as2;Lyads/as2;Lyads/as2;Ljava/lang/String;)V

    invoke-direct {v9, v10}, Lyads/yl1;-><init>(Lyads/hm1;)V

    return-object v9

    :cond_3
    invoke-interface {p1}, Lyads/ys4;->b()Lyads/pv5;

    move-result-object v2

    invoke-interface {v2, v1}, Lyads/pv5;->get(Ljava/lang/String;)Lyads/xq3;

    move-result-object v2

    if-eqz v2, :cond_6

    instance-of v5, v2, Lyads/ym1;

    if-eqz v5, :cond_4

    check-cast v2, Lyads/ym1;

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_5

    iget-object v0, p0, Lyads/nm1;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->C4:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/pm1;

    invoke-virtual {v0, p1, v2, p2}, Lyads/pm1;->a(Lyads/ys4;Lyads/ym1;Lorg/json/JSONObject;)Lyads/am1;

    move-result-object v0

    return-object v0

    :cond_5
    const-string v0, "type"

    invoke-static {p2, v0, v1}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object v0

    throw v0

    :cond_6
    invoke-static {v1, p2}, Lyads/gt4;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lyads/ft4;

    move-result-object v0

    throw v0
.end method
