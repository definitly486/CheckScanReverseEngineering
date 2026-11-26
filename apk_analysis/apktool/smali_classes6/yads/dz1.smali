.class public final Lyads/dz1;
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
    .locals 3

    check-cast p2, Lyads/ez1;

    new-instance p0, Lyads/ty1;

    iget-object v0, p2, Lyads/ez1;->a:Lyads/zw2;

    sget-object v1, Lyads/w36;->c:Lyads/u36;

    const-string v2, "text"

    invoke-static {p1, v0, p3, v2, v1}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v0

    iget-object p2, p2, Lyads/ez1;->b:Lyads/zw2;

    const-string v2, "value"

    invoke-static {p1, p2, p3, v2, v1}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lyads/ty1;-><init>(Lyads/as2;Lyads/as2;)V

    return-object p0
.end method
