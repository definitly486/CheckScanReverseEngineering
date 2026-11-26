.class public final Lyads/jb1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/kv5;


# instance fields
.field public final a:Lyads/tq3;


# direct methods
.method public constructor <init>(Lyads/tq3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/jb1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Lyads/xq3;
    .locals 12

    invoke-interface {p1}, Lyads/ys4;->d()Z

    move-result v3

    invoke-static {p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v0

    new-instance p1, Lyads/tb1;

    iget-object v1, p0, Lyads/jb1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->I3:Lcl4;

    const-string v2, "functions"

    const/4 v4, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object p2

    const-string v2, "log_id"

    invoke-static {v0, v1, v2, v3, v4}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;)Lyads/zw2;

    move-result-object v8

    iget-object v2, p0, Lyads/jb1;->a:Lyads/tq3;

    iget-object v5, v2, Lyads/tq3;->G2:Lcl4;

    sget-object v6, Lyads/lb1;->c:Lyads/st3;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "states"

    invoke-static/range {v0 .. v6}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;Lyads/st3;)Lyads/zw2;

    move-result-object v9

    iget-object v2, p0, Lyads/jb1;->a:Lyads/tq3;

    iget-object v5, v2, Lyads/tq3;->D8:Lcl4;

    const-string v2, "timers"

    invoke-static/range {v0 .. v5}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v10

    sget-object v2, Lyads/lb1;->b:Lyads/m36;

    sget-object v6, Lyads/nd2;->d:Lnl3;

    sget-object v7, Lyads/uq3;->a:Lyads/l66;

    move v4, v3

    move-object v3, v2

    const-string v2, "transition_animation_selector"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v6

    move v3, v4

    iget-object v2, p0, Lyads/jb1;->a:Lyads/tq3;

    iget-object v5, v2, Lyads/tq3;->V8:Lcl4;

    const-string v2, "variable_triggers"

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v7

    iget-object p0, p0, Lyads/jb1;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->b9:Lcl4;

    const-string v2, "variables"

    invoke-static/range {v0 .. v5}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v11

    move-object v4, v9

    move-object v9, v6

    move-object v6, v8

    move-object v8, v10

    move-object v10, v7

    move-object v7, v4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v4 .. v11}, Lyads/tb1;-><init>(Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;)V

    return-object v4
.end method
