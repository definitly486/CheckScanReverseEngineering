.class public final Lyads/iw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/qv5;


# instance fields
.field public final a:Lyads/tq3;


# direct methods
.method public constructor <init>(Lyads/tq3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/iw0;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 7

    check-cast p2, Lyads/jw0;

    new-instance v0, Lyads/fw0;

    iget-object v2, p2, Lyads/jw0;->a:Lyads/zw2;

    sget-object v5, Lyads/w36;->b:Lyads/s36;

    sget-object v6, Lyads/bt4;->e:Lnl3;

    const-string v4, "lifetime"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p1

    iget-object p3, p2, Lyads/jw0;->b:Lyads/zw2;

    sget-object v2, Lyads/w36;->c:Lyads/u36;

    const-string v4, "name"

    invoke-static {v1, p3, v3, v4, v2}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p3

    iget-object v2, p2, Lyads/jw0;->c:Lyads/zw2;

    iget-object p0, p0, Lyads/iw0;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->Z8:Lcl4;

    iget-object v6, p0, Lyads/tq3;->X8:Lcl4;

    const-string v4, "value"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/oe2;

    invoke-direct {v0, p0, p1, p3}, Lyads/fw0;-><init>(Lyads/oe2;Lyads/as2;Lyads/as2;)V

    return-object v0
.end method
