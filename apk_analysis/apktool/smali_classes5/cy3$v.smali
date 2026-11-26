.class public final enum Lcy3$v;
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

    const-string v0, "AfterHead"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Lgx8;Lby3;)Z
    .locals 6

    invoke-static {p1}, Lcy3;->d(Lgx8;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lgx8$b;

    invoke-virtual {p2, p1, v2}, Lby3;->z(Lgx8$b;Z)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Lgx8;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lgx8$c;

    invoke-virtual {p2, p1}, Lby3;->B(Lgx8$c;)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Lgx8;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Lgx8;->e()Z

    move-result v0

    const-string v3, "body"

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lgx8$g;

    invoke-virtual {v0}, Lgx8$h;->l()Ljava/lang/String;

    move-result-object v4

    const-string v5, "html"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object p0, Lcy3;->InBody:Lcy3;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcy3;->f(Lgx8;Lby3;)Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p2, v0}, Lby3;->C(Lgx8$g;)Lorg/jsoup/nodes/h;

    iput-boolean v2, p2, Lby3;->u:Z

    sget-object p0, Lcy3;->InBody:Lcy3;

    iput-object p0, p2, Lby3;->l:Lcy3;

    goto/16 :goto_0

    :cond_4
    const-string v5, "frameset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p2, v0}, Lby3;->C(Lgx8$g;)Lorg/jsoup/nodes/h;

    sget-object p0, Lcy3;->InFrameset:Lcy3;

    iput-object p0, p2, Lby3;->l:Lcy3;

    goto :goto_0

    :cond_5
    sget-object v0, Lcy3$z;->g:[Ljava/lang/String;

    invoke-static {v4, v0}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    iget-object p0, p2, Lby3;->o:Lorg/jsoup/nodes/h;

    iget-object v0, p2, Lh39;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcy3;->InHead:Lcy3;

    invoke-virtual {v0, p1, p2}, Lcy3;->f(Lgx8;Lby3;)Z

    invoke-virtual {p2, p0}, Lby3;->P(Lorg/jsoup/nodes/h;)V

    goto :goto_0

    :cond_6
    const-string v0, "head"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    return v2

    :cond_7
    invoke-virtual {p2, v3}, Lh39;->g(Ljava/lang/String;)V

    iput-boolean v1, p2, Lby3;->u:Z

    invoke-virtual {p2, p1}, Lby3;->e(Lgx8;)Z

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Lgx8;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Lgx8$f;

    invoke-virtual {v0}, Lgx8$h;->l()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcy3$z;->d:[Ljava/lang/String;

    invoke-static {v0, v4}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p2, v3}, Lh39;->g(Ljava/lang/String;)V

    iput-boolean v1, p2, Lby3;->u:Z

    invoke-virtual {p2, p1}, Lby3;->e(Lgx8;)Z

    goto :goto_0

    :cond_9
    const-string v3, "template"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object p0, Lcy3;->InHead:Lcy3;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcy3;->f(Lgx8;Lby3;)Z

    goto :goto_0

    :cond_a
    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    return v2

    :cond_b
    invoke-virtual {p2, v3}, Lh39;->g(Ljava/lang/String;)V

    iput-boolean v1, p2, Lby3;->u:Z

    invoke-virtual {p2, p1}, Lby3;->e(Lgx8;)Z

    :goto_0
    return v1
.end method
