.class public final Lyads/v21;
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

    iput-object p1, p0, Lyads/v21;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 147
    check-cast p2, Lyads/a31;

    invoke-virtual {p0, p1, p2, p3}, Lyads/v21;->a(Lyads/ys4;Lyads/a31;Lorg/json/JSONObject;)Lyads/s21;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/a31;Lorg/json/JSONObject;)Lyads/s21;
    .locals 9

    instance-of v0, p2, Lyads/y21;

    if-eqz v0, :cond_0

    new-instance v0, Lyads/q21;

    iget-object p0, p0, Lyads/v21;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->y1:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/l21;

    check-cast p2, Lyads/y21;

    iget-object p2, p2, Lyads/y21;->a:Lyads/n21;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lyads/i21;

    iget-object v3, p2, Lyads/n21;->a:Lyads/zw2;

    iget-object p0, p0, Lyads/l21;->a:Lyads/tq3;

    iget-object v6, p0, Lyads/tq3;->B1:Lcl4;

    iget-object v7, p0, Lyads/tq3;->z1:Lcl4;

    sget-object v8, Lyads/m21;->a:Lyads/st3;

    const-string v5, "items"

    move-object v2, p1

    move-object v4, p3

    invoke-static/range {v2 .. v8}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;Lyads/st3;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Lyads/i21;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1}, Lyads/q21;-><init>(Lyads/i21;)V

    return-object v0

    :cond_0
    move-object v2, p1

    move-object v4, p3

    instance-of p1, p2, Lyads/w21;

    if-eqz p1, :cond_1

    new-instance p1, Lyads/o21;

    iget-object p0, p0, Lyads/v21;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->f3:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/rd1;

    check-cast p2, Lyads/w21;

    iget-object p2, p2, Lyads/w21;->a:Lyads/td1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p2, v4}, Lyads/rd1;->a(Lyads/ys4;Lyads/td1;Lorg/json/JSONObject;)Lyads/od1;

    move-result-object p0

    invoke-direct {p1, p0}, Lyads/o21;-><init>(Lyads/od1;)V

    return-object p1

    :cond_1
    instance-of p1, p2, Lyads/x21;

    if-eqz p1, :cond_2

    new-instance p1, Lyads/p21;

    iget-object p0, p0, Lyads/v21;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->u6:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/qy1;

    check-cast p2, Lyads/x21;

    iget-object p2, p2, Lyads/x21;->a:Lyads/sy1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p2, v4}, Lyads/qy1;->a(Lyads/ys4;Lyads/sy1;Lorg/json/JSONObject;)Lyads/ny1;

    move-result-object p0

    invoke-direct {p1, p0}, Lyads/p21;-><init>(Lyads/ny1;)V

    return-object p1

    :cond_2
    instance-of p1, p2, Lyads/z21;

    if-eqz p1, :cond_3

    new-instance p1, Lyads/r21;

    iget-object p0, p0, Lyads/v21;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->Y6:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/s12;

    check-cast p2, Lyads/z21;

    iget-object p2, p2, Lyads/z21;->a:Lyads/u12;

    invoke-virtual {p0, v2, p2, v4}, Lyads/s12;->a(Lyads/ys4;Lyads/u12;Lorg/json/JSONObject;)Lyads/p12;

    move-result-object p0

    invoke-direct {p1, p0}, Lyads/r21;-><init>(Lyads/p12;)V

    return-object p1

    :cond_3
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
