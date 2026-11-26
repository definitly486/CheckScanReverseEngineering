.class public final Lyads/rs0;
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

    check-cast p2, Lyads/ss0;

    new-instance p0, Lyads/os0;

    iget-object v1, p2, Lyads/ss0;->a:Lyads/zw2;

    sget-object v4, Lyads/w36;->b:Lyads/s36;

    sget-object v5, Lyads/bt4;->e:Lnl3;

    const-string v3, "index"

    move-object v0, p1

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p1

    iget-object p2, p2, Lyads/ss0;->b:Lyads/zw2;

    sget-object p3, Lyads/w36;->c:Lyads/u36;

    const-string v1, "variable_name"

    invoke-static {v0, p2, v2, v1, p3}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lyads/os0;-><init>(Lyads/as2;Lyads/as2;)V

    return-object p0
.end method
