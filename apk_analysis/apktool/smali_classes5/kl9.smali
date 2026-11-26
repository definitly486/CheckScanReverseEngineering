.class public final Lkl9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmp7;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lmp7;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmp7;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkl9;->a:Ljava/lang/String;

    iput-object p2, p0, Lkl9;->b:Lmp7;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 0

    iget-object p0, p0, Lkl9;->b:Lmp7;

    invoke-interface {p0}, Lmp7;->b()Z

    move-result p0

    return p0
.end method

.method public final c(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lkl9;->b:Lmp7;

    invoke-interface {p0, p1}, Lmp7;->c(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final d(I)Lmp7;
    .locals 0

    iget-object p0, p0, Lkl9;->b:Lmp7;

    invoke-interface {p0, p1}, Lmp7;->d(I)Lmp7;

    move-result-object p0

    return-object p0
.end method

.method public final e()I
    .locals 0

    iget-object p0, p0, Lkl9;->b:Lmp7;

    invoke-interface {p0}, Lmp7;->e()I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lkl9;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lkl9;

    iget-object v0, p1, Lkl9;->a:Ljava/lang/String;

    iget-object v1, p0, Lkl9;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lkl9;->b:Lmp7;

    iget-object p1, p1, Lkl9;->b:Lmp7;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final f(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkl9;->b:Lmp7;

    invoke-interface {p0, p1}, Lmp7;->f(I)Ljava/lang/String;

    move-result-object p0

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

    iget-object p0, p0, Lkl9;->b:Lmp7;

    invoke-interface {p0, p1}, Lmp7;->g(I)Ljava/util/List;

    move-result-object p0

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

    iget-object p0, p0, Lkl9;->b:Lmp7;

    invoke-interface {p0}, Lmp7;->getAnnotations()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getKind()Lsp7;
    .locals 0

    iget-object p0, p0, Lkl9;->b:Lmp7;

    invoke-interface {p0}, Lmp7;->getKind()Lsp7;

    move-result-object p0

    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkl9;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lkl9;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lkl9;->b:Lmp7;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final i(I)Z
    .locals 0

    iget-object p0, p0, Lkl9;->b:Lmp7;

    invoke-interface {p0, p1}, Lmp7;->i(I)Z

    move-result p0

    return p0
.end method

.method public final isInline()Z
    .locals 0

    iget-object p0, p0, Lkl9;->b:Lmp7;

    invoke-interface {p0}, Lmp7;->isInline()Z

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lx97;->b(Lmp7;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
