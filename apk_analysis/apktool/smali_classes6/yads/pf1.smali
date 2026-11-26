.class public final Lyads/pf1;
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
    .locals 6

    check-cast p2, Lyads/qf1;

    new-instance v0, Lyads/gf1;

    iget-object p0, p2, Lyads/qf1;->a:Lyads/zw2;

    sget-object v1, Lyads/w36;->c:Lyads/u36;

    const-string v2, "down"

    invoke-static {p1, p0, p3, v2, v1}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p0

    iget-object v2, p2, Lyads/qf1;->b:Lyads/zw2;

    const-string v3, "forward"

    invoke-static {p1, v2, p3, v3, v1}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v2

    iget-object v3, p2, Lyads/qf1;->c:Lyads/zw2;

    const-string v4, "left"

    invoke-static {p1, v3, p3, v4, v1}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v3

    iget-object v4, p2, Lyads/qf1;->d:Lyads/zw2;

    const-string v5, "right"

    invoke-static {p1, v4, p3, v5, v1}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v4

    iget-object p2, p2, Lyads/qf1;->e:Lyads/zw2;

    const-string v5, "up"

    invoke-static {p1, p2, p3, v5, v1}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lyads/gf1;-><init>(Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;)V

    return-object v0
.end method
