.class public final enum Lcy3$s;
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

    const-string v0, "BeforeHead"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Lgx8;Lby3;)Z
    .locals 4

    invoke-static {p1}, Lcy3;->d(Lgx8;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lgx8$b;

    invoke-virtual {p2, p1, v1}, Lby3;->z(Lgx8$b;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lgx8;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lgx8$c;

    invoke-virtual {p2, p1}, Lby3;->B(Lgx8$c;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lgx8;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    return v1

    :cond_2
    invoke-virtual {p1}, Lgx8;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lgx8$g;

    invoke-virtual {v0}, Lgx8$h;->l()Ljava/lang/String;

    move-result-object v0

    const-string v2, "html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcy3;->InBody:Lcy3;

    invoke-virtual {p0, p1, p2}, Lcy3;->f(Lgx8;Lby3;)Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p1}, Lgx8;->e()Z

    move-result v0

    const-string v2, "head"

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lgx8$g;

    invoke-virtual {v0}, Lgx8$h;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2, v0}, Lby3;->C(Lgx8$g;)Lorg/jsoup/nodes/h;

    move-result-object p0

    iput-object p0, p2, Lby3;->o:Lorg/jsoup/nodes/h;

    sget-object p0, Lcy3;->InHead:Lcy3;

    iput-object p0, p2, Lby3;->l:Lcy3;

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_4
    invoke-virtual {p1}, Lgx8;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lgx8$f;

    invoke-virtual {v0}, Lgx8$h;->l()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcy3$z;->e:[Ljava/lang/String;

    invoke-static {v0, v3}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2, v2}, Lh39;->g(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lby3;->e(Lgx8;)Z

    move-result p0

    return p0

    :cond_5
    invoke-virtual {p1}, Lgx8;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    return v1

    :cond_6
    invoke-virtual {p2, v2}, Lh39;->g(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lby3;->e(Lgx8;)Z

    move-result p0

    return p0
.end method
