.class public final Lyads/hz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/yy0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lyads/ry0;Lyads/vq0;Lyads/fs2;)Z
    .locals 4

    instance-of p0, p2, Lyads/ky0;

    const/4 p1, 0x0

    if-eqz p0, :cond_8

    check-cast p2, Lyads/ky0;

    iget-object p0, p2, Lyads/ky0;->a:Lyads/fw0;

    iget-object p2, p0, Lyads/fw0;->b:Lyads/as2;

    invoke-virtual {p2, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lyads/fw0;->a:Lyads/as2;

    invoke-virtual {v0, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object p0, p0, Lyads/fw0;->c:Lyads/oe2;

    instance-of v2, p0, Lyads/me2;

    if-eqz v2, :cond_0

    new-instance p1, Lyads/gr5;

    check-cast p0, Lyads/me2;

    iget-object p0, p0, Lyads/me2;->a:Lyads/pr5;

    iget-object p0, p0, Lyads/pr5;->a:Lyads/as2;

    invoke-virtual {p0, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {p1, p2, p0}, Lyads/gr5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    instance-of v2, p0, Lyads/ke2;

    if-eqz v2, :cond_1

    new-instance p1, Lyads/fr5;

    check-cast p0, Lyads/ke2;

    iget-object p0, p0, Lyads/ke2;->a:Lyads/jm3;

    iget-object p0, p0, Lyads/jm3;->a:Lyads/as2;

    invoke-virtual {p0, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {p1, p2, v2, v3}, Lyads/fr5;-><init>(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_1
    instance-of v2, p0, Lyads/he2;

    if-eqz v2, :cond_2

    new-instance p1, Lyads/br5;

    check-cast p0, Lyads/he2;

    iget-object p0, p0, Lyads/he2;->a:Lyads/ku;

    iget-object p0, p0, Lyads/ku;->a:Lyads/as2;

    invoke-virtual {p0, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-direct {p1, p2, p0}, Lyads/br5;-><init>(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_2
    instance-of v2, p0, Lyads/le2;

    if-eqz v2, :cond_3

    new-instance p1, Lyads/er5;

    check-cast p0, Lyads/le2;

    iget-object p0, p0, Lyads/le2;->a:Lyads/ro4;

    iget-object p0, p0, Lyads/ro4;->a:Lyads/as2;

    invoke-virtual {p0, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-direct {p1, p2, v2, v3}, Lyads/er5;-><init>(Ljava/lang/String;D)V

    goto :goto_0

    :cond_3
    instance-of v2, p0, Lyads/ie2;

    if-eqz v2, :cond_4

    new-instance p1, Lyads/cr5;

    check-cast p0, Lyads/ie2;

    iget-object p0, p0, Lyads/ie2;->a:Lyads/o30;

    iget-object p0, p0, Lyads/o30;->a:Lyads/as2;

    invoke-virtual {p0, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-direct {p1, p2, p0}, Lyads/cr5;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    instance-of v2, p0, Lyads/ne2;

    if-eqz v2, :cond_5

    new-instance p1, Lyads/jr5;

    check-cast p0, Lyads/ne2;

    iget-object p0, p0, Lyads/ne2;->a:Lyads/f56;

    iget-object p0, p0, Lyads/f56;->a:Lyads/as2;

    invoke-virtual {p0, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lyads/p46;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lyads/jr5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    instance-of v2, p0, Lyads/ge2;

    if-eqz v2, :cond_6

    new-instance p1, Lyads/ar5;

    check-cast p0, Lyads/ge2;

    iget-object p0, p0, Lyads/ge2;->a:Lyads/ej;

    iget-object p0, p0, Lyads/ej;->a:Lyads/as2;

    invoke-virtual {p0, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONArray;

    invoke-direct {p1, p2, p0}, Lyads/ar5;-><init>(Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_0

    :cond_6
    instance-of v2, p0, Lyads/je2;

    if-eqz v2, :cond_7

    new-instance p1, Lyads/dr5;

    check-cast p0, Lyads/je2;

    iget-object p0, p0, Lyads/je2;->a:Lyads/xo0;

    iget-object p0, p0, Lyads/xo0;->a:Lyads/as2;

    invoke-virtual {p0, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    invoke-direct {p1, p2, p0}, Lyads/dr5;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_0
    iget-object p0, p3, Lyads/vq0;->n:Lyads/nq0;

    iget-object p0, p0, Lyads/nq0;->B:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/or5;

    iget-object p2, p3, Lyads/vq0;->o:Lyads/wq0;

    invoke-virtual {p2}, Lyads/wq0;->b()Lyads/bo2;

    move-result-object p2

    iget-object p4, p3, Lyads/vq0;->O:Lyads/qb1;

    iget-object p3, p3, Lyads/vq0;->Q:Lyads/db1;

    invoke-virtual {p2, p3, p4}, Lyads/bo2;->a(Lyads/db1;Lyads/qb1;)Lyads/ao2;

    move-result-object p2

    invoke-virtual {p0, p1, v0, v1, p2}, Lyads/or5;->a(Lyads/kr5;JLyads/ao2;)Z

    const/4 p0, 0x1

    return p0

    :cond_7
    invoke-static {}, Lme0;->e()V

    :cond_8
    return p1
.end method
