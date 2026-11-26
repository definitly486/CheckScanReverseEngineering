.class public final enum Lcy3$g;
.super Lcy3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "InSelect"

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Lgx8;Lby3;)Z
    .locals 9

    sget-object v0, Lcy3$q;->a:[I

    iget-object v1, p1, Lgx8;->a:Lgx8$i;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "template"

    const-string v3, "html"

    const-string v4, "select"

    const-string v5, "optgroup"

    const/4 v6, 0x0

    const-string v7, "option"

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    return v6

    :pswitch_0
    invoke-virtual {p2, v3}, Lh39;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_13

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    goto/16 :goto_2

    :pswitch_1
    check-cast p1, Lgx8$b;

    invoke-virtual {p2, p1, v6}, Lby3;->z(Lgx8$b;Z)V

    goto/16 :goto_2

    :pswitch_2
    move-object v0, p1

    check-cast v0, Lgx8$f;

    invoke-virtual {v0}, Lgx8$h;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v8, -0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x3

    goto :goto_0

    :sswitch_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v8, 0x2

    goto :goto_0

    :sswitch_2
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v8, v1

    goto :goto_0

    :sswitch_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move v8, v6

    :goto_0
    packed-switch v8, :pswitch_data_1

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    return v6

    :pswitch_3
    invoke-virtual {p2, v7}, Lh39;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lh39;->a()Lorg/jsoup/nodes/h;

    move-result-object p1

    invoke-virtual {p2, p1}, Lby3;->i(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/h;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lh39;->a()Lorg/jsoup/nodes/h;

    move-result-object p1

    invoke-virtual {p2, p1}, Lby3;->i(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/h;

    move-result-object p1

    invoke-virtual {p1, v5}, Lorg/jsoup/nodes/n;->t(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p2, v7}, Lh39;->f(Ljava/lang/String;)Z

    :cond_4
    invoke-virtual {p2, v5}, Lh39;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lh39;->d()Lorg/jsoup/nodes/h;

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p2, v0}, Lby3;->w(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    return v6

    :cond_6
    invoke-virtual {p2, v0}, Lby3;->K(Ljava/lang/String;)V

    invoke-virtual {p2}, Lby3;->Q()Z

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p2, v7}, Lh39;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p2}, Lh39;->d()Lorg/jsoup/nodes/h;

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    goto/16 :goto_2

    :pswitch_6
    sget-object p0, Lcy3;->InHead:Lcy3;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcy3;->f(Lgx8;Lby3;)Z

    move-result p0

    return p0

    :pswitch_7
    move-object v0, p1

    check-cast v0, Lgx8$g;

    invoke-virtual {v0}, Lgx8$h;->l()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object p0, Lcy3;->InBody:Lcy3;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0, p2}, Lcy3;->f(Lgx8;Lby3;)Z

    move-result p0

    return p0

    :cond_8
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p2, v7}, Lh39;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-virtual {p2, v7}, Lh39;->f(Ljava/lang/String;)Z

    :cond_9
    invoke-virtual {p2, v0}, Lby3;->C(Lgx8$g;)Lorg/jsoup/nodes/h;

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p2, v7}, Lh39;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-virtual {p2, v7}, Lh39;->f(Ljava/lang/String;)Z

    :cond_b
    invoke-virtual {p2, v5}, Lh39;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    invoke-virtual {p2, v5}, Lh39;->f(Ljava/lang/String;)Z

    :cond_c
    invoke-virtual {p2, v0}, Lby3;->C(Lgx8$g;)Lorg/jsoup/nodes/h;

    goto :goto_2

    :cond_d
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    invoke-virtual {p2, v4}, Lh39;->f(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_e
    sget-object v1, Lcy3$z;->E:[Ljava/lang/String;

    invoke-static {v8, v1}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    invoke-virtual {p2, v4}, Lby3;->w(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_f

    return v6

    :cond_f
    invoke-virtual {p2, v4}, Lby3;->K(Ljava/lang/String;)V

    invoke-virtual {p2}, Lby3;->Q()Z

    invoke-virtual {p2, v4}, Lby3;->w(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_f

    invoke-virtual {p2, v0}, Lby3;->e(Lgx8;)Z

    move-result p0

    return p0

    :cond_10
    const-string v0, "script"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1

    :cond_11
    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    return v6

    :cond_12
    :goto_1
    sget-object p0, Lcy3;->InHead:Lcy3;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcy3;->f(Lgx8;Lby3;)Z

    move-result p0

    return p0

    :pswitch_8
    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    return v6

    :pswitch_9
    check-cast p1, Lgx8$c;

    invoke-virtual {p2, p1}, Lby3;->B(Lgx8$c;)V

    :cond_13
    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x4ec53386 -> :sswitch_3
        -0x3c35778b -> :sswitch_2
        -0x3600cb04 -> :sswitch_1
        -0x4d08054 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
