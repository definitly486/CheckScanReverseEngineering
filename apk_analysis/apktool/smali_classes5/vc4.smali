.class public final Lvc4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmp7;


# instance fields
.field public final a:Lfh8;


# direct methods
.method public constructor <init>(Lll3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "+",
            "Lmp7;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lfh8;

    invoke-direct {v0, p1}, Lfh8;-><init>(Lll3;)V

    iput-object v0, p0, Lvc4;->a:Lfh8;

    return-void
.end method


# virtual methods
.method public final a()Lmp7;
    .locals 0

    iget-object p0, p0, Lvc4;->a:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmp7;

    return-object p0
.end method

.method public final c(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lvc4;->a()Lmp7;

    move-result-object p0

    invoke-interface {p0, p1}, Lmp7;->c(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final d(I)Lmp7;
    .locals 0

    invoke-virtual {p0}, Lvc4;->a()Lmp7;

    move-result-object p0

    invoke-interface {p0, p1}, Lmp7;->d(I)Lmp7;

    move-result-object p0

    return-object p0
.end method

.method public final e()I
    .locals 0

    invoke-virtual {p0}, Lvc4;->a()Lmp7;

    move-result-object p0

    invoke-interface {p0}, Lmp7;->e()I

    move-result p0

    return p0
.end method

.method public final f(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lvc4;->a()Lmp7;

    move-result-object p0

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

    invoke-virtual {p0}, Lvc4;->a()Lmp7;

    move-result-object p0

    invoke-interface {p0, p1}, Lmp7;->g(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getKind()Lsp7;
    .locals 0

    invoke-virtual {p0}, Lvc4;->a()Lmp7;

    move-result-object p0

    invoke-interface {p0}, Lmp7;->getKind()Lsp7;

    move-result-object p0

    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lvc4;->a()Lmp7;

    move-result-object p0

    invoke-interface {p0}, Lmp7;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final i(I)Z
    .locals 0

    invoke-virtual {p0}, Lvc4;->a()Lmp7;

    move-result-object p0

    invoke-interface {p0, p1}, Lmp7;->i(I)Z

    move-result p0

    return p0
.end method
