.class public final Lyads/ol1;
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

    iput-object p1, p0, Lyads/ol1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 125
    check-cast p2, Lyads/sl1;

    invoke-virtual {p0, p1, p2, p3}, Lyads/ol1;->a(Lyads/ys4;Lyads/sl1;Lorg/json/JSONObject;)Lyads/kl1;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/sl1;Lorg/json/JSONObject;)Lyads/kl1;
    .locals 5

    instance-of v0, p2, Lyads/ql1;

    if-eqz v0, :cond_0

    new-instance v0, Lyads/il1;

    iget-object p0, p0, Lyads/ol1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->r3:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/se1;

    check-cast p2, Lyads/ql1;

    iget-object p2, p2, Lyads/ql1;->a:Lyads/ze1;

    invoke-virtual {p0, p1, p2, p3}, Lyads/se1;->a(Lyads/ys4;Lyads/ze1;Lorg/json/JSONObject;)Lyads/pe1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/il1;-><init>(Lyads/pe1;)V

    return-object v0

    :cond_0
    instance-of v0, p2, Lyads/pl1;

    const-string v1, "raw_text_variable"

    if-eqz v0, :cond_1

    new-instance v0, Lyads/hl1;

    iget-object p0, p0, Lyads/ol1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->A2:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ia1;

    check-cast p2, Lyads/pl1;

    iget-object p2, p2, Lyads/pl1;->a:Lyads/ja1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/fa1;

    iget-object v2, p2, Lyads/ja1;->a:Lyads/zw2;

    sget-object v3, Lyads/w36;->c:Lyads/u36;

    const-string v4, "locale"

    invoke-static {p1, v2, p3, v4, v3}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p1

    iget-object p2, p2, Lyads/ja1;->b:Lyads/zw2;

    invoke-static {p2, p3, v1}, Lyads/qq3;->a(Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lyads/fa1;-><init>(Ljava/lang/String;Lyads/as2;)V

    invoke-direct {v0, p0}, Lyads/hl1;-><init>(Lyads/fa1;)V

    return-object v0

    :cond_1
    instance-of p1, p2, Lyads/rl1;

    if-eqz p1, :cond_2

    new-instance p1, Lyads/jl1;

    iget-object p0, p0, Lyads/ol1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->H5:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/nu1;

    check-cast p2, Lyads/rl1;

    iget-object p2, p2, Lyads/rl1;->a:Lyads/ou1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/ku1;

    iget-object p2, p2, Lyads/ou1;->a:Lyads/zw2;

    invoke-static {p2, p3, v1}, Lyads/qq3;->a(Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lyads/ku1;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p0}, Lyads/jl1;-><init>(Lyads/ku1;)V

    return-object p1

    :cond_2
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
