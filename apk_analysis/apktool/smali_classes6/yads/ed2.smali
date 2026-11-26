.class public final Lyads/ed2;
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

    iput-object p1, p0, Lyads/ed2;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 7

    check-cast p2, Lyads/gd2;

    new-instance v0, Lyads/bd2;

    iget-object v2, p2, Lyads/gd2;->a:Lyads/zw2;

    iget-object v1, p0, Lyads/ed2;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->Q5:Lcl4;

    iget-object v6, v1, Lyads/tq3;->O5:Lcl4;

    const-string v4, "pivot_x"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/ru1;

    if-nez p1, :cond_0

    sget-object p1, Lyads/fd2;->a:Lyads/qu1;

    :cond_0
    iget-object v2, p2, Lyads/gd2;->b:Lyads/zw2;

    iget-object p0, p0, Lyads/ed2;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->Q5:Lcl4;

    iget-object v6, p0, Lyads/tq3;->O5:Lcl4;

    const-string v4, "pivot_y"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ru1;

    if-nez p0, :cond_1

    sget-object p0, Lyads/fd2;->b:Lyads/qu1;

    :cond_1
    iget-object v2, p2, Lyads/gd2;->c:Lyads/zw2;

    sget-object v5, Lyads/w36;->d:Lyads/r36;

    sget-object v6, Lyads/bt4;->d:Lnl3;

    const-string v4, "rotation"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p2

    invoke-direct {v0, p1, p0, p2}, Lyads/bd2;-><init>(Lyads/ru1;Lyads/ru1;Lyads/as2;)V

    return-object v0
.end method
