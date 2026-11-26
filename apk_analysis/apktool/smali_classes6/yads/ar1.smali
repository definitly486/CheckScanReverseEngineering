.class public final Lyads/ar1;
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

    iput-object p1, p0, Lyads/ar1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 67
    check-cast p2, Lyads/pr1;

    invoke-virtual {p0, p1, p2, p3}, Lyads/ar1;->a(Lyads/ys4;Lyads/pr1;Lorg/json/JSONObject;)Lyads/xq1;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/pr1;Lorg/json/JSONObject;)Lyads/xq1;
    .locals 1

    instance-of v0, p2, Lyads/or1;

    if-eqz v0, :cond_0

    new-instance v0, Lyads/wq1;

    iget-object p0, p0, Lyads/ar1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->p5:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/kr1;

    check-cast p2, Lyads/or1;

    iget-object p2, p2, Lyads/or1;->a:Lyads/mr1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p3}, Lyads/kr1;->a(Lyads/ys4;Lyads/mr1;Lorg/json/JSONObject;)Lyads/hr1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/wq1;-><init>(Lyads/hr1;)V

    return-object v0

    :cond_0
    instance-of v0, p2, Lyads/nr1;

    if-eqz v0, :cond_1

    new-instance v0, Lyads/vq1;

    iget-object p0, p0, Lyads/ar1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->m5:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/er1;

    check-cast p2, Lyads/nr1;

    iget-object p2, p2, Lyads/nr1;->a:Lyads/gr1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p3}, Lyads/er1;->a(Lyads/ys4;Lyads/gr1;Lorg/json/JSONObject;)Lyads/br1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/vq1;-><init>(Lyads/br1;)V

    return-object v0

    :cond_1
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
