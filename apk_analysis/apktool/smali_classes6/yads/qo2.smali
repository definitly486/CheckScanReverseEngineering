.class public final Lyads/qo2;
.super Lyads/uo2;
.source "SourceFile"


# instance fields
.field public final e:Lyads/hz5;

.field public final f:Lyads/uo2;

.field public final g:Lyads/uo2;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/util/List;

.field public final j:Ljava/util/List;


# direct methods
.method public constructor <init>(Lyads/hz5;Lyads/uo2;Lyads/uo2;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p4}, Lyads/uo2;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lyads/qo2;->e:Lyads/hz5;

    iput-object p2, p0, Lyads/qo2;->f:Lyads/uo2;

    iput-object p3, p0, Lyads/qo2;->g:Lyads/uo2;

    iput-object p4, p0, Lyads/qo2;->h:Ljava/lang/String;

    invoke-virtual {p2}, Lyads/uo2;->d()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Lyads/uo2;->d()Ljava/util/List;

    move-result-object p4

    invoke-static {p4, p1}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lyads/qo2;->i:Ljava/util/List;

    invoke-virtual {p2}, Lyads/uo2;->b()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Lyads/uo2;->b()Ljava/util/List;

    move-result-object p2

    invoke-static {p2, p1}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lyads/qo2;->j:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lyads/bp2;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lyads/qo2;->f:Lyads/uo2;

    invoke-virtual {p1, v0}, Lyads/bp2;->a(Lyads/uo2;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lyads/qo2;->f:Lyads/uo2;

    invoke-virtual {v1}, Lyads/uo2;->a()Z

    move-result v1

    invoke-virtual {p0, v1}, Lyads/uo2;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Lk57$a;

    invoke-direct {v1, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lyads/qo2;->g:Lyads/uo2;

    invoke-virtual {p1, v0}, Lyads/bp2;->a(Lyads/uo2;)Ljava/lang/Object;

    move-result-object v0

    iget-object p1, p0, Lyads/qo2;->g:Lyads/uo2;

    invoke-virtual {p1}, Lyads/uo2;->a()Z

    move-result p1

    invoke-virtual {p0, p1}, Lyads/uo2;->a(Z)V

    :goto_1
    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lyads/qo2;->j:Ljava/util/List;

    return-object p0
.end method

.method public final d()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lyads/qo2;->i:Ljava/util/List;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/qo2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/qo2;

    iget-object v1, p0, Lyads/qo2;->e:Lyads/hz5;

    iget-object v3, p1, Lyads/qo2;->e:Lyads/hz5;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lyads/qo2;->f:Lyads/uo2;

    iget-object v3, p1, Lyads/qo2;->f:Lyads/uo2;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lyads/qo2;->g:Lyads/uo2;

    iget-object v3, p1, Lyads/qo2;->g:Lyads/uo2;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lyads/qo2;->h:Ljava/lang/String;

    iget-object p1, p1, Lyads/qo2;->h:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lyads/qo2;->e:Lyads/hz5;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lyads/qo2;->f:Lyads/uo2;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lyads/qo2;->g:Lyads/uo2;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lyads/qo2;->h:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lyads/qo2;->f:Lyads/uo2;

    iget-object v1, p0, Lyads/qo2;->e:Lyads/hz5;

    iget-object p0, p0, Lyads/qo2;->g:Lyads/uo2;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
