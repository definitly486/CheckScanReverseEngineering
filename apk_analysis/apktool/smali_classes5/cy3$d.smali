.class public final enum Lcy3$d;
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

    const-string v0, "InTableBody"

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Lgx8;Lby3;)Z
    .locals 8

    sget-object v0, Lcy3$q;->a:[I

    iget-object v1, p1, Lgx8;->a:Lgx8$i;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const-string v2, "template"

    const-string v3, "thead"

    const-string v4, "tfoot"

    const-string v5, "tbody"

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    sget-object p0, Lcy3;->InTable:Lcy3;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcy3;->f(Lgx8;Lby3;)Z

    move-result p0

    return p0

    :cond_0
    move-object v0, p1

    check-cast v0, Lgx8$f;

    invoke-virtual {v0}, Lgx8$h;->l()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcy3$z;->G:[Ljava/lang/String;

    invoke-static {v0, v1}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p2, v0}, Lby3;->y(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    return v6

    :cond_1
    filled-new-array {v5, v4, v3, v2}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lby3;->l([Ljava/lang/String;)V

    invoke-virtual {p2}, Lh39;->d()Lorg/jsoup/nodes/h;

    sget-object p0, Lcy3;->InTable:Lcy3;

    iput-object p0, p2, Lby3;->l:Lcy3;

    goto :goto_0

    :cond_2
    const-string v1, "table"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, p2}, Lcy3$d;->g(Lgx8;Lby3;)Z

    move-result p0

    return p0

    :cond_3
    sget-object v1, Lcy3$z;->B:[Ljava/lang/String;

    invoke-static {v0, v1}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    return v6

    :cond_4
    sget-object p0, Lcy3;->InTable:Lcy3;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcy3;->f(Lgx8;Lby3;)Z

    move-result p0

    return p0

    :cond_5
    move-object v0, p1

    check-cast v0, Lgx8$g;

    invoke-virtual {v0}, Lgx8$h;->l()Ljava/lang/String;

    move-result-object v1

    const-string v6, "tr"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    filled-new-array {v5, v4, v3, v2}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lby3;->l([Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lby3;->C(Lgx8$g;)Lorg/jsoup/nodes/h;

    sget-object p0, Lcy3;->InRow:Lcy3;

    iput-object p0, p2, Lby3;->l:Lcy3;

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_6
    sget-object v2, Lcy3$z;->u:[Ljava/lang/String;

    invoke-static {v1, v2}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    invoke-virtual {p2, v6}, Lh39;->g(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lby3;->e(Lgx8;)Z

    move-result p0

    return p0

    :cond_7
    sget-object v0, Lcy3$z;->A:[Ljava/lang/String;

    invoke-static {v1, v0}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, p1, p2}, Lcy3$d;->g(Lgx8;Lby3;)Z

    move-result p0

    return p0

    :cond_8
    sget-object p0, Lcy3;->InTable:Lcy3;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcy3;->f(Lgx8;Lby3;)Z

    move-result p0

    return p0
.end method

.method public final g(Lgx8;Lby3;)Z
    .locals 4

    const-string v0, "tbody"

    invoke-virtual {p2, v0}, Lby3;->y(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "tfoot"

    const-string v3, "thead"

    if-nez v1, :cond_0

    invoke-virtual {p2, v3}, Lby3;->y(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2, v2}, Lby3;->v(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p0, "template"

    filled-new-array {v0, v2, v3, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lby3;->l([Ljava/lang/String;)V

    invoke-virtual {p2}, Lh39;->a()Lorg/jsoup/nodes/h;

    move-result-object p0

    iget-object p0, p0, Lorg/jsoup/nodes/h;->e:Ljj8;

    iget-object p0, p0, Ljj8;->d:Ljava/lang/String;

    invoke-virtual {p2, p0}, Lh39;->f(Ljava/lang/String;)Z

    invoke-virtual {p2, p1}, Lby3;->e(Lgx8;)Z

    move-result p0

    return p0
.end method
