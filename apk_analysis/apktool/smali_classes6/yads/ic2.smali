.class public final Lyads/ic2;
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

    iput-object p1, p0, Lyads/ic2;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 61
    check-cast p2, Lyads/vc2;

    invoke-virtual {p0, p2}, Lyads/ic2;->a(Lyads/vc2;)Lyads/fc2;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/vc2;)Lyads/fc2;
    .locals 1

    instance-of v0, p1, Lyads/uc2;

    if-eqz v0, :cond_0

    new-instance p1, Lyads/ec2;

    iget-object p0, p0, Lyads/ic2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->K8:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/rc2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/oc2;

    invoke-direct {p0}, Lyads/oc2;-><init>()V

    invoke-direct {p1, p0}, Lyads/ec2;-><init>(Lyads/oc2;)V

    return-object p1

    :cond_0
    instance-of p1, p1, Lyads/tc2;

    if-eqz p1, :cond_1

    new-instance p1, Lyads/dc2;

    iget-object p0, p0, Lyads/ic2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->H8:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/mc2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/jc2;

    invoke-direct {p0}, Lyads/jc2;-><init>()V

    invoke-direct {p1, p0}, Lyads/dc2;-><init>(Lyads/jc2;)V

    return-object p1

    :cond_1
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
