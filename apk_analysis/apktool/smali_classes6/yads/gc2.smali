.class public final Lyads/gc2;
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

    iput-object p1, p0, Lyads/gc2;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 2

    invoke-static {p2}, Lyads/wq3;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "non_modal"

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lyads/ec2;

    iget-object p0, p0, Lyads/gc2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->I8:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/pc2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/oc2;

    invoke-direct {p0}, Lyads/oc2;-><init>()V

    invoke-direct {p1, p0}, Lyads/ec2;-><init>(Lyads/oc2;)V

    return-object p1

    :cond_0
    const-string v1, "modal"

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Lyads/dc2;

    iget-object p0, p0, Lyads/gc2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->F8:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/kc2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/jc2;

    invoke-direct {p0}, Lyads/jc2;-><init>()V

    invoke-direct {p1, p0}, Lyads/dc2;-><init>(Lyads/jc2;)V

    return-object p1

    :cond_1
    invoke-interface {p1}, Lyads/ys4;->b()Lyads/pv5;

    move-result-object p1

    invoke-interface {p1, v0}, Lyads/pv5;->get(Ljava/lang/String;)Lyads/xq3;

    move-result-object p1

    if-eqz p1, :cond_4

    instance-of v1, p1, Lyads/vc2;

    if-eqz v1, :cond_2

    check-cast p1, Lyads/vc2;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    iget-object p0, p0, Lyads/gc2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->N8:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ic2;

    invoke-virtual {p0, p1}, Lyads/ic2;->a(Lyads/vc2;)Lyads/fc2;

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
