.class public final Lyads/we1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/qv5;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 8

    check-cast p2, Lyads/ye1;

    new-instance p0, Lyads/oe1;

    iget-object v0, p2, Lyads/ye1;->a:Lyads/zw2;

    sget-object v4, Lyads/w36;->c:Lyads/u36;

    sget-object v1, Lyads/xe1;->b:Lyads/l66;

    const-string v2, "key"

    invoke-static {p1, v0, p3, v2, v1}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/l66;)Lyads/as2;

    move-result-object v0

    iget-object v1, p2, Lyads/ye1;->b:Lyads/zw2;

    sget-object v6, Lyads/xe1;->c:Lyads/l66;

    sget-object v7, Lyads/xe1;->a:Lyads/zr2;

    iget-boolean v2, v1, Lyads/zw2;->b:Z

    if-eqz v2, :cond_0

    const-string v3, "placeholder"

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lyads/oq3;->a:Lyads/y50;

    sget-object v5, Lyads/uq3;->b:Lnl3;

    move-object v1, p1

    move-object v2, p3

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object v2, p3

    move-object p3, p1

    iget p1, v1, Lyads/zw2;->a:I

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    check-cast v1, Lyads/yw2;

    iget-object p1, v1, Lyads/yw2;->c:Ljava/lang/Object;

    check-cast p1, Lyads/as2;

    move-object v1, p3

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    check-cast v1, Lyads/xw2;

    iget-object v3, v1, Lyads/xw2;->c:Ljava/lang/String;

    sget-object p1, Lyads/oq3;->a:Lyads/y50;

    sget-object v5, Lyads/uq3;->b:Lnl3;

    move-object v1, p3

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object v1, p3

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move-object v7, p1

    :goto_1
    iget-object p1, p2, Lyads/ye1;->c:Lyads/zw2;

    const-string p2, "regex"

    invoke-static {v1, p1, v2, p2, v4}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, v0, v7, p1}, Lyads/oe1;-><init>(Lyads/as2;Lyads/as2;Lyads/as2;)V

    return-object p0
.end method
