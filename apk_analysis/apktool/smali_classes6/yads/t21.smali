.class public final Lyads/t21;
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

    iput-object p1, p0, Lyads/t21;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 4

    invoke-static {p2}, Lyads/wq3;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x1bc62

    if-eq v1, v2, :cond_6

    const v2, 0x2fd67c

    if-eq v1, v2, :cond_4

    const v2, 0x683094a

    if-eq v1, v2, :cond_2

    const v2, 0x6873db1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "slide"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lyads/r21;

    iget-object p0, p0, Lyads/t21;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->W6:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/q12;

    invoke-virtual {p0, p1, p2}, Lyads/q12;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/p12;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/r21;-><init>(Lyads/p12;)V

    return-object v0

    :cond_2
    const-string v1, "scale"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Lyads/p21;

    iget-object p0, p0, Lyads/t21;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->s6:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/oy1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lyads/oy1;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/ny1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/p21;-><init>(Lyads/ny1;)V

    return-object v0

    :cond_4
    const-string v1, "fade"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    new-instance v0, Lyads/o21;

    iget-object p0, p0, Lyads/t21;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->d3:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/pd1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lyads/pd1;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/od1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/o21;-><init>(Lyads/od1;)V

    return-object v0

    :cond_6
    const-string v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :goto_0
    invoke-interface {p1}, Lyads/ys4;->b()Lyads/pv5;

    move-result-object v1

    invoke-interface {v1, v0}, Lyads/pv5;->get(Ljava/lang/String;)Lyads/xq3;

    move-result-object v1

    if-eqz v1, :cond_9

    instance-of v2, v1, Lyads/a31;

    if-eqz v2, :cond_7

    check-cast v1, Lyads/a31;

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_8

    iget-object p0, p0, Lyads/t21;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->B1:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/v21;

    invoke-virtual {p0, p1, v1, p2}, Lyads/v21;->a(Lyads/ys4;Lyads/a31;Lorg/json/JSONObject;)Lyads/s21;

    move-result-object p0

    return-object p0

    :cond_8
    const-string p0, "type"

    invoke-static {p2, p0, v0}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0

    :cond_9
    invoke-static {v0, p2}, Lyads/gt4;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lyads/ft4;

    move-result-object p0

    throw p0

    :cond_a
    new-instance v0, Lyads/q21;

    iget-object p0, p0, Lyads/t21;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->w1:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/j21;

    new-instance v1, Lyads/i21;

    iget-object p0, p0, Lyads/j21;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->z1:Lcl4;

    sget-object v2, Lyads/m21;->a:Lyads/st3;

    const-string v3, "items"

    invoke-static {p1, p2, v3, p0, v2}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lyads/st3;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Lyads/i21;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1}, Lyads/q21;-><init>(Lyads/i21;)V

    return-object v0
.end method
