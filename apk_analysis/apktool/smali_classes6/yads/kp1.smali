.class public final Lyads/kp1;
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

    iput-object p1, p0, Lyads/kp1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 98
    check-cast p2, Lyads/np1;

    invoke-virtual {p0, p1, p2, p3}, Lyads/kp1;->a(Lyads/ys4;Lyads/np1;Lorg/json/JSONObject;)Lyads/dp1;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/np1;Lorg/json/JSONObject;)Lyads/dp1;
    .locals 9

    new-instance v0, Lyads/dp1;

    iget-object v2, p2, Lyads/np1;->a:Lyads/zw2;

    sget-object v5, Lyads/w36;->b:Lyads/s36;

    sget-object v6, Lyads/bt4;->e:Lnl3;

    sget-object v7, Lyads/lp1;->b:Lyads/l66;

    sget-object v8, Lyads/lp1;->a:Lyads/xr2;

    const-string v4, "angle"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v8}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p1

    move-object v2, v3

    if-nez p1, :cond_0

    :goto_0
    move-object v3, v2

    goto :goto_1

    :cond_0
    move-object v8, p1

    goto :goto_0

    :goto_1
    iget-object v2, p2, Lyads/np1;->b:Lyads/zw2;

    iget-object p0, p0, Lyads/kp1;->a:Lyads/tq3;

    iget-object v4, p0, Lyads/tq3;->R4:Lcl4;

    iget-object v5, p0, Lyads/tq3;->P4:Lcl4;

    sget-object v6, Lyads/lp1;->d:Lyads/st3;

    invoke-static/range {v1 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Lcl4;Lcl4;Lyads/st3;)Ljava/util/List;

    move-result-object p0

    move-object v2, v3

    iget-object p1, p2, Lyads/np1;->c:Lyads/zw2;

    sget-object v4, Lyads/w36;->f:Lyads/p36;

    sget-object v5, Lyads/bt4;->a:Lnl3;

    sget-object v6, Lyads/lp1;->c:Lyads/st3;

    sget-object v7, Lyads/uq3;->a:Lyads/l66;

    iget-boolean p2, p1, Lyads/zw2;->b:Z

    if-eqz p2, :cond_1

    const-string v3, "colors"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/p36;Lnl3;Lyads/st3;Lyads/l66;)Lyads/ds2;

    move-result-object p1

    goto :goto_2

    :cond_1
    iget p2, p1, Lyads/zw2;->a:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_2

    check-cast p1, Lyads/yw2;

    iget-object p1, p1, Lyads/yw2;->c:Ljava/lang/Object;

    check-cast p1, Lyads/ds2;

    goto :goto_2

    :cond_2
    const/4 p3, 0x3

    if-ne p2, p3, :cond_3

    check-cast p1, Lyads/xw2;

    iget-object v3, p1, Lyads/xw2;->c:Ljava/lang/String;

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/p36;Lnl3;Lyads/st3;Lyads/l66;)Lyads/ds2;

    move-result-object p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    invoke-direct {v0, v8, p0, p1}, Lyads/dp1;-><init>(Lyads/as2;Ljava/util/List;Lyads/ds2;)V

    return-object v0
.end method
