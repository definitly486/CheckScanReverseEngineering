.class public final Lyads/ml1;
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

    iput-object p1, p0, Lyads/ml1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 4

    invoke-static {p2}, Lyads/wq3;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x65b3d6e

    const-string v3, "raw_text_variable"

    if-eq v1, v2, :cond_4

    const v2, 0x1775c611

    if-eq v1, v2, :cond_2

    const v2, 0x224bf011

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "currency"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lyads/hl1;

    iget-object p0, p0, Lyads/ml1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->y2:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ga1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/fa1;

    sget-object v1, Lyads/w36;->c:Lyads/u36;

    const-string v2, "locale"

    invoke-static {p1, p2, v2, v1}, Lyads/oq3;->b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p1

    invoke-static {v3, p2}, Lyads/wq3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lyads/fa1;-><init>(Ljava/lang/String;Lyads/as2;)V

    invoke-direct {v0, p0}, Lyads/hl1;-><init>(Lyads/fa1;)V

    return-object v0

    :cond_2
    const-string v1, "fixed_length"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Lyads/il1;

    iget-object p0, p0, Lyads/ml1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->p3:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/qe1;

    invoke-virtual {p0, p1, p2}, Lyads/qe1;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/pe1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/il1;-><init>(Lyads/pe1;)V

    return-object v0

    :cond_4
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_0
    invoke-interface {p1}, Lyads/ys4;->b()Lyads/pv5;

    move-result-object v1

    invoke-interface {v1, v0}, Lyads/pv5;->get(Ljava/lang/String;)Lyads/xq3;

    move-result-object v1

    if-eqz v1, :cond_7

    instance-of v2, v1, Lyads/sl1;

    if-eqz v2, :cond_5

    check-cast v1, Lyads/sl1;

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_6

    iget-object p0, p0, Lyads/ml1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->t4:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ol1;

    invoke-virtual {p0, p1, v1, p2}, Lyads/ol1;->a(Lyads/ys4;Lyads/sl1;Lorg/json/JSONObject;)Lyads/kl1;

    move-result-object p0

    return-object p0

    :cond_6
    const-string p0, "type"

    invoke-static {p2, p0, v0}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0

    :cond_7
    invoke-static {v0, p2}, Lyads/gt4;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lyads/ft4;

    move-result-object p0

    throw p0

    :cond_8
    new-instance p1, Lyads/jl1;

    iget-object p0, p0, Lyads/ml1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->F5:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/lu1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/ku1;

    invoke-static {v3, p2}, Lyads/wq3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lyads/ku1;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p0}, Lyads/jl1;-><init>(Lyads/ku1;)V

    return-object p1
.end method
