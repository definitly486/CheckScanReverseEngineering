.class public final Lyads/bf1;
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

.method public static b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/af1;
    .locals 8

    new-instance v0, Lyads/af1;

    sget-object v4, Lyads/ef1;->b:Lyads/m36;

    sget-object v5, Lyads/g12;->d:Lnl3;

    sget-object v7, Lyads/ef1;->a:Lyads/xr2;

    sget-object v1, Lyads/oq3;->a:Lyads/y50;

    sget-object v6, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "unit"

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v7, p0

    :goto_0
    sget-object v4, Lyads/w36;->b:Lyads/s36;

    sget-object v5, Lyads/bt4;->e:Lnl3;

    sget-object v6, Lyads/ef1;->c:Lyads/l66;

    const-string v3, "value"

    invoke-static/range {v1 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p0

    invoke-direct {v0, v7, p0}, Lyads/af1;-><init>(Lyads/as2;Lyads/as2;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2}, Lyads/bf1;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/af1;

    move-result-object p0

    return-object p0
.end method
