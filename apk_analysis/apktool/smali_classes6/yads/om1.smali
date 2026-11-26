.class public final Lyads/om1;
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

    iput-object p1, p0, Lyads/om1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 5

    invoke-static {p2}, Lyads/wq3;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lyads/ys4;->b()Lyads/pv5;

    move-result-object v1

    invoke-interface {v1, v0}, Lyads/pv5;->get(Ljava/lang/String;)Lyads/xq3;

    move-result-object v1

    instance-of v2, v1, Lyads/ym1;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lyads/ym1;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const-string v2, "expression"

    const-string v4, "regex"

    if-eqz v1, :cond_3

    instance-of v0, v1, Lyads/xm1;

    if-eqz v0, :cond_1

    move-object v0, v4

    goto :goto_1

    :cond_1
    instance-of v0, v1, Lyads/wm1;

    if-eqz v0, :cond_2

    move-object v0, v2

    goto :goto_1

    :cond_2
    invoke-static {}, Lme0;->e()V

    return-object v3

    :cond_3
    :goto_1
    invoke-static {v0, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v0, Lyads/xm1;

    iget-object p0, p0, Lyads/om1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->y4:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/sm1;

    if-eqz v1, :cond_6

    instance-of v2, v1, Lyads/xm1;

    if-eqz v2, :cond_4

    check-cast v1, Lyads/xm1;

    iget-object v3, v1, Lyads/xm1;->a:Lyads/vm1;

    goto :goto_2

    :cond_4
    instance-of v2, v1, Lyads/wm1;

    if-eqz v2, :cond_5

    check-cast v1, Lyads/wm1;

    iget-object v3, v1, Lyads/wm1;->a:Lyads/mm1;

    goto :goto_2

    :cond_5
    invoke-static {}, Lme0;->e()V

    return-object v3

    :cond_6
    :goto_2
    check-cast v3, Lyads/vm1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v3, p2}, Lyads/sm1;->a(Lyads/ys4;Lyads/vm1;Lorg/json/JSONObject;)Lyads/vm1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/xm1;-><init>(Lyads/vm1;)V

    return-object v0

    :cond_7
    invoke-static {v0, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v0, Lyads/wm1;

    iget-object p0, p0, Lyads/om1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->v4:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/jm1;

    if-eqz v1, :cond_a

    instance-of v2, v1, Lyads/xm1;

    if-eqz v2, :cond_8

    check-cast v1, Lyads/xm1;

    iget-object v3, v1, Lyads/xm1;->a:Lyads/vm1;

    goto :goto_3

    :cond_8
    instance-of v2, v1, Lyads/wm1;

    if-eqz v2, :cond_9

    check-cast v1, Lyads/wm1;

    iget-object v3, v1, Lyads/wm1;->a:Lyads/mm1;

    goto :goto_3

    :cond_9
    invoke-static {}, Lme0;->e()V

    return-object v3

    :cond_a
    :goto_3
    check-cast v3, Lyads/mm1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v3, p2}, Lyads/jm1;->a(Lyads/ys4;Lyads/mm1;Lorg/json/JSONObject;)Lyads/mm1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/wm1;-><init>(Lyads/mm1;)V

    return-object v0

    :cond_b
    const-string p0, "type"

    invoke-static {p2, p0, v0}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0
.end method
