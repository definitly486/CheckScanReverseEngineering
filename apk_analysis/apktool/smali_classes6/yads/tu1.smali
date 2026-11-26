.class public final Lyads/tu1;
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
    .locals 7

    new-instance p0, Lyads/su1;

    sget-object v3, Lyads/wu1;->b:Lyads/m36;

    sget-object v4, Lyads/g12;->d:Lnl3;

    sget-object v6, Lyads/wu1;->a:Lyads/xr2;

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
    sget-object p1, Lyads/w36;->b:Lyads/s36;

    sget-object p2, Lyads/bt4;->e:Lnl3;

    const-string v2, "value"

    invoke-static {v0, v1, v2, p1, p2}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, v6, p1}, Lyads/su1;-><init>(Lyads/as2;Lyads/as2;)V

    return-object p0
.end method
