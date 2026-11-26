.class public final Lyads/so2;
.super Lyads/uo2;
.source "SourceFile"


# instance fields
.field public final e:Lyads/gy5;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/util/List;

.field public final h:Ljava/util/List;


# direct methods
.method public constructor <init>(Lyads/gy5;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lyads/uo2;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lyads/so2;->e:Lyads/gy5;

    iput-object p2, p0, Lyads/so2;->f:Ljava/lang/String;

    sget-object p1, Lkx2;->b:Lkx2;

    iput-object p1, p0, Lyads/so2;->g:Ljava/util/List;

    iput-object p1, p0, Lyads/so2;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lyads/bp2;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lyads/so2;->e:Lyads/gy5;

    instance-of p1, p0, Lyads/ey5;

    if-eqz p1, :cond_0

    check-cast p0, Lyads/ey5;

    iget-object p0, p0, Lyads/ey5;->a:Ljava/lang/Number;

    return-object p0

    :cond_0
    instance-of p1, p0, Lyads/dy5;

    if-eqz p1, :cond_1

    check-cast p0, Lyads/dy5;

    iget-boolean p0, p0, Lyads/dy5;->a:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of p1, p0, Lyads/fy5;

    if-eqz p1, :cond_2

    check-cast p0, Lyads/fy5;

    iget-object p0, p0, Lyads/fy5;->a:Ljava/lang/String;

    return-object p0

    :cond_2
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final b()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lyads/so2;->h:Ljava/util/List;

    return-object p0
.end method

.method public final d()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lyads/so2;->g:Ljava/util/List;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/so2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/so2;

    iget-object v1, p0, Lyads/so2;->e:Lyads/gy5;

    iget-object v3, p1, Lyads/so2;->e:Lyads/gy5;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lyads/so2;->f:Ljava/lang/String;

    iget-object p1, p1, Lyads/so2;->f:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lyads/so2;->e:Lyads/gy5;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lyads/so2;->f:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lyads/so2;->e:Lyads/gy5;

    instance-of v0, p0, Lyads/fy5;

    if-eqz v0, :cond_0

    check-cast p0, Lyads/fy5;

    invoke-virtual {p0}, Lyads/fy5;->a()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\'"

    invoke-static {v0, p0, v0}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lyads/ey5;

    if-eqz v0, :cond_1

    check-cast p0, Lyads/ey5;

    invoke-virtual {p0}, Lyads/ey5;->a()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Lyads/dy5;

    if-eqz v0, :cond_2

    check-cast p0, Lyads/dy5;

    invoke-virtual {p0}, Lyads/dy5;->a()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
