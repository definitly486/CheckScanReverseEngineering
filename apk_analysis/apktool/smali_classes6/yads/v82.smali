.class public final Lyads/v82;
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
    .locals 7

    check-cast p2, Lyads/cb2;

    new-instance p0, Lyads/u72;

    iget-object v0, p2, Lyads/cb2;->a:Lyads/zw2;

    sget-object v1, Lyads/w36;->c:Lyads/u36;

    const-string v2, "description"

    invoke-static {p1, v0, p3, v2, v1}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v0

    iget-object v2, p2, Lyads/cb2;->b:Lyads/zw2;

    sget-object v5, Lyads/t72;->d:Lnl3;

    sget-object v6, Lyads/uq3;->a:Lyads/l66;

    const-string v4, "type"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lnl3;Lyads/l66;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/t72;

    if-nez p1, :cond_0

    sget-object p1, Lyads/w82;->a:Lyads/t72;

    :cond_0
    invoke-direct {p0, v0, p1}, Lyads/u72;-><init>(Lyads/as2;Lyads/t72;)V

    return-object p0
.end method
