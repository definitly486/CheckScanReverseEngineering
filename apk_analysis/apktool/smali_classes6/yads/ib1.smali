.class public final Lyads/ib1;
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

    iput-object p1, p0, Lyads/ib1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyads/ib1;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/db1;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/db1;
    .locals 11

    instance-of v0, p1, Lyads/zn2;

    if-eqz v0, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/zn2;

    invoke-direct {v0, p1}, Lyads/zn2;-><init>(Lyads/ys4;)V

    move-object v1, v0

    :goto_0
    new-instance p1, Lyads/db1;

    iget-object v0, p0, Lyads/ib1;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->H3:Lcl4;

    const-string v2, "functions"

    invoke-static {v1, p2, v2, v0}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v0

    const-string v2, "log_id"

    invoke-static {v2, p2}, Lyads/wq3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    iget-object v2, p0, Lyads/ib1;->a:Lyads/tq3;

    iget-object v2, v2, Lyads/tq3;->F2:Lcl4;

    sget-object v3, Lyads/lb1;->c:Lyads/st3;

    const-string v4, "states"

    invoke-static {v1, p2, v4, v2, v3}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lyads/st3;)Ljava/util/List;

    move-result-object v9

    iget-object v2, p0, Lyads/ib1;->a:Lyads/tq3;

    iget-object v2, v2, Lyads/tq3;->C8:Lcl4;

    const-string v3, "timers"

    invoke-static {v1, p2, v3, v2}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v10

    sget-object v4, Lyads/lb1;->b:Lyads/m36;

    sget-object v5, Lyads/nd2;->d:Lnl3;

    sget-object v7, Lyads/lb1;->a:Lyads/xr2;

    sget-object v2, Lyads/oq3;->a:Lyads/y50;

    sget-object v6, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "transition_animation_selector"

    move-object v2, p2

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move-object v7, p2

    :goto_1
    iget-object p2, p0, Lyads/ib1;->a:Lyads/tq3;

    iget-object p2, p2, Lyads/tq3;->U8:Lcl4;

    const-string v3, "variable_triggers"

    invoke-static {v1, v2, v3, p2}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object p2

    iget-object p0, p0, Lyads/ib1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->a9:Lcl4;

    const-string v3, "variables"

    invoke-static {v1, v2, v3, p0}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object p0

    invoke-static {v1}, Lyads/zs4;->a(Lyads/ys4;)Ljava/util/List;

    move-result-object v1

    move-object v2, p1

    move-object v3, v0

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    move-object v9, p0

    move-object v8, p2

    move-object v10, v1

    invoke-direct/range {v2 .. v10}, Lyads/db1;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lyads/as2;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v2
.end method
