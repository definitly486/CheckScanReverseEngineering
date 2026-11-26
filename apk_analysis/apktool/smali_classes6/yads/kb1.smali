.class public final Lyads/kb1;
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

    iput-object p1, p0, Lyads/kb1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 11

    check-cast p2, Lyads/tb1;

    new-instance v0, Lyads/db1;

    iget-object v2, p2, Lyads/tb1;->a:Lyads/zw2;

    iget-object v1, p0, Lyads/kb1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->J3:Lcl4;

    iget-object v6, v1, Lyads/tq3;->H3:Lcl4;

    const-string v4, "functions"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object p1

    iget-object p3, p2, Lyads/tb1;->b:Lyads/zw2;

    const-string v2, "log_id"

    invoke-static {p3, v3, v2}, Lyads/qq3;->a(Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object v2, p2, Lyads/tb1;->c:Lyads/zw2;

    iget-object v4, p0, Lyads/kb1;->a:Lyads/tq3;

    iget-object v5, v4, Lyads/tq3;->H2:Lcl4;

    iget-object v6, v4, Lyads/tq3;->F2:Lcl4;

    sget-object v7, Lyads/lb1;->c:Lyads/st3;

    const-string v4, "states"

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;Lyads/st3;)Ljava/util/List;

    move-result-object v8

    iget-object v2, p2, Lyads/tb1;->d:Lyads/zw2;

    iget-object v4, p0, Lyads/kb1;->a:Lyads/tq3;

    iget-object v5, v4, Lyads/tq3;->E8:Lcl4;

    iget-object v6, v4, Lyads/tq3;->C8:Lcl4;

    const-string v4, "timers"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v9

    iget-object v2, p2, Lyads/tb1;->e:Lyads/zw2;

    sget-object v5, Lyads/lb1;->b:Lyads/m36;

    sget-object v6, Lyads/nd2;->d:Lnl3;

    sget-object v7, Lyads/lb1;->a:Lyads/xr2;

    const-string v4, "transition_animation_selector"

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v7, v2

    :goto_0
    iget-object v2, p2, Lyads/tb1;->f:Lyads/zw2;

    iget-object v4, p0, Lyads/kb1;->a:Lyads/tq3;

    iget-object v5, v4, Lyads/tq3;->W8:Lcl4;

    iget-object v6, v4, Lyads/tq3;->U8:Lcl4;

    const-string v4, "variable_triggers"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v10

    iget-object v2, p2, Lyads/tb1;->g:Lyads/zw2;

    iget-object p0, p0, Lyads/kb1;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->c9:Lcl4;

    iget-object v6, p0, Lyads/tq3;->a9:Lcl4;

    const-string v4, "variables"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object p0

    move-object v3, v8

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p3

    move-object v5, v7

    move-object v4, v9

    move-object v6, v10

    move-object v7, p0

    invoke-direct/range {v0 .. v8}, Lyads/db1;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lyads/as2;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
