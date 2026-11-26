.class public final enum Lcy3$o;
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

    const-string v0, "AfterAfterFrameset"

    const/16 v1, 0x16

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Lgx8;Lby3;)Z
    .locals 2

    invoke-virtual {p1}, Lgx8;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lgx8$c;

    invoke-virtual {p2, p1}, Lby3;->B(Lgx8$c;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lgx8;->b()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcy3;->d(Lgx8;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lgx8;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lgx8$g;

    invoke-virtual {v0}, Lgx8$h;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lgx8;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-virtual {p1}, Lgx8;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lgx8$g;

    invoke-virtual {v0}, Lgx8$h;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "noframes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcy3;->InHead:Lcy3;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcy3;->f(Lgx8;Lby3;)Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_1
    sget-object p0, Lcy3;->InBody:Lcy3;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcy3;->f(Lgx8;Lby3;)Z

    move-result p0

    return p0
.end method
