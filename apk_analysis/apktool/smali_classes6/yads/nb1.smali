.class public final Lyads/nb1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ln0;


# instance fields
.field public final a:Lyads/tq3;


# direct methods
.method public constructor <init>(Lyads/tq3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/nb1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lyads/cb1;

    iget-object p0, p0, Lyads/nb1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->s9:Lcl4;

    const-string v1, "div"

    invoke-static {p1, p2, v1, p0}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/br0;

    sget-object p1, Lyads/bt4;->e:Lnl3;

    sget-object v1, Lyads/uq3;->a:Lyads/l66;

    const-string v2, "state_id"

    invoke-static {p2, v2, p1, v1}, Lyads/wq3;->a(Lorg/json/JSONObject;Ljava/lang/String;Lnl3;Lyads/l66;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    invoke-direct {v0, p0, p1, p2}, Lyads/cb1;-><init>(Lyads/br0;J)V

    return-object v0
.end method
