.class public final Lyads/jb2;
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

    iput-object p1, p0, Lyads/jb2;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 9

    new-instance v0, Lyads/gb2;

    sget-object v4, Lyads/w36;->b:Lyads/s36;

    sget-object v5, Lyads/bt4;->e:Lnl3;

    sget-object v6, Lyads/mb2;->b:Lyads/l66;

    sget-object v7, Lyads/mb2;->a:Lyads/xr2;

    const-string v3, "duration"

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p1

    if-nez p1, :cond_0

    move-object p1, v7

    :cond_0
    iget-object p2, p0, Lyads/jb2;->a:Lyads/tq3;

    iget-object p2, p2, Lyads/tq3;->k1:Lcl4;

    const-string v3, "end_actions"

    invoke-static {v1, v2, v3, p2}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object p2

    const-string v3, "id"

    invoke-static {v3, v2}, Lyads/wq3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    iget-object p0, p0, Lyads/jb2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->k1:Lcl4;

    const-string v3, "tick_actions"

    invoke-static {v1, v2, v3, p0}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object p0

    sget-object v6, Lyads/mb2;->c:Lyads/l66;

    const/4 v7, 0x0

    const-string v3, "tick_interval"

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v5

    const-string v3, "value_variable"

    invoke-static {v1, v2, v3}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    move-object v4, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v8

    invoke-direct/range {v0 .. v6}, Lyads/gb2;-><init>(Lyads/as2;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lyads/as2;Ljava/lang/String;)V

    return-object v0
.end method
