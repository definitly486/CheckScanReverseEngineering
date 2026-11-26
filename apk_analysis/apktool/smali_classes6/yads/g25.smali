.class public final Lyads/g25;
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

    iput-object p1, p0, Lyads/g25;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyads/g25;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/f25;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/f25;
    .locals 11

    new-instance v0, Lyads/f25;

    sget-object v1, Lyads/w36;->c:Lyads/u36;

    const-string v2, "get"

    invoke-static {p1, p2, v2, v1}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v1

    const-string v2, "name"

    invoke-static {v2, p2}, Lyads/wq3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "new_value_variable_name"

    invoke-static {p1, p2, v3}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    sget-object v3, Lyads/j25;->a:Lyads/m36;

    const-string v3, "new_value"

    :cond_0
    iget-object p0, p0, Lyads/g25;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->k1:Lcl4;

    const-string v4, "set"

    invoke-static {p1, p2, v4, p0}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v4

    sget-object v8, Lyads/j25;->a:Lyads/m36;

    sget-object v9, Lyads/fd1;->d:Lnl3;

    sget-object v10, Lyads/uq3;->a:Lyads/l66;

    const-string v7, "value_type"

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v5 .. v10}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lyads/f25;-><init>(Lyads/as2;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lyads/as2;)V

    return-object v0
.end method
