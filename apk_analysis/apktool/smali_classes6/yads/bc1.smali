.class public final Lyads/bc1;
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
    .locals 13

    new-instance p0, Lyads/ac1;

    sget-object v3, Lyads/ec1;->b:Lyads/m36;

    sget-object v4, Lyads/g12;->d:Lnl3;

    sget-object v6, Lyads/ec1;->a:Lyads/xr2;

    sget-object v0, Lyads/oq3;->a:Lyads/y50;

    sget-object v5, Lyads/uq3;->a:Lyads/l66;

    const-string v2, "unit"

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v6, p1

    :goto_0
    sget-object v10, Lyads/w36;->d:Lyads/r36;

    sget-object v11, Lyads/bt4;->d:Lnl3;

    const-string v9, "value"

    move-object v7, v0

    move-object v8, v1

    move-object v12, v5

    invoke-static/range {v7 .. v12}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, v6, p1}, Lyads/ac1;-><init>(Lyads/as2;Lyads/as2;)V

    return-object p0
.end method
