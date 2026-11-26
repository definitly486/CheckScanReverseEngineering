.class public final enum Lcy3$c;
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

    const-string v0, "InColumnGroup"

    const/16 v1, 0xb

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Lgx8;Lby3;)Z
    .locals 9

    invoke-static {p1}, Lcy3;->d(Lgx8;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    check-cast p1, Lgx8$b;

    invoke-virtual {p2, p1, v1}, Lby3;->z(Lgx8$b;Z)V

    return v2

    :cond_0
    sget-object v0, Lcy3$q;->a:[I

    iget-object v3, p1, Lgx8;->a:Lgx8$i;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v2, :cond_c

    const/4 v3, 0x2

    if-eq v0, v3, :cond_b

    const/4 v4, 0x3

    const-string v5, "template"

    const-string v6, "html"

    if-eq v0, v4, :cond_7

    const/4 v3, 0x4

    if-eq v0, v3, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lcy3$c;->g(Lgx8;Lby3;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p2, v6}, Lh39;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcy3$c;->g(Lgx8;Lby3;)Z

    move-result p0

    return p0

    :cond_3
    move-object v0, p1

    check-cast v0, Lgx8$f;

    invoke-virtual {v0}, Lgx8$h;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "colgroup"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0, p1, p2}, Lcy3$c;->g(Lgx8;Lby3;)Z

    move-result p0

    return p0

    :cond_4
    invoke-virtual {p2, v0}, Lh39;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    return v1

    :cond_5
    invoke-virtual {p2}, Lh39;->d()Lorg/jsoup/nodes/h;

    sget-object p0, Lcy3;->InTable:Lcy3;

    iput-object p0, p2, Lby3;->l:Lcy3;

    return v2

    :cond_6
    sget-object p0, Lcy3;->InHead:Lcy3;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcy3;->f(Lgx8;Lby3;)Z

    return v2

    :cond_7
    move-object v0, p1

    check-cast v0, Lgx8$g;

    invoke-virtual {v0}, Lgx8$h;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, -0x1

    sparse-switch v7, :sswitch_data_0

    :goto_0
    move v1, v8

    goto :goto_1

    :sswitch_0
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    move v1, v3

    goto :goto_1

    :sswitch_1
    const-string v1, "col"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    move v1, v2

    goto :goto_1

    :sswitch_2
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_0

    :cond_a
    :goto_1
    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lcy3$c;->g(Lgx8;Lby3;)Z

    move-result p0

    return p0

    :pswitch_0
    sget-object p0, Lcy3;->InBody:Lcy3;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcy3;->f(Lgx8;Lby3;)Z

    move-result p0

    return p0

    :pswitch_1
    invoke-virtual {p2, v0}, Lby3;->D(Lgx8$g;)Lorg/jsoup/nodes/h;

    return v2

    :pswitch_2
    sget-object p0, Lcy3;->InHead:Lcy3;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcy3;->f(Lgx8;Lby3;)Z

    return v2

    :cond_b
    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    return v2

    :cond_c
    check-cast p1, Lgx8$c;

    invoke-virtual {p2, p1}, Lby3;->B(Lgx8$c;)V

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4ec53386 -> :sswitch_2
        0x18180 -> :sswitch_1
        0x3107ab -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Lgx8;Lby3;)Z
    .locals 1

    const-string v0, "colgroup"

    invoke-virtual {p2, v0}, Lh39;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p2}, Lh39;->d()Lorg/jsoup/nodes/h;

    sget-object p0, Lcy3;->InTable:Lcy3;

    iput-object p0, p2, Lby3;->l:Lcy3;

    invoke-virtual {p2, p1}, Lby3;->e(Lgx8;)Z

    const/4 p0, 0x1

    return p0
.end method
