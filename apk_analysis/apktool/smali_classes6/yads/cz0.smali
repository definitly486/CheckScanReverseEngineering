.class public final Lyads/cz0;
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

    iput-object p1, p0, Lyads/cz0;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 13

    invoke-static {p2}, Lyads/wq3;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "on_success_actions"

    const-string v3, "on_fail_actions"

    const-string v4, "id"

    const-string v5, "variable_name"

    const-string v6, "value"

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move-object v8, p2

    goto/16 :goto_5

    :sswitch_0
    const-string v1, "array_insert_value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/yx0;

    iget-object p0, p0, Lyads/cz0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->Q:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ks0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lyads/js0;

    sget-object v2, Lyads/w36;->b:Lyads/s36;

    sget-object v3, Lyads/bt4;->e:Lnl3;

    const-string v4, "index"

    invoke-static {p1, p2, v4, v2, v3}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v2

    iget-object p0, p0, Lyads/ks0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->X8:Lcl4;

    invoke-static {p1, p2, v6, p0}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/oe2;

    sget-object v3, Lyads/w36;->c:Lyads/u36;

    invoke-static {p1, p2, v5, v3}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p1

    invoke-direct {v1, p0, v2, p1}, Lyads/js0;-><init>(Lyads/oe2;Lyads/as2;Lyads/as2;)V

    invoke-direct {v0, v1}, Lyads/yx0;-><init>(Lyads/js0;)V

    return-object v0

    :sswitch_1
    const-string v1, "hide_tooltip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lyads/gy0;

    iget-object p0, p0, Lyads/cz0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->r0:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/nu0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/mu0;

    sget-object v1, Lyads/w36;->c:Lyads/u36;

    invoke-static {p1, p2, v4, v1}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/mu0;-><init>(Lyads/as2;)V

    invoke-direct {v0, p0}, Lyads/gy0;-><init>(Lyads/mu0;)V

    return-object v0

    :sswitch_2
    const-string v1, "dict_set_value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lyads/dy0;

    iget-object p0, p0, Lyads/cz0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->i0:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/xt0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lyads/wt0;

    sget-object v2, Lyads/w36;->c:Lyads/u36;

    const-string v3, "key"

    invoke-static {p1, p2, v3, v2}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v3

    iget-object p0, p0, Lyads/xt0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->X8:Lcl4;

    invoke-static {p1, p2, v6, p0}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/oe2;

    invoke-static {p1, p2, v5, v2}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p1

    invoke-direct {v1, p0, v3, p1}, Lyads/wt0;-><init>(Lyads/oe2;Lyads/as2;Lyads/as2;)V

    invoke-direct {v0, v1}, Lyads/dy0;-><init>(Lyads/wt0;)V

    return-object v0

    :sswitch_3
    const-string v1, "focus_element"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    new-instance v0, Lyads/fy0;

    iget-object p0, p0, Lyads/cz0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->o0:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/hu0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/gu0;

    sget-object v1, Lyads/w36;->c:Lyads/u36;

    const-string v2, "element_id"

    invoke-static {p1, p2, v2, v1}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/gu0;-><init>(Lyads/as2;)V

    invoke-direct {v0, p0}, Lyads/fy0;-><init>(Lyads/gu0;)V

    return-object v0

    :sswitch_4
    const-string v1, "download"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_4
    new-instance v0, Lyads/ey0;

    iget-object p0, p0, Lyads/cz0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->l0:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/cu0;

    new-instance v1, Lyads/bu0;

    iget-object v4, p0, Lyads/cu0;->a:Lyads/tq3;

    iget-object v4, v4, Lyads/tq3;->k1:Lcl4;

    invoke-static {p1, p2, v3, v4}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v3

    iget-object p0, p0, Lyads/cu0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->k1:Lcl4;

    invoke-static {p1, p2, v2, p0}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object p0

    sget-object v7, Lyads/w36;->e:Lyads/v36;

    sget-object v8, Lyads/bt4;->b:Lnl3;

    sget-object v2, Lyads/oq3;->a:Lyads/y50;

    sget-object v9, Lyads/uq3;->a:Lyads/l66;

    const-string v6, "url"

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v4 .. v9}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p1

    invoke-direct {v1, v3, p0, p1}, Lyads/bu0;-><init>(Ljava/util/List;Ljava/util/List;Lyads/as2;)V

    invoke-direct {v0, v1}, Lyads/ey0;-><init>(Lyads/bu0;)V

    return-object v0

    :sswitch_5
    move-object v6, p2

    const-string v1, "set_state"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_1
    move-object v8, v6

    goto/16 :goto_5

    :cond_5
    new-instance v0, Lyads/jy0;

    iget-object p0, p0, Lyads/cz0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->D0:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/aw0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/zv0;

    sget-object v1, Lyads/w36;->c:Lyads/u36;

    const-string v2, "state_id"

    invoke-static {p1, p2, v2, v1}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v1

    sget-object v7, Lyads/w36;->a:Lyads/o36;

    sget-object v8, Lyads/bt4;->c:Lnl3;

    sget-object v10, Lyads/dw0;->a:Lyads/xr2;

    sget-object v9, Lyads/uq3;->a:Lyads/l66;

    const-string v6, "temporary"

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v4 .. v10}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    move-object v10, p1

    :goto_2
    invoke-direct {p0, v1, v10}, Lyads/zv0;-><init>(Lyads/as2;Lyads/as2;)V

    invoke-direct {v0, p0}, Lyads/jy0;-><init>(Lyads/zv0;)V

    return-object v0

    :sswitch_6
    const-string v1, "scroll_to"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    :cond_7
    new-instance v0, Lyads/iy0;

    iget-object p0, p0, Lyads/cz0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->A0:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/uv0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lyads/tv0;

    sget-object v8, Lyads/w36;->a:Lyads/o36;

    sget-object v9, Lyads/bt4;->c:Lnl3;

    sget-object v11, Lyads/xv0;->a:Lyads/xr2;

    sget-object v2, Lyads/oq3;->a:Lyads/y50;

    sget-object v10, Lyads/uq3;->a:Lyads/l66;

    const-string v7, "animated"

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v5 .. v11}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    move-object v11, v2

    :goto_3
    iget-object p0, p0, Lyads/uv0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->x0:Lcl4;

    const-string v2, "destination"

    invoke-static {p1, p2, v2, p0}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/kv0;

    sget-object v2, Lyads/w36;->c:Lyads/u36;

    invoke-static {p1, p2, v4, v2}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p1

    invoke-direct {v1, v11, p0, p1}, Lyads/tv0;-><init>(Lyads/as2;Lyads/kv0;Lyads/as2;)V

    invoke-direct {v0, v1}, Lyads/iy0;-><init>(Lyads/tv0;)V

    return-object v0

    :sswitch_7
    move-object v6, p2

    const-string v1, "scroll_by"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_1

    :cond_9
    new-instance v0, Lyads/hy0;

    iget-object p0, p0, Lyads/cz0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->u0:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/bv0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p2}, Lyads/bv0;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/av0;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/hy0;-><init>(Lyads/av0;)V

    return-object v0

    :sswitch_8
    move-object v6, p2

    const-string v1, "show_tooltip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :goto_4
    goto/16 :goto_1

    :cond_a
    new-instance v0, Lyads/my0;

    iget-object p0, p0, Lyads/cz0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->M0:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/qw0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/pw0;

    sget-object v1, Lyads/w36;->c:Lyads/u36;

    invoke-static {p1, p2, v4, v1}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v1

    sget-object v2, Lyads/w36;->a:Lyads/o36;

    sget-object v3, Lyads/bt4;->c:Lnl3;

    const-string v4, "multiple"

    invoke-static {p1, p2, v4, v2, v3}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lyads/pw0;-><init>(Lyads/as2;Lyads/as2;)V

    invoke-direct {v0, p0}, Lyads/my0;-><init>(Lyads/pw0;)V

    return-object v0

    :sswitch_9
    move-object v6, p2

    const-string v1, "array_remove_value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_4

    :cond_b
    new-instance v0, Lyads/zx0;

    iget-object p0, p0, Lyads/cz0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->T:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ps0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/os0;

    sget-object v9, Lyads/w36;->b:Lyads/s36;

    sget-object v10, Lyads/bt4;->e:Lnl3;

    sget-object v1, Lyads/oq3;->a:Lyads/y50;

    sget-object v11, Lyads/uq3;->a:Lyads/l66;

    const-string v8, "index"

    move-object v7, v6

    move-object v6, p1

    invoke-static/range {v6 .. v11}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v1

    move-object v6, v7

    sget-object v2, Lyads/w36;->c:Lyads/u36;

    invoke-static {p1, p2, v5, v2}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lyads/os0;-><init>(Lyads/as2;Lyads/as2;)V

    invoke-direct {v0, p0}, Lyads/zx0;-><init>(Lyads/os0;)V

    return-object v0

    :sswitch_a
    move-object v6, p2

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_1

    :cond_c
    new-instance v0, Lyads/qy0;

    iget-object p0, p0, Lyads/cz0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->h1:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/z01;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/y01;

    sget-object v8, Lyads/c11;->a:Lyads/m36;

    sget-object v9, Lyads/x01;->d:Lnl3;

    sget-object v1, Lyads/oq3;->a:Lyads/y50;

    sget-object v10, Lyads/uq3;->a:Lyads/l66;

    const-string v7, "action"

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v1

    sget-object v2, Lyads/w36;->c:Lyads/u36;

    invoke-static {p1, p2, v4, v2}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lyads/y01;-><init>(Lyads/as2;Lyads/as2;)V

    invoke-direct {v0, p0}, Lyads/qy0;-><init>(Lyads/y01;)V

    return-object v0

    :sswitch_b
    move-object v6, p2

    const-string v1, "timer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_4

    :cond_d
    new-instance v0, Lyads/oy0;

    iget-object p0, p0, Lyads/cz0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->Y0:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/rx0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/qx0;

    sget-object v8, Lyads/ux0;->a:Lyads/m36;

    sget-object v9, Lyads/px0;->d:Lnl3;

    sget-object v1, Lyads/oq3;->a:Lyads/y50;

    sget-object v10, Lyads/uq3;->a:Lyads/l66;

    const-string v7, "action"

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v1

    move-object v8, v6

    sget-object v2, Lyads/w36;->c:Lyads/u36;

    invoke-static {p1, p2, v4, v2}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lyads/qx0;-><init>(Lyads/as2;Lyads/as2;)V

    invoke-direct {v0, p0}, Lyads/oy0;-><init>(Lyads/qx0;)V

    return-object v0

    :sswitch_c
    move-object v8, p2

    const-string v1, "array_set_value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_5

    :cond_e
    new-instance v0, Lyads/ay0;

    iget-object p0, p0, Lyads/cz0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->W:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/us0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lyads/ts0;

    sget-object v10, Lyads/w36;->b:Lyads/s36;

    sget-object v11, Lyads/bt4;->e:Lnl3;

    sget-object v2, Lyads/oq3;->a:Lyads/y50;

    sget-object v12, Lyads/uq3;->a:Lyads/l66;

    const-string v9, "index"

    move-object v7, p1

    invoke-static/range {v7 .. v12}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v2

    iget-object p0, p0, Lyads/us0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->X8:Lcl4;

    invoke-static {p1, p2, v6, p0}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/oe2;

    sget-object v3, Lyads/w36;->c:Lyads/u36;

    invoke-static {p1, p2, v5, v3}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p1

    invoke-direct {v1, p0, v2, p1}, Lyads/ts0;-><init>(Lyads/oe2;Lyads/as2;Lyads/as2;)V

    invoke-direct {v0, v1}, Lyads/ay0;-><init>(Lyads/ts0;)V

    return-object v0

    :sswitch_d
    move-object v8, p2

    const-string v1, "update_structure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_5

    :cond_f
    new-instance v0, Lyads/py0;

    iget-object p0, p0, Lyads/cz0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->e1:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/r01;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lyads/q01;

    sget-object v10, Lyads/w36;->c:Lyads/u36;

    sget-object v12, Lyads/u01;->a:Lyads/l66;

    sget-object v2, Lyads/oq3;->a:Lyads/y50;

    sget-object v11, Lyads/uq3;->b:Lnl3;

    const-string v9, "path"

    move-object v7, p1

    invoke-static/range {v7 .. v12}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v2

    iget-object p0, p0, Lyads/r01;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->X8:Lcl4;

    invoke-static {p1, p2, v6, p0}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/oe2;

    invoke-static {p1, p2, v5, v10}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p1

    invoke-direct {v1, p0, v2, p1}, Lyads/q01;-><init>(Lyads/oe2;Lyads/as2;Lyads/as2;)V

    invoke-direct {v0, v1}, Lyads/py0;-><init>(Lyads/q01;)V

    return-object v0

    :sswitch_e
    move-object v8, p2

    const-string v1, "copy_to_clipboard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_5

    :cond_10
    new-instance v0, Lyads/cy0;

    iget-object p0, p0, Lyads/cz0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->f0:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/st0;

    new-instance v1, Lyads/it0;

    iget-object p0, p0, Lyads/st0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->c0:Lcl4;

    const-string v2, "content"

    invoke-static {p1, p2, v2, p0}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/lt0;

    invoke-direct {v1, p0}, Lyads/it0;-><init>(Lyads/lt0;)V

    invoke-direct {v0, v1}, Lyads/cy0;-><init>(Lyads/it0;)V

    return-object v0

    :sswitch_f
    move-object v8, p2

    const-string v1, "set_stored_value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_5

    :cond_11
    new-instance v0, Lyads/ky0;

    iget-object p0, p0, Lyads/cz0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->G0:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/gw0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lyads/fw0;

    sget-object v10, Lyads/w36;->b:Lyads/s36;

    sget-object v11, Lyads/bt4;->e:Lnl3;

    sget-object v2, Lyads/oq3;->a:Lyads/y50;

    sget-object v12, Lyads/uq3;->a:Lyads/l66;

    const-string v9, "lifetime"

    move-object v7, p1

    invoke-static/range {v7 .. v12}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v2

    sget-object v3, Lyads/w36;->c:Lyads/u36;

    const-string v4, "name"

    invoke-static {p1, p2, v4, v3}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v3

    iget-object p0, p0, Lyads/gw0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->X8:Lcl4;

    invoke-static {p1, p2, v6, p0}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/oe2;

    invoke-direct {v1, p0, v2, v3}, Lyads/fw0;-><init>(Lyads/oe2;Lyads/as2;Lyads/as2;)V

    invoke-direct {v0, v1}, Lyads/ky0;-><init>(Lyads/fw0;)V

    return-object v0

    :sswitch_10
    move-object v8, p2

    const-string v1, "submit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_5

    :cond_12
    new-instance v0, Lyads/ny0;

    iget-object p0, p0, Lyads/cz0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->P0:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/zw0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lyads/yw0;

    sget-object v4, Lyads/w36;->c:Lyads/u36;

    const-string v5, "container_id"

    invoke-static {p1, p2, v5, v4}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v4

    iget-object v5, p0, Lyads/zw0;->a:Lyads/tq3;

    iget-object v5, v5, Lyads/tq3;->k1:Lcl4;

    invoke-static {p1, p2, v3, v5}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v3

    iget-object v5, p0, Lyads/zw0;->a:Lyads/tq3;

    iget-object v5, v5, Lyads/tq3;->k1:Lcl4;

    invoke-static {p1, p2, v2, v5}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v2

    iget-object p0, p0, Lyads/zw0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->S0:Lcl4;

    const-string v5, "request"

    invoke-static {p1, p2, v5, p0}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/xw0;

    invoke-direct {v1, v4, v3, v2, p0}, Lyads/yw0;-><init>(Lyads/as2;Ljava/util/List;Ljava/util/List;Lyads/xw0;)V

    invoke-direct {v0, v1}, Lyads/ny0;-><init>(Lyads/yw0;)V

    return-object v0

    :sswitch_11
    move-object v8, p2

    const-string v1, "animator_stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_5

    :cond_13
    new-instance p1, Lyads/xx0;

    iget-object p0, p0, Lyads/cz0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->N:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/fs0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/es0;

    const-string v0, "animator_id"

    invoke-static {v0, p2}, Lyads/wq3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lyads/es0;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p0}, Lyads/xx0;-><init>(Lyads/es0;)V

    return-object p1

    :sswitch_12
    move-object v8, p2

    const-string v1, "clear_focus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_5

    :cond_14
    new-instance p1, Lyads/by0;

    iget-object p0, p0, Lyads/cz0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->Z:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/et0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/dt0;

    invoke-direct {p0}, Lyads/dt0;-><init>()V

    invoke-direct {p1, p0}, Lyads/by0;-><init>(Lyads/dt0;)V

    return-object p1

    :sswitch_13
    move-object v8, p2

    const-string v1, "animator_start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_5

    :cond_15
    new-instance v0, Lyads/wx0;

    iget-object p0, p0, Lyads/cz0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->K:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/zr0;

    invoke-virtual {p0, p1, p2}, Lyads/zr0;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/yr0;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/wx0;-><init>(Lyads/yr0;)V

    return-object v0

    :sswitch_14
    move-object v8, p2

    const-string v1, "set_variable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    :goto_5
    invoke-interface {p1}, Lyads/ys4;->b()Lyads/pv5;

    move-result-object v1

    invoke-interface {v1, v0}, Lyads/pv5;->get(Ljava/lang/String;)Lyads/xq3;

    move-result-object v1

    if-eqz v1, :cond_18

    instance-of v2, v1, Lyads/h01;

    if-eqz v2, :cond_16

    check-cast v1, Lyads/h01;

    goto :goto_6

    :cond_16
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_17

    iget-object p0, p0, Lyads/cz0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->d1:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ez0;

    invoke-virtual {p0, p1, v1, p2}, Lyads/ez0;->a(Lyads/ys4;Lyads/h01;Lorg/json/JSONObject;)Lyads/ry0;

    move-result-object p0

    return-object p0

    :cond_17
    const-string p0, "type"

    invoke-static {p2, p0, v0}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0

    :cond_18
    invoke-static {v0, p2}, Lyads/gt4;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lyads/ft4;

    move-result-object p0

    throw p0

    :cond_19
    new-instance v0, Lyads/ly0;

    iget-object p0, p0, Lyads/cz0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->J0:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/lw0;

    new-instance v1, Lyads/kw0;

    iget-object p0, p0, Lyads/lw0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->X8:Lcl4;

    invoke-static {p1, p2, v6, p0}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/oe2;

    sget-object v2, Lyads/w36;->c:Lyads/u36;

    invoke-static {p1, p2, v5, v2}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lyads/kw0;-><init>(Lyads/oe2;Lyads/as2;)V

    invoke-direct {v0, v1}, Lyads/ly0;-><init>(Lyads/kw0;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x60c6ea47 -> :sswitch_14
        -0x60c6b6f6 -> :sswitch_13
        -0x4acd3f9a -> :sswitch_12
        -0x452fb1a6 -> :sswitch_11
        -0x3523bfe8 -> :sswitch_10
        -0x2f7b116e -> :sswitch_f
        -0x181876a4 -> :sswitch_e
        -0x13774683 -> :sswitch_d
        0x9970ee -> :sswitch_c
        0x6940745 -> :sswitch_b
        0x6b0147b -> :sswitch_a
        0xc27ca1c -> :sswitch_9
        0x11f904c1 -> :sswitch_8
        0x18e6fb09 -> :sswitch_7
        0x18e6fd2d -> :sswitch_6
        0x378e9274 -> :sswitch_5
        0x551ac888 -> :sswitch_4
        0x5c6dc295 -> :sswitch_3
        0x5ea5ba0b -> :sswitch_2
        0x6643f206 -> :sswitch_1
        0x6bf85891 -> :sswitch_0
    .end sparse-switch
.end method
