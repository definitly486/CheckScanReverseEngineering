.class public final Lyads/h91;
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

    iput-object p1, p0, Lyads/h91;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 9

    check-cast p2, Lyads/j91;

    new-instance v0, Lyads/i81;

    iget-object v2, p2, Lyads/j91;->a:Lyads/zw2;

    iget-object v1, p0, Lyads/h91;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->Z2:Lcl4;

    iget-object v6, v1, Lyads/tq3;->X2:Lcl4;

    const-string v4, "margins"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/yc1;

    iget-object v2, p2, Lyads/j91;->b:Lyads/zw2;

    sget-object v5, Lyads/w36;->a:Lyads/o36;

    sget-object v6, Lyads/bt4;->c:Lnl3;

    sget-object v7, Lyads/i91;->a:Lyads/xr2;

    const-string v4, "show_at_end"

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object p3

    if-nez p3, :cond_0

    move-object p3, v7

    :cond_0
    iget-object v2, p2, Lyads/j91;->c:Lyads/zw2;

    sget-object v7, Lyads/i91;->b:Lyads/xr2;

    const-string v4, "show_at_start"

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v8, v7

    goto :goto_0

    :cond_1
    move-object v8, v2

    :goto_0
    iget-object v2, p2, Lyads/j91;->d:Lyads/zw2;

    sget-object v7, Lyads/i91;->c:Lyads/xr2;

    const-string v4, "show_between"

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v7, v2

    :goto_1
    iget-object v2, p2, Lyads/j91;->e:Lyads/zw2;

    iget-object p0, p0, Lyads/h91;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->W2:Lcl4;

    iget-object v6, p0, Lyads/tq3;->U2:Lcl4;

    const-string v4, "style"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lyads/tc1;

    move-object v1, p1

    move-object v2, p3

    move-object v4, v7

    move-object v3, v8

    invoke-direct/range {v0 .. v5}, Lyads/i81;-><init>(Lyads/yc1;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/tc1;)V

    return-object v0
.end method
