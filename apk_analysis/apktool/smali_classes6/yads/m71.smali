.class public final Lyads/m71;
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

    iput-object p1, p0, Lyads/m71;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 10

    check-cast p2, Lyads/t71;

    new-instance v0, Lyads/j71;

    iget-object v1, p2, Lyads/t71;->a:Lyads/zw2;

    sget-object v2, Lyads/w36;->g:Lyads/t36;

    const-string v3, "data"

    invoke-static {p1, v1, p3, v3, v2}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v1

    iget-object v2, p2, Lyads/t71;->b:Lyads/zw2;

    const-string v3, "data_element_name"

    invoke-static {p1, v2, p3, v3}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "it"

    :cond_0
    iget-object v4, p2, Lyads/t71;->c:Lyads/zw2;

    iget-object p0, p0, Lyads/m71;->a:Lyads/tq3;

    iget-object v7, p0, Lyads/tq3;->i2:Lcl4;

    iget-object v8, p0, Lyads/tq3;->g2:Lcl4;

    sget-object v9, Lyads/n71;->a:Lyads/st3;

    const-string v6, "prototypes"

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v3 .. v9}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;Lyads/st3;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lyads/j71;-><init>(Lyads/as2;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
