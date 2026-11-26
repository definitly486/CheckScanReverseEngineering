.class public final enum Lcy3$e;
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

    const-string v0, "InRow"

    const/16 v1, 0xd

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Lgx8;Lby3;)Z
    .locals 5

    invoke-virtual {p1}, Lgx8;->e()Z

    move-result v0

    const-string v1, "tr"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lgx8$g;

    invoke-virtual {v0}, Lgx8$h;->l()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcy3$z;->u:[Ljava/lang/String;

    invoke-static {v3, v4}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Lby3;->n()V

    invoke-virtual {p2, v0}, Lby3;->C(Lgx8$g;)Lorg/jsoup/nodes/h;

    sget-object p0, Lcy3;->InCell:Lcy3;

    iput-object p0, p2, Lby3;->l:Lcy3;

    iget-object p0, p2, Lby3;->q:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v0, Lcy3$z;->C:[Ljava/lang/String;

    invoke-static {v3, v0}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, v1}, Lby3;->y(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    return v2

    :cond_1
    invoke-virtual {p2}, Lby3;->n()V

    invoke-virtual {p2}, Lh39;->d()Lorg/jsoup/nodes/h;

    sget-object p0, Lcy3;->InTableBody:Lcy3;

    iput-object p0, p2, Lby3;->l:Lcy3;

    invoke-virtual {p2, p1}, Lby3;->e(Lgx8;)Z

    move-result p0

    return p0

    :cond_2
    sget-object p0, Lcy3;->InTable:Lcy3;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcy3;->f(Lgx8;Lby3;)Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p1}, Lgx8;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Lgx8$f;

    invoke-virtual {v0}, Lgx8$h;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p2, v0}, Lby3;->y(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    return v2

    :cond_4
    invoke-virtual {p2}, Lby3;->n()V

    invoke-virtual {p2}, Lh39;->d()Lorg/jsoup/nodes/h;

    sget-object p0, Lcy3;->InTableBody:Lcy3;

    iput-object p0, p2, Lby3;->l:Lcy3;

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_5
    const-string v3, "table"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p2, v1}, Lby3;->y(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    return v2

    :cond_6
    invoke-virtual {p2}, Lby3;->n()V

    invoke-virtual {p2}, Lh39;->d()Lorg/jsoup/nodes/h;

    sget-object p0, Lcy3;->InTableBody:Lcy3;

    iput-object p0, p2, Lby3;->l:Lcy3;

    invoke-virtual {p2, p1}, Lby3;->e(Lgx8;)Z

    move-result p0

    return p0

    :cond_7
    sget-object v3, Lcy3$z;->r:[Ljava/lang/String;

    invoke-static {v0, v3}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p2, v0}, Lby3;->y(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    return v2

    :cond_8
    invoke-virtual {p2, v1}, Lby3;->y(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    invoke-virtual {p2}, Lby3;->n()V

    invoke-virtual {p2}, Lh39;->d()Lorg/jsoup/nodes/h;

    sget-object p0, Lcy3;->InTableBody:Lcy3;

    iput-object p0, p2, Lby3;->l:Lcy3;

    invoke-virtual {p2, p1}, Lby3;->e(Lgx8;)Z

    move-result p0

    return p0

    :cond_a
    sget-object v1, Lcy3$z;->D:[Ljava/lang/String;

    invoke-static {v0, v1}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    return v2

    :cond_b
    sget-object p0, Lcy3;->InTable:Lcy3;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcy3;->f(Lgx8;Lby3;)Z

    move-result p0

    return p0

    :cond_c
    sget-object p0, Lcy3;->InTable:Lcy3;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcy3;->f(Lgx8;Lby3;)Z

    move-result p0

    return p0
.end method
