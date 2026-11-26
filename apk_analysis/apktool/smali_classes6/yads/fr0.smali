.class public final Lyads/fr0;
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
    .locals 10

    check-cast p2, Lyads/hr0;

    new-instance p0, Lyads/cr0;

    iget-object v1, p2, Lyads/hr0;->a:Lyads/zw2;

    sget-object v6, Lyads/w36;->b:Lyads/s36;

    sget-object v7, Lyads/bt4;->e:Lnl3;

    move-object v4, v6

    sget-object v6, Lyads/gr0;->e:Lyads/l66;

    move-object v5, v7

    sget-object v7, Lyads/gr0;->a:Lyads/xr2;

    const-string v3, "bottom"

    move-object v0, p1

    move-object v2, p3

    invoke-static/range {v0 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p1

    move-object v6, v4

    move-object v4, v2

    move-object v2, v0

    if-nez p1, :cond_0

    move-object p1, v7

    :cond_0
    iget-object v3, p2, Lyads/hr0;->b:Lyads/zw2;

    sget-object v8, Lyads/gr0;->f:Lyads/l66;

    sget-object v9, Lyads/gr0;->b:Lyads/xr2;

    move-object v7, v5

    const-string v5, "left"

    invoke-static/range {v2 .. v9}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p3

    if-nez p3, :cond_1

    move-object p3, v9

    :cond_1
    iget-object v3, p2, Lyads/hr0;->c:Lyads/zw2;

    sget-object v8, Lyads/gr0;->g:Lyads/l66;

    sget-object v9, Lyads/gr0;->c:Lyads/xr2;

    const-string v5, "right"

    invoke-static/range {v2 .. v9}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v9

    :cond_2
    iget-object v3, p2, Lyads/hr0;->d:Lyads/zw2;

    sget-object v8, Lyads/gr0;->h:Lyads/l66;

    sget-object v9, Lyads/gr0;->d:Lyads/xr2;

    const-string v5, "top"

    invoke-static/range {v2 .. v9}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    move-object v9, p2

    :goto_0
    invoke-direct {p0, p1, p3, v0, v9}, Lyads/cr0;-><init>(Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;)V

    return-object p0
.end method
