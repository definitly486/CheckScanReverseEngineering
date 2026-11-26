.class public final Lyads/re2;
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

    iput-object p1, p0, Lyads/re2;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 353
    check-cast p2, Lyads/af2;

    invoke-virtual {p0, p1, p2, p3}, Lyads/re2;->a(Lyads/ys4;Lyads/af2;Lorg/json/JSONObject;)Lyads/oe2;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/af2;Lorg/json/JSONObject;)Lyads/oe2;
    .locals 7

    instance-of v0, p2, Lyads/ye2;

    const-string v1, "value"

    if-eqz v0, :cond_0

    new-instance v0, Lyads/me2;

    iget-object p0, p0, Lyads/re2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->Y9:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/sr5;

    check-cast p2, Lyads/ye2;

    iget-object p2, p2, Lyads/ye2;->a:Lyads/tr5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/pr5;

    iget-object p2, p2, Lyads/tr5;->a:Lyads/zw2;

    sget-object v2, Lyads/w36;->c:Lyads/u36;

    invoke-static {p1, p2, p3, v1, v2}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/pr5;-><init>(Lyads/as2;)V

    invoke-direct {v0, p0}, Lyads/me2;-><init>(Lyads/pr5;)V

    return-object v0

    :cond_0
    instance-of v0, p2, Lyads/we2;

    if-eqz v0, :cond_1

    new-instance v0, Lyads/ke2;

    iget-object p0, p0, Lyads/re2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->D9:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/mm3;

    check-cast p2, Lyads/we2;

    iget-object p2, p2, Lyads/we2;->a:Lyads/om3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/jm3;

    iget-object v2, p2, Lyads/om3;->a:Lyads/zw2;

    sget-object v5, Lyads/w36;->b:Lyads/s36;

    sget-object v6, Lyads/bt4;->e:Lnl3;

    const-string v4, "value"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/jm3;-><init>(Lyads/as2;)V

    invoke-direct {v0, p0}, Lyads/ke2;-><init>(Lyads/jm3;)V

    return-object v0

    :cond_1
    move-object v3, v1

    move-object v1, p1

    move-object p1, v3

    move-object v3, p3

    instance-of p3, p2, Lyads/xe2;

    if-eqz p3, :cond_2

    new-instance p1, Lyads/le2;

    iget-object p0, p0, Lyads/re2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->J9:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/uo4;

    check-cast p2, Lyads/xe2;

    iget-object p2, p2, Lyads/xe2;->a:Lyads/xo4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/ro4;

    iget-object v2, p2, Lyads/xo4;->a:Lyads/zw2;

    sget-object v5, Lyads/w36;->d:Lyads/r36;

    sget-object v6, Lyads/bt4;->d:Lnl3;

    const-string v4, "value"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p2

    invoke-direct {p0, p2}, Lyads/ro4;-><init>(Lyads/as2;)V

    invoke-direct {p1, p0}, Lyads/le2;-><init>(Lyads/ro4;)V

    return-object p1

    :cond_2
    instance-of p3, p2, Lyads/ue2;

    if-eqz p3, :cond_3

    new-instance p1, Lyads/ie2;

    iget-object p0, p0, Lyads/re2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->o:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/r30;

    check-cast p2, Lyads/ue2;

    iget-object p2, p2, Lyads/ue2;->a:Lyads/s30;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/o30;

    iget-object v2, p2, Lyads/s30;->a:Lyads/zw2;

    sget-object v5, Lyads/w36;->f:Lyads/p36;

    sget-object v6, Lyads/bt4;->a:Lnl3;

    const-string v4, "value"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p2

    invoke-direct {p0, p2}, Lyads/o30;-><init>(Lyads/as2;)V

    invoke-direct {p1, p0}, Lyads/ie2;-><init>(Lyads/o30;)V

    return-object p1

    :cond_3
    instance-of p3, p2, Lyads/te2;

    if-eqz p3, :cond_4

    new-instance p1, Lyads/he2;

    iget-object p0, p0, Lyads/re2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->i:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/nu;

    check-cast p2, Lyads/te2;

    iget-object p2, p2, Lyads/te2;->a:Lyads/ou;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/ku;

    iget-object v2, p2, Lyads/ou;->a:Lyads/zw2;

    sget-object v5, Lyads/w36;->a:Lyads/o36;

    sget-object v6, Lyads/bt4;->c:Lnl3;

    const-string v4, "value"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p2

    invoke-direct {p0, p2}, Lyads/ku;-><init>(Lyads/as2;)V

    invoke-direct {p1, p0}, Lyads/he2;-><init>(Lyads/ku;)V

    return-object p1

    :cond_4
    instance-of p3, p2, Lyads/ze2;

    if-eqz p3, :cond_5

    new-instance p1, Lyads/ne2;

    iget-object p0, p0, Lyads/re2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->ea:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/i56;

    check-cast p2, Lyads/ze2;

    iget-object p2, p2, Lyads/ze2;->a:Lyads/j56;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/f56;

    iget-object v2, p2, Lyads/j56;->a:Lyads/zw2;

    sget-object v5, Lyads/w36;->e:Lyads/v36;

    sget-object v6, Lyads/bt4;->b:Lnl3;

    const-string v4, "value"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p2

    invoke-direct {p0, p2}, Lyads/f56;-><init>(Lyads/as2;)V

    invoke-direct {p1, p0}, Lyads/ne2;-><init>(Lyads/f56;)V

    return-object p1

    :cond_5
    instance-of p3, p2, Lyads/ve2;

    if-eqz p3, :cond_6

    new-instance p3, Lyads/je2;

    iget-object p0, p0, Lyads/re2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->A:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ap0;

    check-cast p2, Lyads/ve2;

    iget-object p2, p2, Lyads/ve2;->a:Lyads/bp0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/xo0;

    iget-object p2, p2, Lyads/bp0;->a:Lyads/zw2;

    sget-object v0, Lyads/w36;->h:Lyads/q36;

    invoke-static {v1, p2, v3, p1, v0}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/xo0;-><init>(Lyads/as2;)V

    invoke-direct {p3, p0}, Lyads/je2;-><init>(Lyads/xo0;)V

    return-object p3

    :cond_6
    instance-of p3, p2, Lyads/se2;

    if-eqz p3, :cond_7

    new-instance p3, Lyads/ge2;

    iget-object p0, p0, Lyads/re2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->c:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/hj;

    check-cast p2, Lyads/se2;

    iget-object p2, p2, Lyads/se2;->a:Lyads/ij;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/ej;

    iget-object p2, p2, Lyads/ij;->a:Lyads/zw2;

    sget-object v0, Lyads/w36;->g:Lyads/t36;

    invoke-static {v1, p2, v3, p1, v0}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/ej;-><init>(Lyads/as2;)V

    invoke-direct {p3, p0}, Lyads/ge2;-><init>(Lyads/ej;)V

    return-object p3

    :cond_7
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
