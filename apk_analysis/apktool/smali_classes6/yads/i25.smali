.class public final Lyads/i25;
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

    iput-object p1, p0, Lyads/i25;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p2, Lyads/k25;

    invoke-virtual {p0, p1, p2, p3}, Lyads/i25;->a(Lyads/ys4;Lyads/k25;Lorg/json/JSONObject;)Lyads/f25;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/k25;Lorg/json/JSONObject;)Lyads/f25;
    .locals 10

    new-instance v0, Lyads/f25;

    iget-object v1, p2, Lyads/k25;->a:Lyads/zw2;

    sget-object v2, Lyads/w36;->c:Lyads/u36;

    const-string v3, "get"

    invoke-static {p1, v1, p3, v3, v2}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v1

    iget-object v2, p2, Lyads/k25;->b:Lyads/zw2;

    const-string v3, "name"

    invoke-static {v2, p3, v3}, Lyads/qq3;->a(Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p2, Lyads/k25;->c:Lyads/zw2;

    const-string v4, "new_value_variable_name"

    invoke-static {p1, v3, p3, v4}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    sget-object v3, Lyads/j25;->a:Lyads/m36;

    const-string v3, "new_value"

    :cond_0
    iget-object v5, p2, Lyads/k25;->d:Lyads/zw2;

    iget-object p0, p0, Lyads/i25;->a:Lyads/tq3;

    iget-object v8, p0, Lyads/tq3;->m1:Lcl4;

    iget-object v9, p0, Lyads/tq3;->k1:Lcl4;

    const-string v7, "set"

    move-object v4, p1

    move-object v6, p3

    invoke-static/range {v4 .. v9}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object p0

    iget-object v5, p2, Lyads/k25;->e:Lyads/zw2;

    sget-object v8, Lyads/j25;->a:Lyads/m36;

    sget-object v9, Lyads/fd1;->d:Lnl3;

    const-string v7, "value_type"

    invoke-static/range {v4 .. v9}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v5

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lyads/f25;-><init>(Lyads/as2;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lyads/as2;)V

    return-object v0
.end method
