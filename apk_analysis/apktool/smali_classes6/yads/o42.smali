.class public final Lyads/o42;
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

    iput-object p1, p0, Lyads/o42;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 9

    check-cast p2, Lyads/j52;

    new-instance v0, Lyads/l42;

    iget-object v2, p2, Lyads/j52;->a:Lyads/zw2;

    sget-object v5, Lyads/w36;->f:Lyads/p36;

    sget-object v6, Lyads/bt4;->a:Lnl3;

    const-string v4, "color"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p1

    iget-object v2, p2, Lyads/j52;->b:Lyads/zw2;

    iget-object p0, p0, Lyads/o42;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->C7:Lcl4;

    iget-object v6, p0, Lyads/tq3;->A7:Lcl4;

    const-string v4, "style"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/s42;

    if-nez p0, :cond_0

    sget-object p0, Lyads/p42;->a:Lyads/r42;

    :cond_0
    iget-object v2, p2, Lyads/j52;->c:Lyads/zw2;

    sget-object v5, Lyads/p42;->d:Lyads/m36;

    sget-object v6, Lyads/g12;->d:Lnl3;

    sget-object v7, Lyads/p42;->b:Lyads/xr2;

    const-string v4, "unit"

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object p3

    if-nez p3, :cond_1

    move-object p3, v7

    :cond_1
    iget-object v2, p2, Lyads/j52;->d:Lyads/zw2;

    sget-object v5, Lyads/w36;->d:Lyads/r36;

    sget-object v6, Lyads/bt4;->d:Lnl3;

    sget-object v7, Lyads/p42;->e:Lyads/l66;

    sget-object v8, Lyads/p42;->c:Lyads/xr2;

    const-string v4, "width"

    invoke-static/range {v1 .. v8}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move-object v8, p2

    :goto_0
    invoke-direct {v0, p1, p0, p3, v8}, Lyads/l42;-><init>(Lyads/as2;Lyads/s42;Lyads/as2;Lyads/as2;)V

    return-object v0
.end method
