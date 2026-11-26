.class public final enum Lcy3$y;
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

    const-string v0, "InTable"

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Lgx8;Lby3;)Z
    .locals 8

    iget-object v0, p1, Lgx8;->a:Lgx8$i;

    sget-object v1, Lgx8$i;->Character:Lgx8$i;

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lh39;->a()Lorg/jsoup/nodes/h;

    move-result-object v0

    iget-object v0, v0, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object v0, v0, Ljj8;->d:Ljava/lang/String;

    sget-object v1, Lcy3$z;->z:[Ljava/lang/String;

    invoke-static {v0, v1}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p2, Lby3;->s:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p2, Lby3;->l:Lcy3;

    iput-object p0, p2, Lby3;->m:Lcy3;

    sget-object p0, Lcy3;->InTableText:Lcy3;

    iput-object p0, p2, Lby3;->l:Lcy3;

    invoke-virtual {p2, p1}, Lby3;->e(Lgx8;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Lgx8;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    check-cast p1, Lgx8$c;

    invoke-virtual {p2, p1}, Lby3;->B(Lgx8$c;)V

    return v1

    :cond_1
    invoke-virtual {p1}, Lgx8;->b()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    return v2

    :cond_2
    invoke-virtual {p1}, Lgx8;->e()Z

    move-result v0

    const-string v3, "template"

    const-string v4, "table"

    if-eqz v0, :cond_12

    move-object v0, p1

    check-cast v0, Lgx8$g;

    invoke-virtual {v0}, Lgx8$h;->l()Ljava/lang/String;

    move-result-object v5

    const-string v6, "caption"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p2}, Lby3;->m()V

    iget-object p0, p2, Lby3;->q:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v0}, Lby3;->C(Lgx8$g;)Lorg/jsoup/nodes/h;

    sget-object p0, Lcy3;->InCaption:Lcy3;

    iput-object p0, p2, Lby3;->l:Lcy3;

    return v1

    :cond_3
    const-string v6, "colgroup"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p2}, Lby3;->m()V

    invoke-virtual {p2, v0}, Lby3;->C(Lgx8$g;)Lorg/jsoup/nodes/h;

    sget-object p0, Lcy3;->InColumnGroup:Lcy3;

    iput-object p0, p2, Lby3;->l:Lcy3;

    return v1

    :cond_4
    const-string v7, "col"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p2}, Lby3;->m()V

    invoke-virtual {p2, v6}, Lh39;->g(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lby3;->e(Lgx8;)Z

    move-result p0

    return p0

    :cond_5
    sget-object v6, Lcy3$z;->r:[Ljava/lang/String;

    invoke-static {v5, v6}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p2}, Lby3;->m()V

    invoke-virtual {p2, v0}, Lby3;->C(Lgx8$g;)Lorg/jsoup/nodes/h;

    sget-object p0, Lcy3;->InTableBody:Lcy3;

    iput-object p0, p2, Lby3;->l:Lcy3;

    return v1

    :cond_6
    sget-object v6, Lcy3$z;->s:[Ljava/lang/String;

    invoke-static {v5, v6}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p2}, Lby3;->m()V

    const-string p0, "tbody"

    invoke-virtual {p2, p0}, Lh39;->g(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lby3;->e(Lgx8;)Z

    move-result p0

    return p0

    :cond_7
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    invoke-virtual {p2, v5}, Lby3;->y(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {p2, v5}, Lby3;->K(Ljava/lang/String;)V

    invoke-virtual {p2}, Lby3;->Q()Z

    move-result p0

    if-nez p0, :cond_9

    invoke-virtual {p2, v0}, Lby3;->C(Lgx8$g;)Lorg/jsoup/nodes/h;

    return v1

    :cond_9
    invoke-virtual {p2, p1}, Lby3;->e(Lgx8;)Z

    move-result p0

    return p0

    :cond_a
    sget-object v4, Lcy3$z;->t:[Ljava/lang/String;

    invoke-static {v5, v4}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    sget-object p0, Lcy3;->InHead:Lcy3;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcy3;->f(Lgx8;Lby3;)Z

    move-result p0

    return p0

    :cond_b
    const-string v4, "input"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v2, v0, Lgx8$h;->g:Lorg/jsoup/nodes/b;

    if-eqz v2, :cond_d

    const-string v3, "type"

    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hidden"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_0

    :cond_c
    invoke-virtual {p2, v0}, Lby3;->D(Lgx8$g;)Lorg/jsoup/nodes/h;

    return v1

    :cond_d
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcy3$y;->g(Lgx8;Lby3;)V

    return v1

    :cond_e
    const-string v4, "form"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    iget-object p0, p2, Lby3;->p:Lorg/jsoup/nodes/l;

    if-nez p0, :cond_10

    invoke-virtual {p2, v3}, Lby3;->H(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_1

    :cond_f
    invoke-virtual {p2, v0, v2, v2}, Lby3;->F(Lgx8$g;ZZ)V

    return v1

    :cond_10
    :goto_1
    return v2

    :cond_11
    invoke-virtual {p0, p1, p2}, Lcy3$y;->g(Lgx8;Lby3;)V

    return v1

    :cond_12
    invoke-virtual {p1}, Lgx8;->d()Z

    move-result v0

    if-eqz v0, :cond_17

    move-object v0, p1

    check-cast v0, Lgx8$f;

    invoke-virtual {v0}, Lgx8$h;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {p2, v0}, Lby3;->y(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_13

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    return v2

    :cond_13
    invoke-virtual {p2, v4}, Lby3;->K(Ljava/lang/String;)V

    invoke-virtual {p2}, Lby3;->Q()Z

    return v1

    :cond_14
    sget-object v4, Lcy3$z;->y:[Ljava/lang/String;

    invoke-static {v0, v4}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    return v2

    :cond_15
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object p0, Lcy3;->InHead:Lcy3;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcy3;->f(Lgx8;Lby3;)Z

    return v1

    :cond_16
    invoke-virtual {p0, p1, p2}, Lcy3$y;->g(Lgx8;Lby3;)V

    return v1

    :cond_17
    invoke-virtual {p1}, Lgx8;->c()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string p1, "html"

    invoke-virtual {p2, p1}, Lh39;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    :cond_18
    return v1

    :cond_19
    invoke-virtual {p0, p1, p2}, Lcy3$y;->g(Lgx8;Lby3;)V

    return v1
.end method

.method public final g(Lgx8;Lby3;)V
    .locals 0

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    const/4 p0, 0x1

    iput-boolean p0, p2, Lby3;->v:Z

    sget-object p0, Lcy3;->InBody:Lcy3;

    invoke-virtual {p0, p1, p2}, Lcy3;->f(Lgx8;Lby3;)Z

    const/4 p0, 0x0

    iput-boolean p0, p2, Lby3;->v:Z

    return-void
.end method
