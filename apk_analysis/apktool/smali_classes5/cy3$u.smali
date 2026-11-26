.class public final enum Lcy3$u;
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

    const-string v0, "InHeadNoscript"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Lgx8;Lby3;)Z
    .locals 4

    invoke-virtual {p1}, Lgx8;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    return v1

    :cond_0
    invoke-virtual {p1}, Lgx8;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lgx8$g;

    invoke-virtual {v0}, Lgx8$h;->l()Ljava/lang/String;

    move-result-object v0

    const-string v2, "html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcy3;->InBody:Lcy3;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcy3;->f(Lgx8;Lby3;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p1}, Lgx8;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lgx8$f;

    invoke-virtual {v0}, Lgx8$h;->l()Ljava/lang/String;

    move-result-object v0

    const-string v2, "noscript"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lh39;->d()Lorg/jsoup/nodes/h;

    sget-object p0, Lcy3;->InHead:Lcy3;

    iput-object p0, p2, Lby3;->l:Lcy3;

    return v1

    :cond_2
    invoke-static {p1}, Lcy3;->d(Lgx8;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lgx8;->a()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lgx8;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lgx8$g;

    invoke-virtual {v0}, Lgx8$h;->l()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcy3$z;->f:[Ljava/lang/String;

    invoke-static {v0, v2}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lgx8;->d()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lgx8$f;

    invoke-virtual {v0}, Lgx8$h;->l()Ljava/lang/String;

    move-result-object v0

    const-string v3, "br"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    new-instance p0, Lgx8$b;

    invoke-direct {p0}, Lgx8$b;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lgx8$b;->d:Lm54;

    invoke-virtual {v0}, Lm54;->d()V

    iput-object p1, v0, Lm54;->b:Ljava/lang/Object;

    invoke-virtual {p2, p0, v2}, Lby3;->z(Lgx8$b;Z)V

    return v1

    :cond_4
    invoke-virtual {p1}, Lgx8;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lgx8$g;

    invoke-virtual {v0}, Lgx8$h;->l()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcy3$z;->H:[Ljava/lang/String;

    invoke-static {v0, v3}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    invoke-virtual {p1}, Lgx8;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    return v2

    :cond_7
    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    new-instance p0, Lgx8$b;

    invoke-direct {p0}, Lgx8$b;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lgx8$b;->d:Lm54;

    invoke-virtual {v0}, Lm54;->d()V

    iput-object p1, v0, Lm54;->b:Ljava/lang/Object;

    invoke-virtual {p2, p0, v2}, Lby3;->z(Lgx8$b;Z)V

    return v1

    :cond_8
    :goto_0
    sget-object p0, Lcy3;->InHead:Lcy3;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcy3;->f(Lgx8;Lby3;)Z

    move-result p0

    return p0
.end method
