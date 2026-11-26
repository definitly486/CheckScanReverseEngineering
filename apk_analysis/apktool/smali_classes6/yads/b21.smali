.class public final Lyads/b21;
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

    iput-object p1, p0, Lyads/b21;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3

    invoke-static {p2}, Lyads/wq3;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "color_animator"

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lyads/u11;

    iget-object p0, p0, Lyads/b21;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->j2:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/w71;

    invoke-virtual {p0, p1, p2}, Lyads/w71;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/v71;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/u11;-><init>(Lyads/v71;)V

    return-object v0

    :cond_0
    const-string v1, "number_animator"

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lyads/v11;

    iget-object p0, p0, Lyads/b21;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->b5:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/gq1;

    invoke-virtual {p0, p1, p2}, Lyads/gq1;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/fq1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/v11;-><init>(Lyads/fq1;)V

    return-object v0

    :cond_1
    invoke-interface {p1}, Lyads/ys4;->b()Lyads/pv5;

    move-result-object v1

    invoke-interface {v1, v0}, Lyads/pv5;->get(Ljava/lang/String;)Lyads/xq3;

    move-result-object v1

    if-eqz v1, :cond_4

    instance-of v2, v1, Lyads/g21;

    if-eqz v2, :cond_2

    check-cast v1, Lyads/g21;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    iget-object p0, p0, Lyads/b21;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->v1:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/d21;

    invoke-virtual {p0, p1, v1, p2}, Lyads/d21;->a(Lyads/ys4;Lyads/g21;Lorg/json/JSONObject;)Lyads/w11;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "type"

    invoke-static {p2, p0, v0}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0

    :cond_4
    invoke-static {v0, p2}, Lyads/gt4;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lyads/ft4;

    move-result-object p0

    throw p0
.end method
