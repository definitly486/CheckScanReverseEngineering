.class public final Lyads/r01;
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

    iput-object p1, p0, Lyads/r01;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 7

    new-instance v0, Lyads/q01;

    sget-object v4, Lyads/w36;->c:Lyads/u36;

    sget-object v6, Lyads/u01;->a:Lyads/l66;

    sget-object v1, Lyads/oq3;->a:Lyads/y50;

    sget-object v5, Lyads/uq3;->b:Lnl3;

    const-string v3, "path"

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p1

    iget-object p0, p0, Lyads/r01;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->X8:Lcl4;

    const-string p2, "value"

    invoke-static {v1, v2, p2, p0}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/oe2;

    const-string p2, "variable_name"

    invoke-static {v1, v2, p2, v4}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lyads/q01;-><init>(Lyads/oe2;Lyads/as2;Lyads/as2;)V

    return-object v0
.end method
