.class public final enum Lcy3$b;
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

    const-string v0, "InCaption"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Lgx8;Lby3;)Z
    .locals 4

    invoke-virtual {p1}, Lgx8;->d()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "caption"

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lgx8$f;

    invoke-virtual {v0}, Lgx8$h;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, v2}, Lby3;->y(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    return v1

    :cond_0
    invoke-virtual {p2, v1}, Lby3;->s(Z)V

    invoke-virtual {p2, v2}, Lh39;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    :cond_1
    invoke-virtual {p2, v2}, Lby3;->K(Ljava/lang/String;)V

    invoke-virtual {p2}, Lby3;->k()V

    sget-object p0, Lcy3;->InTable:Lcy3;

    iput-object p0, p2, Lby3;->l:Lcy3;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lgx8;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lgx8$g;

    invoke-virtual {v0}, Lgx8$h;->l()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcy3$z;->x:[Ljava/lang/String;

    invoke-static {v0, v3}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {p1}, Lgx8;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lgx8$f;

    invoke-virtual {v0}, Lgx8$h;->l()Ljava/lang/String;

    move-result-object v0

    const-string v3, "table"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_4
    invoke-virtual {p2, v2}, Lby3;->y(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    return v1

    :cond_5
    invoke-virtual {p2, v1}, Lby3;->s(Z)V

    invoke-virtual {p2, v2}, Lh39;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    :cond_6
    invoke-virtual {p2, v2}, Lby3;->K(Ljava/lang/String;)V

    invoke-virtual {p2}, Lby3;->k()V

    sget-object p0, Lcy3;->InTable:Lcy3;

    iput-object p0, p2, Lby3;->l:Lcy3;

    invoke-virtual {p0, p1, p2}, Lcy3;->f(Lgx8;Lby3;)Z

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_7
    invoke-virtual {p1}, Lgx8;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lgx8$f;

    invoke-virtual {v0}, Lgx8$h;->l()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcy3$z;->I:[Ljava/lang/String;

    invoke-static {v0, v2}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    return v1

    :cond_8
    sget-object p0, Lcy3;->InBody:Lcy3;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcy3;->f(Lgx8;Lby3;)Z

    move-result p0

    return p0
.end method
