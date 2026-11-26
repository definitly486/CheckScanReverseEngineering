.class public final Lyads/lb2;
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

    iput-object p1, p0, Lyads/lb2;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 12

    check-cast p2, Lyads/nb2;

    new-instance v0, Lyads/gb2;

    iget-object v2, p2, Lyads/nb2;->a:Lyads/zw2;

    sget-object v5, Lyads/w36;->b:Lyads/s36;

    sget-object v6, Lyads/bt4;->e:Lnl3;

    sget-object v7, Lyads/mb2;->b:Lyads/l66;

    sget-object v8, Lyads/mb2;->a:Lyads/xr2;

    const-string v4, "duration"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v8}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p1

    move-object v7, v5

    move-object p3, v6

    if-nez p1, :cond_0

    move-object p1, v8

    :cond_0
    iget-object v2, p2, Lyads/nb2;->b:Lyads/zw2;

    iget-object v4, p0, Lyads/lb2;->a:Lyads/tq3;

    iget-object v5, v4, Lyads/tq3;->m1:Lcl4;

    iget-object v6, v4, Lyads/tq3;->k1:Lcl4;

    const-string v4, "end_actions"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object v10

    iget-object v2, p2, Lyads/nb2;->c:Lyads/zw2;

    const-string v4, "id"

    invoke-static {v2, v3, v4}, Lyads/qq3;->a(Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/lang/String;

    iget-object v2, p2, Lyads/nb2;->d:Lyads/zw2;

    iget-object p0, p0, Lyads/lb2;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->m1:Lcl4;

    iget-object v6, p0, Lyads/tq3;->k1:Lcl4;

    const-string v4, "tick_actions"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object p0

    iget-object v4, p2, Lyads/nb2;->e:Lyads/zw2;

    sget-object v9, Lyads/mb2;->c:Lyads/l66;

    const-string v6, "tick_interval"

    move-object v8, p3

    move-object v5, v3

    move-object v3, v1

    invoke-static/range {v3 .. v9}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p3

    move-object v3, v5

    iget-object p2, p2, Lyads/nb2;->f:Lyads/zw2;

    const-string v2, "value_variable"

    invoke-static {v1, p2, v3, v2}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    move-object v4, p0

    move-object v1, p1

    move-object v5, p3

    move-object v2, v10

    move-object v3, v11

    invoke-direct/range {v0 .. v6}, Lyads/gb2;-><init>(Lyads/as2;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lyads/as2;Ljava/lang/String;)V

    return-object v0
.end method
