.class public final Lyads/iz0;
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

.method public static final a(Lyads/iz0;Ljava/lang/Object;Lyads/vq0;Ljava/lang/String;Lyads/u66;)Lyads/u66;
    .locals 8

    instance-of p0, p4, Lyads/m66;

    const-string v0, ") to variable "

    const-string v1, "Trying to set value with invalid type ("

    const-string v2, "array"

    const-string v3, "dict"

    const-string v4, "number"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p0, :cond_6

    instance-of p0, p1, Lorg/json/JSONArray;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v6, p1

    :goto_0
    check-cast v6, Lorg/json/JSONArray;

    if-nez v6, :cond_5

    instance-of v7, p1, Ljava/lang/Integer;

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    instance-of v5, p1, Ljava/lang/Double;

    :goto_1
    if-eqz v5, :cond_2

    move-object v2, v4

    goto :goto_2

    :cond_2
    instance-of v4, p1, Lorg/json/JSONObject;

    if-eqz v4, :cond_3

    move-object v2, v3

    goto :goto_2

    :cond_3
    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v1, v2, v0, p3}, Lpg;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p0}, Lyads/o01;->a(Lyads/vq0;Ljava/lang/Throwable;)V

    :cond_5
    if-eqz v6, :cond_37

    move-object p0, p4

    check-cast p0, Lyads/m66;

    invoke-virtual {p0, v6}, Lyads/m66;->a(Lorg/json/JSONArray;)V

    return-object p4

    :cond_6
    instance-of p0, p4, Lyads/n66;

    if-eqz p0, :cond_d

    instance-of p0, p1, Ljava/lang/Boolean;

    if-nez p0, :cond_7

    goto :goto_3

    :cond_7
    move-object v6, p1

    :goto_3
    check-cast v6, Ljava/lang/Boolean;

    if-nez v6, :cond_c

    instance-of p0, p1, Ljava/lang/Integer;

    if-eqz p0, :cond_8

    goto :goto_4

    :cond_8
    instance-of v5, p1, Ljava/lang/Double;

    :goto_4
    if-eqz v5, :cond_9

    move-object v2, v4

    goto :goto_5

    :cond_9
    instance-of p0, p1, Lorg/json/JSONObject;

    if-eqz p0, :cond_a

    move-object v2, v3

    goto :goto_5

    :cond_a
    instance-of p0, p1, Lorg/json/JSONArray;

    if-eqz p0, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v1, v2, v0, p3}, Lpg;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p0}, Lyads/o01;->a(Lyads/vq0;Ljava/lang/Throwable;)V

    :cond_c
    if-eqz v6, :cond_37

    move-object p0, p4

    check-cast p0, Lyads/n66;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lyads/n66;->a(Z)V

    return-object p4

    :cond_d
    instance-of p0, p4, Lyads/o66;

    if-eqz p0, :cond_14

    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_e

    goto :goto_6

    :cond_e
    move-object v6, p1

    :goto_6
    check-cast v6, Ljava/lang/Integer;

    if-nez v6, :cond_13

    if-eqz p0, :cond_f

    goto :goto_7

    :cond_f
    instance-of v5, p1, Ljava/lang/Double;

    :goto_7
    if-eqz v5, :cond_10

    move-object v2, v4

    goto :goto_8

    :cond_10
    instance-of p0, p1, Lorg/json/JSONObject;

    if-eqz p0, :cond_11

    move-object v2, v3

    goto :goto_8

    :cond_11
    instance-of p0, p1, Lorg/json/JSONArray;

    if-eqz p0, :cond_12

    goto :goto_8

    :cond_12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v1, v2, v0, p3}, Lpg;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p0}, Lyads/o01;->a(Lyads/vq0;Ljava/lang/Throwable;)V

    :cond_13
    if-eqz v6, :cond_37

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lyads/l20;->b(I)I

    move-result p0

    move-object p1, p4

    check-cast p1, Lyads/o66;

    invoke-virtual {p1, p0}, Lyads/o66;->a(I)V

    return-object p4

    :cond_14
    instance-of p0, p4, Lyads/p66;

    if-eqz p0, :cond_1b

    instance-of p0, p1, Lorg/json/JSONObject;

    if-nez p0, :cond_15

    goto :goto_9

    :cond_15
    move-object v6, p1

    :goto_9
    check-cast v6, Lorg/json/JSONObject;

    if-nez v6, :cond_1a

    instance-of v7, p1, Ljava/lang/Integer;

    if-eqz v7, :cond_16

    goto :goto_a

    :cond_16
    instance-of v5, p1, Ljava/lang/Double;

    :goto_a
    if-eqz v5, :cond_17

    move-object v2, v4

    goto :goto_b

    :cond_17
    if-eqz p0, :cond_18

    move-object v2, v3

    goto :goto_b

    :cond_18
    instance-of p0, p1, Lorg/json/JSONArray;

    if-eqz p0, :cond_19

    goto :goto_b

    :cond_19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v1, v2, v0, p3}, Lpg;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p0}, Lyads/o01;->a(Lyads/vq0;Ljava/lang/Throwable;)V

    :cond_1a
    if-eqz v6, :cond_37

    move-object p0, p4

    check-cast p0, Lyads/p66;

    invoke-virtual {p0, v6}, Lyads/p66;->a(Lorg/json/JSONObject;)V

    return-object p4

    :cond_1b
    instance-of p0, p4, Lyads/q66;

    if-eqz p0, :cond_22

    instance-of p0, p1, Ljava/lang/Double;

    if-nez p0, :cond_1c

    goto :goto_c

    :cond_1c
    move-object v6, p1

    :goto_c
    check-cast v6, Ljava/lang/Double;

    if-nez v6, :cond_21

    instance-of v7, p1, Ljava/lang/Integer;

    if-eqz v7, :cond_1d

    goto :goto_d

    :cond_1d
    move v5, p0

    :goto_d
    if-eqz v5, :cond_1e

    move-object v2, v4

    goto :goto_e

    :cond_1e
    instance-of p0, p1, Lorg/json/JSONObject;

    if-eqz p0, :cond_1f

    move-object v2, v3

    goto :goto_e

    :cond_1f
    instance-of p0, p1, Lorg/json/JSONArray;

    if-eqz p0, :cond_20

    goto :goto_e

    :cond_20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v1, v2, v0, p3}, Lpg;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p0}, Lyads/o01;->a(Lyads/vq0;Ljava/lang/Throwable;)V

    :cond_21
    if-eqz v6, :cond_37

    move-object p0, p4

    check-cast p0, Lyads/q66;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lyads/q66;->a(D)V

    return-object p4

    :cond_22
    instance-of p0, p4, Lyads/r66;

    if-eqz p0, :cond_29

    instance-of p0, p1, Ljava/lang/Long;

    if-nez p0, :cond_23

    goto :goto_f

    :cond_23
    move-object v6, p1

    :goto_f
    check-cast v6, Ljava/lang/Long;

    if-nez v6, :cond_28

    instance-of p0, p1, Ljava/lang/Integer;

    if-eqz p0, :cond_24

    goto :goto_10

    :cond_24
    instance-of v5, p1, Ljava/lang/Double;

    :goto_10
    if-eqz v5, :cond_25

    move-object v2, v4

    goto :goto_11

    :cond_25
    instance-of p0, p1, Lorg/json/JSONObject;

    if-eqz p0, :cond_26

    move-object v2, v3

    goto :goto_11

    :cond_26
    instance-of p0, p1, Lorg/json/JSONArray;

    if-eqz p0, :cond_27

    goto :goto_11

    :cond_27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v1, v2, v0, p3}, Lpg;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p0}, Lyads/o01;->a(Lyads/vq0;Ljava/lang/Throwable;)V

    :cond_28
    if-eqz v6, :cond_37

    move-object p0, p4

    check-cast p0, Lyads/r66;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lyads/r66;->a(J)V

    return-object p4

    :cond_29
    instance-of p0, p4, Lyads/s66;

    if-eqz p0, :cond_30

    instance-of p0, p1, Ljava/lang/String;

    if-nez p0, :cond_2a

    goto :goto_12

    :cond_2a
    move-object v6, p1

    :goto_12
    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_2f

    instance-of p0, p1, Ljava/lang/Integer;

    if-eqz p0, :cond_2b

    goto :goto_13

    :cond_2b
    instance-of v5, p1, Ljava/lang/Double;

    :goto_13
    if-eqz v5, :cond_2c

    move-object v2, v4

    goto :goto_14

    :cond_2c
    instance-of p0, p1, Lorg/json/JSONObject;

    if-eqz p0, :cond_2d

    move-object v2, v3

    goto :goto_14

    :cond_2d
    instance-of p0, p1, Lorg/json/JSONArray;

    if-eqz p0, :cond_2e

    goto :goto_14

    :cond_2e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v1, v2, v0, p3}, Lpg;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p0}, Lyads/o01;->a(Lyads/vq0;Ljava/lang/Throwable;)V

    :cond_2f
    if-eqz v6, :cond_37

    invoke-virtual {p4, v6}, Lyads/u66;->c(Ljava/lang/String;)V

    return-object p4

    :cond_30
    instance-of p0, p4, Lyads/t66;

    if-eqz p0, :cond_37

    instance-of p0, p1, Landroid/net/Uri;

    if-nez p0, :cond_31

    goto :goto_15

    :cond_31
    move-object v6, p1

    :goto_15
    check-cast v6, Landroid/net/Uri;

    if-nez v6, :cond_36

    instance-of p0, p1, Ljava/lang/Integer;

    if-eqz p0, :cond_32

    goto :goto_16

    :cond_32
    instance-of v5, p1, Ljava/lang/Double;

    :goto_16
    if-eqz v5, :cond_33

    move-object v2, v4

    goto :goto_17

    :cond_33
    instance-of p0, p1, Lorg/json/JSONObject;

    if-eqz p0, :cond_34

    move-object v2, v3

    goto :goto_17

    :cond_34
    instance-of p0, p1, Lorg/json/JSONArray;

    if-eqz p0, :cond_35

    goto :goto_17

    :cond_35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v1, v2, v0, p3}, Lpg;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p0}, Lyads/o01;->a(Lyads/vq0;Ljava/lang/Throwable;)V

    :cond_36
    if-eqz v6, :cond_37

    move-object p0, p4

    check-cast p0, Lyads/t66;

    invoke-virtual {p0, v6}, Lyads/t66;->a(Landroid/net/Uri;)V

    :cond_37
    return-object p4
.end method


# virtual methods
.method public final a(Lyads/ly0;Lyads/vq0;Lyads/fs2;)V
    .locals 2

    .line 614
    iget-object v0, p1, Lyads/ly0;->a:Lyads/kw0;

    .line 615
    iget-object v0, v0, Lyads/kw0;->b:Lyads/as2;

    invoke-virtual {v0, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 616
    iget-object p1, p1, Lyads/ly0;->a:Lyads/kw0;

    .line 617
    iget-object p1, p1, Lyads/kw0;->a:Lyads/oe2;

    invoke-static {p1, p3}, Lyads/o01;->c(Lyads/oe2;Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    .line 618
    new-instance v1, Ljz9;

    invoke-direct {v1, p0, p1, p2, v0}, Ljz9;-><init>(Lyads/iz0;Ljava/lang/Object;Lyads/vq0;Ljava/lang/String;)V

    invoke-static {p2, v0, p3, v1}, Lyads/l76;->a(Lyads/vq0;Ljava/lang/String;Lyads/fs2;Lnl3;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lyads/ry0;Lyads/vq0;Lyads/fs2;)Z
    .locals 0

    .line 619
    instance-of p1, p2, Lyads/ly0;

    if-eqz p1, :cond_0

    .line 620
    check-cast p2, Lyads/ly0;

    invoke-virtual {p0, p2, p3, p4}, Lyads/iz0;->a(Lyads/ly0;Lyads/vq0;Lyads/fs2;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
