.class public final enum Lcy3$p;
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

    const-string v0, "ForeignContent"

    const/16 v1, 0x17

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Lgx8;Lby3;)Z
    .locals 6

    sget-object v0, Lcy3$q;->a:[I

    iget-object v1, p1, Lgx8;->a:Lgx8$i;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const-string v2, "script"

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    const-string p0, "Unexpected state: "

    iget-object p1, p1, Lgx8;->a:Lgx8$i;

    invoke-static {p1, p0}, Lqz0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :pswitch_0
    check-cast p1, Lgx8$b;

    invoke-static {p1}, Lcy3;->d(Lgx8;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2, p1, v1}, Lby3;->z(Lgx8$b;Z)V

    return v3

    :cond_0
    invoke-virtual {p2, p1, v3}, Lby3;->z(Lgx8$b;Z)V

    iput-boolean v1, p2, Lby3;->u:Z

    return v3

    :pswitch_1
    move-object v0, p1

    check-cast v0, Lgx8$f;

    iget-object v4, v0, Lgx8$h;->e:Ljava/lang/String;

    const-string v5, "br"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, v0, Lgx8$h;->e:Ljava/lang/String;

    const-string v5, "p"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v4, v0, Lgx8$h;->e:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p2, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lh39;->a()Lorg/jsoup/nodes/h;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, v4, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object v5, v4, Ljj8;->d:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v4, Ljj8;->b:Ljava/lang/String;

    const-string v4, "http://www.w3.org/2000/svg"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lh39;->d()Lorg/jsoup/nodes/h;

    return v3

    :cond_3
    :goto_0
    iget-object v2, p2, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/h;

    iget-object v5, v0, Lgx8$h;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/jsoup/nodes/n;->t(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    :cond_4
    if-eqz v1, :cond_e

    iget-object p0, v0, Lgx8$h;->e:Ljava/lang/String;

    invoke-virtual {v4, p0}, Lorg/jsoup/nodes/n;->t(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    iget-object p0, v4, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object p0, p0, Ljj8;->d:Ljava/lang/String;

    iget-object p1, p2, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v3

    :goto_1
    if-ltz p1, :cond_e

    invoke-virtual {p2}, Lh39;->d()Lorg/jsoup/nodes/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/n;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_4

    :cond_5
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lorg/jsoup/nodes/h;

    iget-object p0, v4, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object p0, p0, Ljj8;->b:Ljava/lang/String;

    const-string v5, "http://www.w3.org/1999/xhtml"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, p2, Lby3;->l:Lcy3;

    invoke-virtual {p0, p1, p2}, Lcy3;->f(Lgx8;Lby3;)Z

    move-result p0

    return p0

    :cond_7
    const-string p0, "Stack unexpectedly empty"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return v1

    :cond_8
    :goto_2
    iget-object p0, p2, Lby3;->l:Lcy3;

    invoke-virtual {p0, p1, p2}, Lcy3;->f(Lgx8;Lby3;)Z

    move-result p0

    return p0

    :pswitch_2
    move-object p0, p1

    check-cast p0, Lgx8$g;

    iget-object v0, p0, Lgx8$h;->e:Ljava/lang/String;

    sget-object v1, Lcy3$z;->L:[Ljava/lang/String;

    invoke-static {v0, v1}, Lja8;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p2, Lby3;->l:Lcy3;

    invoke-virtual {p0, p1, p2}, Lcy3;->f(Lgx8;Lby3;)Z

    move-result p0

    return p0

    :cond_9
    iget-object v0, p0, Lgx8$h;->e:Ljava/lang/String;

    const-string v1, "font"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lgx8$h;->g:Lorg/jsoup/nodes/b;

    const/4 v1, -0x1

    if-eqz v0, :cond_a

    const-string v4, "color"

    invoke-virtual {v0, v4}, Lorg/jsoup/nodes/b;->p(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_a

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lgx8$h;->g:Lorg/jsoup/nodes/b;

    if-eqz v0, :cond_b

    const-string v4, "face"

    invoke-virtual {v0, v4}, Lorg/jsoup/nodes/b;->p(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_b

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lgx8$h;->g:Lorg/jsoup/nodes/b;

    if-eqz v0, :cond_c

    const-string v4, "size"

    invoke-virtual {v0, v4}, Lorg/jsoup/nodes/b;->p(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_c

    :goto_3
    iget-object p0, p2, Lby3;->l:Lcy3;

    invoke-virtual {p0, p1, p2}, Lcy3;->f(Lgx8;Lby3;)Z

    move-result p0

    return p0

    :cond_c
    invoke-virtual {p2}, Lh39;->a()Lorg/jsoup/nodes/h;

    move-result-object p1

    iget-object p1, p1, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object p1, p1, Ljj8;->b:Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Lby3;->E(Lgx8$g;Ljava/lang/String;)V

    iget-object v0, p0, Lgx8$h;->d:Lm54;

    invoke-virtual {v0}, Lm54;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgx8$h;->e:Ljava/lang/String;

    iget-object v4, p2, Lh39;->h:Lq36;

    iget-object v5, p2, Lh39;->i:Lbk8;

    iget-boolean v4, v4, Lq36;->a:Z

    invoke-virtual {v5, v0, v1, p1, v4}, Lbk8;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljj8;

    move-result-object p1

    invoke-virtual {p1}, Ljj8;->k()Lkx8;

    move-result-object p1

    if-eqz p1, :cond_e

    iget-object p0, p0, Lgx8$h;->e:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    iget-object p2, p2, Lh39;->c:Ljx8;

    if-eqz p0, :cond_d

    sget-object p0, Lkx8;->ScriptData:Lkx8;

    invoke-virtual {p2, p0}, Ljx8;->o(Lkx8;)V

    return v3

    :cond_d
    invoke-virtual {p2, p1}, Ljx8;->o(Lkx8;)V

    :cond_e
    :goto_4
    :pswitch_3
    return v3

    :pswitch_4
    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    return v3

    :pswitch_5
    check-cast p1, Lgx8$c;

    invoke-virtual {p2, p1}, Lby3;->B(Lgx8$c;)V

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
