.class public interface abstract Lmp7;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract c(Ljava/lang/String;)I
.end method

.method public abstract d(I)Lmp7;
.end method

.method public abstract e()I
.end method

.method public abstract f(I)Ljava/lang/String;
.end method

.method public abstract g(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end method

.method public getAnnotations()Ljava/util/List;
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

.method public abstract getKind()Lsp7;
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method public abstract i(I)Z
.end method

.method public isInline()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
