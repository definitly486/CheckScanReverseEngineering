.class public final Lyads/z42;
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

    iput-object p1, p0, Lyads/z42;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 4

    invoke-static {p2}, Lyads/wq3;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lyads/ys4;->b()Lyads/pv5;

    move-result-object p1

    invoke-interface {p1, v0}, Lyads/pv5;->get(Ljava/lang/String;)Lyads/xq3;

    move-result-object p1

    instance-of v1, p1, Lyads/i52;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast p1, Lyads/i52;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    const-string v1, "dashed"

    const-string v3, "solid"

    if-eqz p1, :cond_3

    instance-of v0, p1, Lyads/h52;

    if-eqz v0, :cond_1

    move-object v0, v3

    goto :goto_1

    :cond_1
    instance-of v0, p1, Lyads/g52;

    if-eqz v0, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_2
    invoke-static {}, Lme0;->e()V

    return-object v2

    :cond_3
    :goto_1
    invoke-static {v0, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance p2, Lyads/h52;

    iget-object p0, p0, Lyads/z42;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->y7:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/d52;

    if-eqz p1, :cond_6

    instance-of v0, p1, Lyads/h52;

    if-eqz v0, :cond_4

    check-cast p1, Lyads/h52;

    iget-object v2, p1, Lyads/h52;->a:Lyads/f52;

    goto :goto_2

    :cond_4
    instance-of v0, p1, Lyads/g52;

    if-eqz v0, :cond_5

    check-cast p1, Lyads/g52;

    iget-object v2, p1, Lyads/g52;->a:Lyads/x42;

    goto :goto_2

    :cond_5
    invoke-static {}, Lme0;->e()V

    return-object v2

    :cond_6
    :goto_2
    check-cast v2, Lyads/f52;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/f52;

    invoke-direct {p0}, Lyads/f52;-><init>()V

    invoke-direct {p2, p0}, Lyads/h52;-><init>(Lyads/f52;)V

    return-object p2

    :cond_7
    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance p2, Lyads/g52;

    iget-object p0, p0, Lyads/z42;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->v7:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/v42;

    if-eqz p1, :cond_a

    instance-of v0, p1, Lyads/h52;

    if-eqz v0, :cond_8

    check-cast p1, Lyads/h52;

    iget-object v2, p1, Lyads/h52;->a:Lyads/f52;

    goto :goto_3

    :cond_8
    instance-of v0, p1, Lyads/g52;

    if-eqz v0, :cond_9

    check-cast p1, Lyads/g52;

    iget-object v2, p1, Lyads/g52;->a:Lyads/x42;

    goto :goto_3

    :cond_9
    invoke-static {}, Lme0;->e()V

    return-object v2

    :cond_a
    :goto_3
    check-cast v2, Lyads/x42;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/x42;

    invoke-direct {p0}, Lyads/x42;-><init>()V

    invoke-direct {p2, p0}, Lyads/g52;-><init>(Lyads/x42;)V

    return-object p2

    :cond_b
    const-string p0, "type"

    invoke-static {p2, p0, v0}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0
.end method
