.class public final Lyads/o71;
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

    iput-object p1, p0, Lyads/o71;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 9

    new-instance v0, Lyads/i71;

    iget-object p0, p0, Lyads/o71;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->s9:Lcl4;

    const-string v1, "div"

    invoke-static {p1, p2, v1, p0}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/br0;

    sget-object v1, Lyads/w36;->c:Lyads/u36;

    const-string v2, "id"

    invoke-static {p1, p2, v2, v1}, Lyads/oq3;->b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v1

    sget-object v5, Lyads/w36;->a:Lyads/o36;

    sget-object v6, Lyads/bt4;->c:Lnl3;

    sget-object v8, Lyads/r71;->a:Lyads/xr2;

    sget-object v7, Lyads/uq3;->a:Lyads/l66;

    const-string v4, "selector"

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v2 .. v8}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v8, p1

    :goto_0
    invoke-direct {v0, p0, v1, v8}, Lyads/i71;-><init>(Lyads/br0;Lyads/as2;Lyads/as2;)V

    return-object v0
.end method
