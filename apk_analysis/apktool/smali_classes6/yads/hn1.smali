.class public final Lyads/hn1;
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

    iput-object p1, p0, Lyads/hn1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 481
    check-cast p2, Lyads/q72;

    invoke-virtual {p0, p1, p2, p3}, Lyads/hn1;->a(Lyads/ys4;Lyads/q72;Lorg/json/JSONObject;)Lyads/br0;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/q72;Lorg/json/JSONObject;)Lyads/br0;
    .locals 1

    instance-of v0, p2, Lyads/e72;

    if-eqz v0, :cond_0

    new-instance v0, Lyads/zp0;

    iget-object p0, p0, Lyads/hn1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->Y3:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/mi1;

    check-cast p2, Lyads/e72;

    iget-object p2, p2, Lyads/e72;->a:Lyads/wi1;

    invoke-virtual {p0, p1, p2, p3}, Lyads/mi1;->a(Lyads/ys4;Lyads/wi1;Lorg/json/JSONObject;)Lyads/zh1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/zp0;-><init>(Lyads/zh1;)V

    return-object v0

    :cond_0
    instance-of v0, p2, Lyads/c72;

    if-eqz v0, :cond_1

    new-instance v0, Lyads/xp0;

    iget-object p0, p0, Lyads/hn1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->P3:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/kh1;

    check-cast p2, Lyads/c72;

    iget-object p2, p2, Lyads/c72;->a:Lyads/mh1;

    invoke-virtual {p0, p1, p2, p3}, Lyads/kh1;->a(Lyads/ys4;Lyads/mh1;Lorg/json/JSONObject;)Lyads/eh1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/xp0;-><init>(Lyads/eh1;)V

    return-object v0

    :cond_1
    instance-of v0, p2, Lyads/o72;

    if-eqz v0, :cond_2

    new-instance v0, Lyads/jq0;

    iget-object p0, p0, Lyads/hn1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->p8:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/d92;

    check-cast p2, Lyads/o72;

    iget-object p2, p2, Lyads/o72;->a:Lyads/fb2;

    invoke-virtual {p0, p1, p2, p3}, Lyads/d92;->a(Lyads/ys4;Lyads/fb2;Lorg/json/JSONObject;)Lyads/b82;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/jq0;-><init>(Lyads/b82;)V

    return-object v0

    :cond_2
    instance-of v0, p2, Lyads/j72;

    if-eqz v0, :cond_3

    new-instance v0, Lyads/eq0;

    iget-object p0, p0, Lyads/hn1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->D6:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/sz1;

    check-cast p2, Lyads/j72;

    iget-object p2, p2, Lyads/j72;->a:Lyads/vz1;

    invoke-virtual {p0, p1, p2, p3}, Lyads/sz1;->a(Lyads/ys4;Lyads/vz1;Lorg/json/JSONObject;)Lyads/kz1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/eq0;-><init>(Lyads/kz1;)V

    return-object v0

    :cond_3
    instance-of v0, p2, Lyads/z62;

    if-eqz v0, :cond_4

    new-instance v0, Lyads/up0;

    iget-object p0, p0, Lyads/hn1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->o2:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/d91;

    check-cast p2, Lyads/z62;

    iget-object p2, p2, Lyads/z62;->a:Lyads/k91;

    invoke-virtual {p0, p1, p2, p3}, Lyads/d91;->a(Lyads/ys4;Lyads/k91;Lorg/json/JSONObject;)Lyads/j81;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/up0;-><init>(Lyads/j81;)V

    return-object v0

    :cond_4
    instance-of v0, p2, Lyads/d72;

    if-eqz v0, :cond_5

    new-instance v0, Lyads/yp0;

    iget-object p0, p0, Lyads/hn1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->S3:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/sh1;

    check-cast p2, Lyads/d72;

    iget-object p2, p2, Lyads/d72;->a:Lyads/vh1;

    invoke-virtual {p0, p1, p2, p3}, Lyads/sh1;->a(Lyads/ys4;Lyads/vh1;Lorg/json/JSONObject;)Lyads/oh1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/yp0;-><init>(Lyads/oh1;)V

    return-object v0

    :cond_5
    instance-of v0, p2, Lyads/b72;

    if-eqz v0, :cond_6

    new-instance v0, Lyads/wp0;

    iget-object p0, p0, Lyads/hn1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->M3:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/yg1;

    check-cast p2, Lyads/b72;

    iget-object p2, p2, Lyads/b72;->a:Lyads/bh1;

    invoke-virtual {p0, p1, p2, p3}, Lyads/yg1;->a(Lyads/ys4;Lyads/bh1;Lorg/json/JSONObject;)Lyads/og1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/wp0;-><init>(Lyads/og1;)V

    return-object v0

    :cond_6
    instance-of v0, p2, Lyads/h72;

    if-eqz v0, :cond_7

    new-instance v0, Lyads/cq0;

    iget-object p0, p0, Lyads/hn1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->y5:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/gs1;

    check-cast p2, Lyads/h72;

    iget-object p2, p2, Lyads/h72;->a:Lyads/at1;

    invoke-virtual {p0, p1, p2, p3}, Lyads/gs1;->a(Lyads/ys4;Lyads/at1;Lorg/json/JSONObject;)Lyads/ur1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/cq0;-><init>(Lyads/ur1;)V

    return-object v0

    :cond_7
    instance-of v0, p2, Lyads/n72;

    if-eqz v0, :cond_8

    new-instance v0, Lyads/iq0;

    iget-object p0, p0, Lyads/hn1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->L7:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/k62;

    check-cast p2, Lyads/n72;

    iget-object p2, p2, Lyads/n72;->a:Lyads/y62;

    invoke-virtual {p0, p1, p2, p3}, Lyads/k62;->a(Lyads/ys4;Lyads/y62;Lorg/json/JSONObject;)Lyads/y52;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/iq0;-><init>(Lyads/y52;)V

    return-object v0

    :cond_8
    instance-of v0, p2, Lyads/l72;

    if-eqz v0, :cond_9

    new-instance v0, Lyads/gq0;

    iget-object p0, p0, Lyads/hn1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->n7:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/g32;

    check-cast p2, Lyads/l72;

    iget-object p2, p2, Lyads/l72;->a:Lyads/t32;

    invoke-virtual {p0, p1, p2, p3}, Lyads/g32;->a(Lyads/ys4;Lyads/t32;Lorg/json/JSONObject;)Lyads/z22;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/gq0;-><init>(Lyads/z22;)V

    return-object v0

    :cond_9
    instance-of v0, p2, Lyads/a72;

    if-eqz v0, :cond_a

    new-instance v0, Lyads/vp0;

    iget-object p0, p0, Lyads/hn1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->D2:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ra1;

    check-cast p2, Lyads/a72;

    iget-object p2, p2, Lyads/a72;->a:Lyads/za1;

    invoke-virtual {p0, p1, p2, p3}, Lyads/ra1;->a(Lyads/ys4;Lyads/za1;Lorg/json/JSONObject;)Lyads/ka1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/vp0;-><init>(Lyads/ka1;)V

    return-object v0

    :cond_a
    instance-of v0, p2, Lyads/f72;

    if-eqz v0, :cond_b

    new-instance v0, Lyads/aq0;

    iget-object p0, p0, Lyads/hn1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->e4:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/pj1;

    check-cast p2, Lyads/f72;

    iget-object p2, p2, Lyads/f72;->a:Lyads/rj1;

    invoke-virtual {p0, p1, p2, p3}, Lyads/pj1;->a(Lyads/ys4;Lyads/rj1;Lorg/json/JSONObject;)Lyads/bj1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/aq0;-><init>(Lyads/bj1;)V

    return-object v0

    :cond_b
    instance-of v0, p2, Lyads/k72;

    if-eqz v0, :cond_c

    new-instance v0, Lyads/fq0;

    iget-object p0, p0, Lyads/hn1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->b7:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/g22;

    check-cast p2, Lyads/k72;

    iget-object p2, p2, Lyads/k72;->a:Lyads/n22;

    invoke-virtual {p0, p1, p2, p3}, Lyads/g22;->a(Lyads/ys4;Lyads/n22;Lorg/json/JSONObject;)Lyads/x12;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/fq0;-><init>(Lyads/x12;)V

    return-object v0

    :cond_c
    instance-of v0, p2, Lyads/m72;

    if-eqz v0, :cond_d

    new-instance v0, Lyads/hq0;

    iget-object p0, p0, Lyads/hn1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->I7:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/p52;

    check-cast p2, Lyads/m72;

    iget-object p2, p2, Lyads/m72;->a:Lyads/r52;

    invoke-virtual {p0, p1, p2, p3}, Lyads/p52;->a(Lyads/ys4;Lyads/r52;Lorg/json/JSONObject;)Lyads/k52;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/hq0;-><init>(Lyads/k52;)V

    return-object v0

    :cond_d
    instance-of v0, p2, Lyads/g72;

    if-eqz v0, :cond_e

    new-instance v0, Lyads/bq0;

    iget-object p0, p0, Lyads/hn1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->F4:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/fl1;

    check-cast p2, Lyads/g72;

    iget-object p2, p2, Lyads/g72;->a:Lyads/xl1;

    invoke-virtual {p0, p1, p2, p3}, Lyads/fl1;->a(Lyads/ys4;Lyads/xl1;Lorg/json/JSONObject;)Lyads/ek1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/bq0;-><init>(Lyads/ek1;)V

    return-object v0

    :cond_e
    instance-of v0, p2, Lyads/i72;

    if-eqz v0, :cond_f

    new-instance v0, Lyads/dq0;

    iget-object p0, p0, Lyads/hn1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->x6:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/zy1;

    check-cast p2, Lyads/i72;

    iget-object p2, p2, Lyads/i72;->a:Lyads/fz1;

    invoke-virtual {p0, p1, p2, p3}, Lyads/zy1;->a(Lyads/ys4;Lyads/fz1;Lorg/json/JSONObject;)Lyads/uy1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/dq0;-><init>(Lyads/uy1;)V

    return-object v0

    :cond_f
    instance-of v0, p2, Lyads/p72;

    if-eqz v0, :cond_10

    new-instance v0, Lyads/kq0;

    iget-object p0, p0, Lyads/hn1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->l9:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ug2;

    check-cast p2, Lyads/p72;

    iget-object p2, p2, Lyads/p72;->a:Lyads/lh2;

    invoke-virtual {p0, p1, p2, p3}, Lyads/ug2;->a(Lyads/ys4;Lyads/lh2;Lorg/json/JSONObject;)Lyads/ng2;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/kq0;-><init>(Lyads/ng2;)V

    return-object v0

    :cond_10
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
