.class public final Lyads/zr0;
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

    iput-object p1, p0, Lyads/zr0;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyads/zr0;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/yr0;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/yr0;
    .locals 12

    new-instance v0, Lyads/yr0;

    const-string v1, "animator_id"

    invoke-static {v1, p2}, Lyads/wq3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lyads/cs0;->a:Lyads/m36;

    sget-object v3, Lyads/m11;->d:Lnl3;

    const-string v4, "direction"

    invoke-static {p1, p2, v4, v2, v3}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v2

    sget-object v6, Lyads/w36;->b:Lyads/s36;

    sget-object v7, Lyads/bt4;->e:Lnl3;

    sget-object v8, Lyads/cs0;->c:Lyads/l66;

    const/4 v9, 0x0

    const-string v5, "duration"

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v3 .. v9}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p1

    iget-object p2, p0, Lyads/zr0;->a:Lyads/tq3;

    iget-object p2, p2, Lyads/tq3;->X8:Lcl4;

    const-string v5, "end_value"

    invoke-static {v3, v4, v5, p2}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/oe2;

    sget-object v5, Lyads/cs0;->b:Lyads/m36;

    sget-object v8, Lyads/o11;->d:Lnl3;

    const-string v9, "interpolator"

    invoke-static {v3, v4, v9, v5, v8}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v10

    iget-object v5, p0, Lyads/zr0;->a:Lyads/tq3;

    iget-object v5, v5, Lyads/tq3;->v2:Lcl4;

    const-string v8, "repeat_count"

    invoke-static {v3, v4, v8, v5}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lyads/x91;

    sget-object v8, Lyads/cs0;->d:Lyads/l66;

    const/4 v9, 0x0

    const-string v5, "start_delay"

    invoke-static/range {v3 .. v9}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v7

    iget-object p0, p0, Lyads/zr0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->X8:Lcl4;

    const-string v5, "start_value"

    invoke-static {v3, v4, v5, p0}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Lyads/oe2;

    move-object v3, p1

    move-object v4, p2

    move-object v5, v10

    move-object v6, v11

    invoke-direct/range {v0 .. v8}, Lyads/yr0;-><init>(Ljava/lang/String;Lyads/as2;Lyads/as2;Lyads/oe2;Lyads/as2;Lyads/x91;Lyads/as2;Lyads/oe2;)V

    return-object v0
.end method
