.class public final Lyads/to2;
.super Lyads/uo2;
.source "SourceFile"


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/util/List;

.field public final h:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lyads/uo2;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lyads/to2;->e:Ljava/lang/String;

    iput-object p2, p0, Lyads/to2;->f:Ljava/lang/String;

    invoke-static {p1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lyads/to2;->g:Ljava/util/List;

    sget-object p1, Lkx2;->b:Lkx2;

    iput-object p1, p0, Lyads/to2;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lyads/bp2;)Ljava/lang/Object;
    .locals 1

    iget-object p1, p1, Lyads/bp2;->a:Lyads/yo2;

    iget-object p1, p1, Lyads/yo2;->a:Lyads/z66;

    iget-object v0, p0, Lyads/to2;->e:Ljava/lang/String;

    invoke-interface {p1, v0}, Lyads/m76;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lyads/b94;

    iget-object p0, p0, Lyads/to2;->e:Ljava/lang/String;

    invoke-direct {p1, p0}, Lyads/b94;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lyads/to2;->h:Ljava/util/List;

    return-object p0
.end method

.method public final d()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lyads/to2;->g:Ljava/util/List;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/to2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/to2;

    iget-object v1, p0, Lyads/to2;->e:Ljava/lang/String;

    iget-object v3, p1, Lyads/to2;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lyads/to2;->f:Ljava/lang/String;

    iget-object p1, p1, Lyads/to2;->f:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lyads/to2;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lyads/to2;->f:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyads/to2;->e:Ljava/lang/String;

    return-object p0
.end method
