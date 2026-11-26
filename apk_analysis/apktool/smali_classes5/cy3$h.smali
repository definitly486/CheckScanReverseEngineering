.class public final enum Lcy3$h;
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

    const-string v0, "InSelectInTable"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Lgx8;Lby3;)Z
    .locals 4

    invoke-virtual {p1}, Lgx8;->e()Z

    move-result v0

    const-string v1, "select"

    sget-object v2, Lcy3$z;->F:[Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lgx8$g;

    invoke-virtual {v0}, Lgx8$h;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    invoke-virtual {p2, v1}, Lby3;->K(Ljava/lang/String;)V

    invoke-virtual {p2}, Lby3;->Q()Z

    invoke-virtual {p2, p1}, Lby3;->e(Lgx8;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Lgx8;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lgx8$f;

    invoke-virtual {v0}, Lgx8$h;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    invoke-virtual {v0}, Lgx8$h;->l()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lby3;->y(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2, v1}, Lby3;->K(Ljava/lang/String;)V

    invoke-virtual {p2}, Lby3;->Q()Z

    invoke-virtual {p2, p1}, Lby3;->e(Lgx8;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    sget-object p0, Lcy3;->InSelect:Lcy3;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcy3;->f(Lgx8;Lby3;)Z

    move-result p0

    return p0
.end method
