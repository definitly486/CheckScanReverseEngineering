.class public final Lyads/k61;
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

    iput-object p1, p0, Lyads/k61;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 4

    invoke-static {p2}, Lyads/wq3;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "set"

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lyads/i61;

    iget-object p0, p0, Lyads/k61;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->R1:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/c61;

    new-instance v1, Lyads/b61;

    iget-object p0, p0, Lyads/c61;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->U1:Lcl4;

    sget-object v2, Lyads/f61;->a:Lyads/st3;

    const-string v3, "items"

    invoke-static {p1, p2, v3, p0, v2}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lyads/st3;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Lyads/b61;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1}, Lyads/i61;-><init>(Lyads/b61;)V

    return-object v0

    :cond_0
    const-string v1, "change_bounds"

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lyads/h61;

    iget-object p0, p0, Lyads/k61;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->O1:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/w51;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lyads/w51;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/v51;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/h61;-><init>(Lyads/v51;)V

    return-object v0

    :cond_1
    invoke-interface {p1}, Lyads/ys4;->b()Lyads/pv5;

    move-result-object v1

    invoke-interface {v1, v0}, Lyads/pv5;->get(Ljava/lang/String;)Lyads/xq3;

    move-result-object v1

    if-eqz v1, :cond_4

    instance-of v2, v1, Lyads/p61;

    if-eqz v2, :cond_2

    check-cast v1, Lyads/p61;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    iget-object p0, p0, Lyads/k61;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->W1:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/m61;

    invoke-virtual {p0, p1, v1, p2}, Lyads/m61;->a(Lyads/ys4;Lyads/p61;Lorg/json/JSONObject;)Lyads/j61;

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
