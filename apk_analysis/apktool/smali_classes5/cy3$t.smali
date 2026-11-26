.class public final enum Lcy3$t;
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

    const-string v0, "InHead"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Lgx8;Lby3;)Z
    .locals 7

    invoke-static {p1}, Lcy3;->d(Lgx8;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lgx8$b;

    invoke-virtual {p2, p1, v2}, Lby3;->z(Lgx8$b;Z)V

    return v1

    :cond_0
    sget-object v0, Lcy3$q;->a:[I

    iget-object v3, p1, Lgx8;->a:Lgx8$i;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v1, :cond_14

    const/4 v3, 0x2

    if-eq v0, v3, :cond_13

    const/4 v3, 0x3

    const-string v4, "template"

    const-string v5, "head"

    if-eq v0, v3, :cond_7

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    invoke-virtual {p2, v5}, Lh39;->f(Ljava/lang/String;)Z

    invoke-virtual {p2, p1}, Lby3;->e(Lgx8;)Z

    move-result p0

    return p0

    :cond_1
    move-object v0, p1

    check-cast v0, Lgx8$f;

    invoke-virtual {v0}, Lgx8$h;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Lh39;->d()Lorg/jsoup/nodes/h;

    sget-object p0, Lcy3;->AfterHead:Lcy3;

    iput-object p0, p2, Lby3;->l:Lcy3;

    return v1

    :cond_2
    sget-object v3, Lcy3$z;->c:[Ljava/lang/String;

    invoke-static {v0, v3}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2, v5}, Lh39;->f(Ljava/lang/String;)Z

    invoke-virtual {p2, p1}, Lby3;->e(Lgx8;)Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p2, v0}, Lby3;->H(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    return v1

    :cond_4
    invoke-virtual {p2, v1}, Lby3;->s(Z)V

    invoke-virtual {p2, v0}, Lh39;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    :cond_5
    invoke-virtual {p2, v0}, Lby3;->K(Ljava/lang/String;)V

    invoke-virtual {p2}, Lby3;->k()V

    invoke-virtual {p2}, Lby3;->L()V

    invoke-virtual {p2}, Lby3;->Q()Z

    return v1

    :cond_6
    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    return v2

    :cond_7
    move-object v0, p1

    check-cast v0, Lgx8$g;

    invoke-virtual {v0}, Lgx8$h;->l()Ljava/lang/String;

    move-result-object v3

    const-string v6, "html"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object p0, Lcy3;->InBody:Lcy3;

    invoke-virtual {p0, p1, p2}, Lcy3;->f(Lgx8;Lby3;)Z

    move-result p0

    return p0

    :cond_8
    sget-object v6, Lcy3$z;->a:[Ljava/lang/String;

    invoke-static {v3, v6}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {p2, v0}, Lby3;->D(Lgx8$g;)Lorg/jsoup/nodes/h;

    move-result-object p0

    const-string p1, "base"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "href"

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/n;->r(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p2, Lby3;->n:Z

    if-eqz v0, :cond_9

    goto :goto_0

    :cond_9
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_a

    iput-object p0, p2, Lh39;->f:Ljava/lang/String;

    iput-boolean v1, p2, Lby3;->n:Z

    iget-object p1, p2, Lh39;->d:Lorg/jsoup/nodes/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p0}, Lorg/jsoup/nodes/h;->H(Ljava/lang/String;)V

    :cond_a
    :goto_0
    return v1

    :cond_b
    const-string v6, "meta"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {p2, v0}, Lby3;->D(Lgx8$g;)Lorg/jsoup/nodes/h;

    return v1

    :cond_c
    const-string v6, "title"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {p2, v0}, Lh39;->h(Lgx8$g;)Ljj8;

    move-result-object p0

    invoke-virtual {p0}, Ljj8;->k()Lkx8;

    move-result-object p0

    invoke-static {v0, p2, p0}, Lcy3;->a(Lgx8$g;Lby3;Lkx8;)V

    return v1

    :cond_d
    sget-object v6, Lcy3$z;->b:[Ljava/lang/String;

    invoke-static {v3, v6}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {p2, v0}, Lh39;->h(Lgx8$g;)Ljj8;

    move-result-object p0

    invoke-virtual {p0}, Ljj8;->k()Lkx8;

    move-result-object p0

    invoke-static {v0, p2, p0}, Lcy3;->a(Lgx8$g;Lby3;Lkx8;)V

    return v1

    :cond_e
    const-string v6, "noscript"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {p2, v0}, Lby3;->C(Lgx8$g;)Lorg/jsoup/nodes/h;

    sget-object p0, Lcy3;->InHeadNoscript:Lcy3;

    iput-object p0, p2, Lby3;->l:Lcy3;

    return v1

    :cond_f
    const-string v6, "script"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object p0, p2, Lh39;->c:Ljx8;

    sget-object p1, Lkx8;->ScriptData:Lkx8;

    invoke-virtual {p0, p1}, Ljx8;->o(Lkx8;)V

    iget-object p0, p2, Lby3;->l:Lcy3;

    iput-object p0, p2, Lby3;->m:Lcy3;

    sget-object p0, Lcy3;->Text:Lcy3;

    iput-object p0, p2, Lby3;->l:Lcy3;

    invoke-virtual {p2, v0}, Lby3;->C(Lgx8$g;)Lorg/jsoup/nodes/h;

    return v1

    :cond_10
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    return v2

    :cond_11
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    invoke-virtual {p2, v0}, Lby3;->C(Lgx8$g;)Lorg/jsoup/nodes/h;

    iget-object p0, p2, Lby3;->q:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v2, p2, Lby3;->u:Z

    sget-object p0, Lcy3;->InTemplate:Lcy3;

    iput-object p0, p2, Lby3;->l:Lcy3;

    invoke-virtual {p2, p0}, Lby3;->M(Lcy3;)V

    return v1

    :cond_12
    invoke-virtual {p2, v5}, Lh39;->f(Ljava/lang/String;)Z

    invoke-virtual {p2, p1}, Lby3;->e(Lgx8;)Z

    move-result p0

    return p0

    :cond_13
    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    return v2

    :cond_14
    check-cast p1, Lgx8$c;

    invoke-virtual {p2, p1}, Lby3;->B(Lgx8$c;)V

    return v1
.end method
