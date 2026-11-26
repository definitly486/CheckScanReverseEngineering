.class public final Lyads/t01;
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

    iput-object p1, p0, Lyads/t01;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 9

    check-cast p2, Lyads/v01;

    new-instance v0, Lyads/q01;

    iget-object v1, p2, Lyads/v01;->a:Lyads/zw2;

    sget-object v2, Lyads/w36;->c:Lyads/u36;

    sget-object v3, Lyads/u01;->a:Lyads/l66;

    const-string v4, "path"

    invoke-static {p1, v1, p3, v4, v3}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/l66;)Lyads/as2;

    move-result-object v1

    iget-object v4, p2, Lyads/v01;->b:Lyads/zw2;

    iget-object p0, p0, Lyads/t01;->a:Lyads/tq3;

    iget-object v7, p0, Lyads/tq3;->Z8:Lcl4;

    iget-object v8, p0, Lyads/tq3;->X8:Lcl4;

    const-string v6, "value"

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v3 .. v8}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/oe2;

    iget-object p1, p2, Lyads/v01;->c:Lyads/zw2;

    const-string p2, "variable_name"

    invoke-static {v3, p1, v5, p2, v2}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p1

    invoke-direct {v0, p0, v1, p1}, Lyads/q01;-><init>(Lyads/oe2;Lyads/as2;Lyads/as2;)V

    return-object v0
.end method
