.class public final Lyads/os1;
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

    iput-object p1, p0, Lyads/os1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 133
    check-cast p2, Lyads/ss1;

    invoke-virtual {p0, p1, p2, p3}, Lyads/os1;->a(Lyads/ys4;Lyads/ss1;Lorg/json/JSONObject;)Lyads/ls1;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/ss1;Lorg/json/JSONObject;)Lyads/ls1;
    .locals 8

    instance-of v0, p2, Lyads/rs1;

    if-eqz v0, :cond_0

    new-instance v0, Lyads/ks1;

    iget-object p0, p0, Lyads/os1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->j5:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/tq1;

    check-cast p2, Lyads/rs1;

    iget-object p2, p2, Lyads/rs1;->a:Lyads/uq1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lyads/qq1;

    iget-object v3, p2, Lyads/uq1;->a:Lyads/zw2;

    iget-object p0, p0, Lyads/tq1;->a:Lyads/tq3;

    iget-object v6, p0, Lyads/tq3;->E5:Lcl4;

    iget-object v7, p0, Lyads/tq3;->C5:Lcl4;

    const-string v5, "page_width"

    move-object v2, p1

    move-object v4, p3

    invoke-static/range {v2 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/eu1;

    invoke-direct {v1, p0}, Lyads/qq1;-><init>(Lyads/eu1;)V

    invoke-direct {v0, v1}, Lyads/ks1;-><init>(Lyads/qq1;)V

    return-object v0

    :cond_0
    move-object v2, p1

    move-object v4, p3

    instance-of p1, p2, Lyads/ps1;

    if-eqz p1, :cond_1

    new-instance p1, Lyads/is1;

    iget-object p0, p0, Lyads/os1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->X4:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/yp1;

    check-cast p2, Lyads/ps1;

    iget-object p2, p2, Lyads/ps1;->a:Lyads/zp1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lyads/vp1;

    iget-object v3, p2, Lyads/zp1;->a:Lyads/zw2;

    iget-object p0, p0, Lyads/yp1;->a:Lyads/tq3;

    iget-object v6, p0, Lyads/tq3;->x3:Lcl4;

    iget-object v7, p0, Lyads/tq3;->v3:Lcl4;

    const-string v5, "neighbour_page_width"

    invoke-static/range {v2 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/af1;

    invoke-direct {p3, p0}, Lyads/vp1;-><init>(Lyads/af1;)V

    invoke-direct {p1, p3}, Lyads/is1;-><init>(Lyads/vp1;)V

    return-object p1

    :cond_1
    instance-of p1, p2, Lyads/qs1;

    if-eqz p1, :cond_2

    new-instance p1, Lyads/js1;

    iget-object p0, p0, Lyads/os1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->g5:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/oq1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/lq1;

    invoke-direct {p0}, Lyads/lq1;-><init>()V

    invoke-direct {p1, p0}, Lyads/js1;-><init>(Lyads/lq1;)V

    return-object p1

    :cond_2
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
