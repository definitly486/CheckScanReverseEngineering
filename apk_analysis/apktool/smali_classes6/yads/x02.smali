.class public abstract Lyads/x02;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 214
    instance-of v0, p0, Lyads/u02;

    if-eqz v0, :cond_0

    check-cast p0, Lyads/u02;

    .line 215
    iget-object p0, p0, Lyads/u02;->a:Lyads/af1;

    return-object p0

    .line 216
    :cond_0
    instance-of v0, p0, Lyads/v02;

    if-eqz v0, :cond_1

    check-cast p0, Lyads/v02;

    .line 217
    iget-object p0, p0, Lyads/v02;->a:Lyads/pp1;

    return-object p0

    .line 218
    :cond_1
    instance-of v0, p0, Lyads/w02;

    if-eqz v0, :cond_2

    check-cast p0, Lyads/w02;

    .line 219
    iget-object p0, p0, Lyads/w02;->a:Lyads/ej2;

    return-object p0

    .line 220
    :cond_2
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(Lyads/x02;Lyads/fs2;Lyads/fs2;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p0, Lyads/u02;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p0, Lyads/u02;

    iget-object p0, p0, Lyads/u02;->a:Lyads/af1;

    invoke-virtual {p1}, Lyads/x02;->a()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lyads/af1;

    if-eqz v0, :cond_1

    move-object v2, p1

    check-cast v2, Lyads/af1;

    :cond_1
    invoke-virtual {p0, v2, p2, p3}, Lyads/af1;->a(Lyads/af1;Lyads/fs2;Lyads/fs2;)Z

    move-result p0

    return p0

    :cond_2
    instance-of v1, p0, Lyads/v02;

    const/4 v3, 0x1

    if-eqz v1, :cond_b

    check-cast p0, Lyads/v02;

    iget-object p0, p0, Lyads/v02;->a:Lyads/pp1;

    invoke-virtual {p1}, Lyads/x02;->a()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lyads/pp1;

    if-eqz v1, :cond_3

    check-cast p1, Lyads/pp1;

    goto :goto_0

    :cond_3
    move-object p1, v2

    :goto_0
    if-nez p1, :cond_4

    goto/16 :goto_9

    :cond_4
    iget-object v1, p0, Lyads/pp1;->a:Lyads/h12;

    iget-object v4, p1, Lyads/pp1;->a:Lyads/h12;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v4, p2, p3}, Lyads/h12;->a(Lyads/h12;Lyads/fs2;Lyads/fs2;)Z

    move-result v1

    goto :goto_1

    :cond_5
    if-nez v4, :cond_6

    move v1, v3

    goto :goto_1

    :cond_6
    move v1, v0

    :goto_1
    if-eqz v1, :cond_14

    iget-object v1, p0, Lyads/pp1;->b:Lyads/h12;

    iget-object v4, p1, Lyads/pp1;->b:Lyads/h12;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v4, p2, p3}, Lyads/h12;->a(Lyads/h12;Lyads/fs2;Lyads/fs2;)Z

    move-result v1

    goto :goto_2

    :cond_7
    if-nez v4, :cond_8

    move v1, v3

    goto :goto_2

    :cond_8
    move v1, v0

    :goto_2
    if-eqz v1, :cond_14

    iget-object p0, p0, Lyads/pp1;->c:Lyads/as2;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    goto :goto_3

    :cond_9
    move-object p0, v2

    :goto_3
    iget-object p1, p1, Lyads/pp1;->c:Lyads/as2;

    if-eqz p1, :cond_a

    invoke-virtual {p1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/Double;

    :cond_a
    invoke-static {p0, v2}, Laa4;->b(Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result p0

    if-eqz p0, :cond_14

    goto/16 :goto_8

    :cond_b
    instance-of v1, p0, Lyads/w02;

    if-eqz v1, :cond_15

    check-cast p0, Lyads/w02;

    iget-object p0, p0, Lyads/w02;->a:Lyads/ej2;

    invoke-virtual {p1}, Lyads/x02;->a()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lyads/ej2;

    if-eqz v1, :cond_c

    check-cast p1, Lyads/ej2;

    goto :goto_4

    :cond_c
    move-object p1, v2

    :goto_4
    if-nez p1, :cond_d

    goto :goto_9

    :cond_d
    iget-object v1, p0, Lyads/ej2;->a:Lyads/as2;

    if-eqz v1, :cond_e

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    goto :goto_5

    :cond_e
    move-object v1, v2

    :goto_5
    iget-object v4, p1, Lyads/ej2;->a:Lyads/as2;

    if-eqz v4, :cond_f

    invoke-virtual {v4, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    :cond_f
    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lyads/ej2;->b:Lyads/h12;

    iget-object v2, p1, Lyads/ej2;->b:Lyads/h12;

    if-eqz v1, :cond_10

    invoke-virtual {v1, v2, p2, p3}, Lyads/h12;->a(Lyads/h12;Lyads/fs2;Lyads/fs2;)Z

    move-result v1

    goto :goto_6

    :cond_10
    if-nez v2, :cond_11

    move v1, v3

    goto :goto_6

    :cond_11
    move v1, v0

    :goto_6
    if-eqz v1, :cond_14

    iget-object p0, p0, Lyads/ej2;->c:Lyads/h12;

    iget-object p1, p1, Lyads/ej2;->c:Lyads/h12;

    if-eqz p0, :cond_12

    invoke-virtual {p0, p1, p2, p3}, Lyads/h12;->a(Lyads/h12;Lyads/fs2;Lyads/fs2;)Z

    move-result p0

    goto :goto_7

    :cond_12
    if-nez p1, :cond_13

    move p0, v3

    goto :goto_7

    :cond_13
    move p0, v0

    :goto_7
    if-eqz p0, :cond_14

    :goto_8
    return v3

    :cond_14
    :goto_9
    return v0

    :cond_15
    invoke-static {}, Lme0;->e()V

    return v0
.end method
