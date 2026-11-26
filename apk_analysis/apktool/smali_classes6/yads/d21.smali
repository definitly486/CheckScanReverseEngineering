.class public final Lyads/d21;
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

    iput-object p1, p0, Lyads/d21;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 61
    check-cast p2, Lyads/g21;

    invoke-virtual {p0, p1, p2, p3}, Lyads/d21;->a(Lyads/ys4;Lyads/g21;Lorg/json/JSONObject;)Lyads/w11;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/g21;Lorg/json/JSONObject;)Lyads/w11;
    .locals 1

    instance-of v0, p2, Lyads/e21;

    if-eqz v0, :cond_0

    new-instance v0, Lyads/u11;

    iget-object p0, p0, Lyads/d21;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->l2:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/y71;

    check-cast p2, Lyads/e21;

    iget-object p2, p2, Lyads/e21;->a:Lyads/a81;

    invoke-virtual {p0, p1, p2, p3}, Lyads/y71;->a(Lyads/ys4;Lyads/a81;Lorg/json/JSONObject;)Lyads/v71;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/u11;-><init>(Lyads/v71;)V

    return-object v0

    :cond_0
    instance-of v0, p2, Lyads/f21;

    if-eqz v0, :cond_1

    new-instance v0, Lyads/v11;

    iget-object p0, p0, Lyads/d21;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->d5:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/iq1;

    check-cast p2, Lyads/f21;

    iget-object p2, p2, Lyads/f21;->a:Lyads/kq1;

    invoke-virtual {p0, p1, p2, p3}, Lyads/iq1;->a(Lyads/ys4;Lyads/kq1;Lorg/json/JSONObject;)Lyads/fq1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/v11;-><init>(Lyads/fq1;)V

    return-object v0

    :cond_1
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
