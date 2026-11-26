.class public final Lyads/z02;
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

    iput-object p1, p0, Lyads/z02;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 8

    invoke-static {p2}, Lyads/wq3;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lyads/ys4;->b()Lyads/pv5;

    move-result-object v1

    invoke-interface {v1, v0}, Lyads/pv5;->get(Ljava/lang/String;)Lyads/xq3;

    move-result-object v1

    instance-of v2, v1, Lyads/e12;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lyads/e12;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const-string v2, "wrap_content"

    const-string v4, "match_parent"

    const-string v5, "fixed"

    if-eqz v1, :cond_4

    instance-of v0, v1, Lyads/b12;

    if-eqz v0, :cond_1

    move-object v0, v5

    goto :goto_1

    :cond_1
    instance-of v0, v1, Lyads/c12;

    if-eqz v0, :cond_2

    move-object v0, v4

    goto :goto_1

    :cond_2
    instance-of v0, v1, Lyads/d12;

    if-eqz v0, :cond_3

    move-object v0, v2

    goto :goto_1

    :cond_3
    invoke-static {}, Lme0;->e()V

    return-object v3

    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x5cee774

    if-eq v6, v7, :cond_8

    const v5, 0x1476c184

    if-eq v6, v5, :cond_6

    const v2, 0x529e9464

    if-ne v6, v2, :cond_a

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v0, Lyads/c12;

    iget-object p0, p0, Lyads/z02;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->T4:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/rp1;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lyads/e12;->a()Ljava/lang/Object;

    move-result-object v3

    :cond_5
    check-cast v3, Lyads/up1;

    invoke-virtual {p0, p1, v3, p2}, Lyads/rp1;->a(Lyads/ys4;Lyads/up1;Lorg/json/JSONObject;)Lyads/up1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/c12;-><init>(Lyads/up1;)V

    return-object v0

    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v0, Lyads/d12;

    iget-object p0, p0, Lyads/z02;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->q9:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/gj2;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lyads/e12;->a()Ljava/lang/Object;

    move-result-object v3

    :cond_7
    check-cast v3, Lyads/ij2;

    invoke-virtual {p0, p1, v3, p2}, Lyads/gj2;->a(Lyads/ys4;Lyads/ij2;Lorg/json/JSONObject;)Lyads/ij2;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/d12;-><init>(Lyads/ij2;)V

    return-object v0

    :cond_8
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v0, Lyads/b12;

    iget-object p0, p0, Lyads/z02;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->w3:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/cf1;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lyads/e12;->a()Ljava/lang/Object;

    move-result-object v3

    :cond_9
    check-cast v3, Lyads/ff1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v3, p2}, Lyads/cf1;->a(Lyads/ys4;Lyads/ff1;Lorg/json/JSONObject;)Lyads/ff1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/b12;-><init>(Lyads/ff1;)V

    return-object v0

    :cond_a
    const-string p0, "type"

    invoke-static {p2, p0, v0}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0
.end method
