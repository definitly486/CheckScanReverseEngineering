.class public final Lyads/pb1;
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

    iput-object p1, p0, Lyads/pb1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 7

    check-cast p2, Lyads/sb1;

    new-instance v0, Lyads/cb1;

    iget-object v2, p2, Lyads/sb1;->a:Lyads/zw2;

    iget-object p0, p0, Lyads/pb1;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->u9:Lcl4;

    iget-object v6, p0, Lyads/tq3;->s9:Lcl4;

    const-string v4, "div"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/br0;

    iget-object p1, p2, Lyads/sb1;->b:Lyads/zw2;

    sget-object p2, Lyads/bt4;->e:Lnl3;

    sget-object p3, Lyads/uq3;->a:Lyads/l66;

    const-string v1, "state_id"

    invoke-static {p1, v3, v1, p2, p3}, Lyads/qq3;->a(Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lnl3;Lyads/l66;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    invoke-direct {v0, p0, p1, p2}, Lyads/cb1;-><init>(Lyads/br0;J)V

    return-object v0
.end method
