.class public Ls96;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmp7;
.implements Lay0;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ldp3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldp3<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:I

.field public d:I

.field public final e:[Ljava/lang/String;

.field public final f:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field public final g:[Z

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lcl4;

.field public final j:Lcl4;

.field public final k:Lcl4;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ldp3;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ldp3<",
            "*>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls96;->a:Ljava/lang/String;

    iput-object p2, p0, Ls96;->b:Ldp3;

    iput p3, p0, Ls96;->c:I

    const/4 p1, -0x1

    iput p1, p0, Ls96;->d:I

    new-array p1, p3, [Ljava/lang/String;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    const-string v0, "[UNINITIALIZED]"

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Ls96;->e:[Ljava/lang/String;

    iget p1, p0, Ls96;->c:I

    new-array p2, p1, [Ljava/util/List;

    iput-object p2, p0, Ls96;->f:[Ljava/util/List;

    new-array p1, p1, [Z

    iput-object p1, p0, Ls96;->g:[Z

    sget-object p1, Lmx2;->b:Lmx2;

    iput-object p1, p0, Ls96;->h:Ljava/util/Map;

    sget-object p1, Lpo4;->PUBLICATION:Lpo4;

    new-instance p2, Lk51;

    const/4 p3, 0x3

    invoke-direct {p2, p0, p3}, Lk51;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, p2}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object p2

    iput-object p2, p0, Ls96;->i:Lcl4;

    new-instance p2, Lvi5;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lvi5;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, p2}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object p2

    iput-object p2, p0, Ls96;->j:Lcl4;

    new-instance p2, Lu12;

    invoke-direct {p2, p0, p3}, Lu12;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, p2}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object p1

    iput-object p1, p0, Ls96;->k:Lcl4;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ls96;->h:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Ls96;->h:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x3

    return p0
.end method

.method public d(I)Lmp7;
    .locals 0

    iget-object p0, p0, Ls96;->i:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ldf4;

    aget-object p0, p0, p1

    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object p0

    return-object p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Ls96;->c:I

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-ne p0, p1, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Ls96;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p1

    check-cast v0, Lmp7;

    invoke-interface {v0}, Lmp7;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ls96;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    check-cast p1, Ls96;

    iget-object v2, p0, Ls96;->j:Lcl4;

    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lmp7;

    iget-object p1, p1, Ls96;->j:Lcl4;

    invoke-interface {p1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmp7;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Lmp7;->e()I

    move-result p1

    iget v2, p0, Ls96;->c:I

    if-eq v2, p1, :cond_4

    goto :goto_1

    :cond_4
    move p1, v1

    :goto_0
    if-ge p1, v2, :cond_7

    invoke-interface {p0, p1}, Lmp7;->d(I)Lmp7;

    move-result-object v3

    invoke-interface {v3}, Lmp7;->h()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1}, Lmp7;->d(I)Lmp7;

    move-result-object v4

    invoke-interface {v4}, Lmp7;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {p0, p1}, Lmp7;->d(I)Lmp7;

    move-result-object v3

    invoke-interface {v3}, Lmp7;->getKind()Lsp7;

    move-result-object v3

    invoke-interface {v0, p1}, Lmp7;->d(I)Lmp7;

    move-result-object v4

    invoke-interface {v4}, Lmp7;->getKind()Lsp7;

    move-result-object v4

    invoke-static {v3, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :goto_1
    return v1

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_7
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public final f(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ls96;->e:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final g(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ls96;->f:[Ljava/util/List;

    aget-object p0, p0, p1

    if-nez p0, :cond_0

    sget-object p0, Lkx2;->b:Lkx2;

    :cond_0
    return-object p0
.end method

.method public final getAnnotations()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0
.end method

.method public getKind()Lsp7;
    .locals 0

    sget-object p0, Leb8$a;->a:Leb8$a;

    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ls96;->a:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Ls96;->k:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final i(I)Z
    .locals 0

    iget-object p0, p0, Ls96;->g:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public final j(Ljava/lang/String;Z)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Ls96;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ls96;->d:I

    iget-object v1, p0, Ls96;->e:[Ljava/lang/String;

    aput-object p1, v1, v0

    iget-object p1, p0, Ls96;->g:[Z

    aput-boolean p2, p1, v0

    iget-object p1, p0, Ls96;->f:[Ljava/util/List;

    const/4 p2, 0x0

    aput-object p2, p1, v0

    iget p1, p0, Ls96;->c:I

    add-int/lit8 p1, p1, -0x1

    if-ne v0, p1, :cond_1

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    array-length p2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v2, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Ls96;->h:Ljava/util/Map;

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lx97;->b(Lmp7;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
