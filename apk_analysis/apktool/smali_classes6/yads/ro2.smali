.class public final Lyads/ro2;
.super Lyads/uo2;
.source "SourceFile"


# instance fields
.field public final e:Lyads/mz5;

.field public final f:Lyads/uo2;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/util/List;

.field public final i:Ljava/util/List;


# direct methods
.method public constructor <init>(Lyads/mz5;Lyads/uo2;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3}, Lyads/uo2;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lyads/ro2;->e:Lyads/mz5;

    iput-object p2, p0, Lyads/ro2;->f:Lyads/uo2;

    iput-object p3, p0, Lyads/ro2;->g:Ljava/lang/String;

    invoke-virtual {p2}, Lyads/uo2;->d()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lyads/ro2;->h:Ljava/util/List;

    invoke-virtual {p2}, Lyads/uo2;->b()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lyads/ro2;->i:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lyads/bp2;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1, p0}, Lyads/bp2;->a(Lyads/ro2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lyads/ro2;->i:Ljava/util/List;

    return-object p0
.end method

.method public final d()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lyads/ro2;->h:Ljava/util/List;

    return-object p0
.end method

.method public final e()Lyads/uo2;
    .locals 0

    iget-object p0, p0, Lyads/ro2;->f:Lyads/uo2;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/ro2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/ro2;

    iget-object v1, p0, Lyads/ro2;->e:Lyads/mz5;

    iget-object v3, p1, Lyads/ro2;->e:Lyads/mz5;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lyads/ro2;->f:Lyads/uo2;

    iget-object v3, p1, Lyads/ro2;->f:Lyads/uo2;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lyads/ro2;->g:Ljava/lang/String;

    iget-object p1, p1, Lyads/ro2;->g:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final f()Lyads/mz5;
    .locals 0

    iget-object p0, p0, Lyads/ro2;->e:Lyads/mz5;

    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lyads/ro2;->e:Lyads/mz5;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lyads/ro2;->f:Lyads/uo2;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lyads/ro2;->g:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lyads/ro2;->e:Lyads/mz5;

    iget-object p0, p0, Lyads/ro2;->f:Lyads/uo2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
