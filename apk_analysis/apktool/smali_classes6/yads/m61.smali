.class public final Lyads/m61;
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

    iput-object p1, p0, Lyads/m61;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 88
    check-cast p2, Lyads/p61;

    invoke-virtual {p0, p1, p2, p3}, Lyads/m61;->a(Lyads/ys4;Lyads/p61;Lorg/json/JSONObject;)Lyads/j61;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/p61;Lorg/json/JSONObject;)Lyads/j61;
    .locals 9

    instance-of v0, p2, Lyads/o61;

    if-eqz v0, :cond_0

    new-instance v0, Lyads/i61;

    iget-object p0, p0, Lyads/m61;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->T1:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/e61;

    check-cast p2, Lyads/o61;

    iget-object p2, p2, Lyads/o61;->a:Lyads/g61;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lyads/b61;

    iget-object v3, p2, Lyads/g61;->a:Lyads/zw2;

    iget-object p0, p0, Lyads/e61;->a:Lyads/tq3;

    iget-object v6, p0, Lyads/tq3;->W1:Lcl4;

    iget-object v7, p0, Lyads/tq3;->U1:Lcl4;

    sget-object v8, Lyads/f61;->a:Lyads/st3;

    const-string v5, "items"

    move-object v2, p1

    move-object v4, p3

    invoke-static/range {v2 .. v8}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;Lyads/st3;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Lyads/b61;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1}, Lyads/i61;-><init>(Lyads/b61;)V

    return-object v0

    :cond_0
    move-object v2, p1

    move-object v4, p3

    instance-of p1, p2, Lyads/n61;

    if-eqz p1, :cond_1

    new-instance p1, Lyads/h61;

    iget-object p0, p0, Lyads/m61;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->Q1:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/y51;

    check-cast p2, Lyads/n61;

    iget-object p2, p2, Lyads/n61;->a:Lyads/a61;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p2, v4}, Lyads/y51;->a(Lyads/ys4;Lyads/a61;Lorg/json/JSONObject;)Lyads/v51;

    move-result-object p0

    invoke-direct {p1, p0}, Lyads/h61;-><init>(Lyads/v51;)V

    return-object p1

    :cond_1
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
