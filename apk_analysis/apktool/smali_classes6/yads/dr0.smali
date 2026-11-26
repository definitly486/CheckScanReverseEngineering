.class public final Lyads/dr0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ln0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 8

    new-instance p0, Lyads/cr0;

    sget-object v3, Lyads/w36;->b:Lyads/s36;

    sget-object v4, Lyads/bt4;->e:Lnl3;

    sget-object v5, Lyads/gr0;->e:Lyads/l66;

    sget-object v6, Lyads/gr0;->a:Lyads/xr2;

    const-string v2, "bottom"

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p1

    if-nez p1, :cond_0

    move-object p1, v6

    :cond_0
    sget-object v5, Lyads/gr0;->f:Lyads/l66;

    sget-object v6, Lyads/gr0;->b:Lyads/xr2;

    const-string v2, "left"

    invoke-static/range {v0 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p2

    if-nez p2, :cond_1

    move-object p2, v6

    :cond_1
    sget-object v5, Lyads/gr0;->g:Lyads/l66;

    sget-object v6, Lyads/gr0;->c:Lyads/xr2;

    const-string v2, "right"

    invoke-static/range {v0 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v7, v6

    goto :goto_0

    :cond_2
    move-object v7, v2

    :goto_0
    sget-object v5, Lyads/gr0;->h:Lyads/l66;

    sget-object v6, Lyads/gr0;->d:Lyads/xr2;

    const-string v2, "top"

    invoke-static/range {v0 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v6, v0

    :goto_1
    invoke-direct {p0, p1, p2, v7, v6}, Lyads/cr0;-><init>(Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;)V

    return-object p0
.end method
