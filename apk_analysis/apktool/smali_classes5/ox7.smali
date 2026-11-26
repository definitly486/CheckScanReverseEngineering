.class public final Lox7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfo5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lfo5<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lte0;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc93<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lte0;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lox7;->a:Lte0;

    invoke-static {}, Lu96;->e()Lar4;

    move-result-object v0

    invoke-static {v0, p1}, Ltc0;->g(Lar4;Lti3;)V

    invoke-static {v0}, Lu96;->d(Lar4;)Lar4;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lar4;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    :cond_0
    :goto_0
    move-object v1, p1

    check-cast v1, Lar4$b;

    invoke-virtual {v1}, Lar4$b;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lar4$b;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx83;

    invoke-interface {v1}, Lx83;->c()Ld93;

    move-result-object v1

    invoke-interface {v1}, Ld93;->b()Lc93;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lqn1;->y0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lox7;->b:Ljava/util/Set;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    const-string p0, "Signed format must contain at least one field with a sign"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a()Lvi3;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lvi3<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lox7;->a:Lte0;

    iget-object v0, v0, Lte0;->a:Lx83;

    invoke-interface {v0}, Lx83;->a()Lvi3;

    move-result-object v0

    new-instance v1, Lpx7;

    new-instance v2, Lox7$a;

    invoke-direct {v2, p0}, Lox7$a;-><init>(Lox7;)V

    invoke-direct {v1, v0, v2}, Lpx7;-><init>(Lvi3;Lox7$a;)V

    return-object v1
.end method

.method public final b()La46;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La46<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, La46;

    new-instance v1, Lkx7;

    new-instance v2, Lox7$b;

    invoke-direct {v2, p0}, Lox7$b;-><init>(Lox7;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sign for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lox7;->b:Ljava/util/Set;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lkx7;-><init>(Lox7$b;Ljava/lang/String;)V

    invoke-static {v1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lkx2;->b:Lkx2;

    invoke-direct {v0, v1, v2}, La46;-><init>(Ljava/util/List;Ljava/util/List;)V

    iget-object p0, p0, Lox7;->a:Lte0;

    iget-object p0, p0, Lte0;->a:Lx83;

    invoke-interface {p0}, Lx83;->b()La46;

    move-result-object p0

    filled-new-array {v0, p0}, [La46;

    move-result-object p0

    invoke-static {p0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lxs7;->a(Ljava/util/List;)La46;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lox7;

    if-eqz v0, :cond_0

    check-cast p1, Lox7;

    iget-object p1, p1, Lox7;->a:Lte0;

    iget-object p0, p0, Lox7;->a:Lte0;

    invoke-virtual {p0, p1}, Lte0;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object p0, p0, Lox7;->a:Lte0;

    invoke-virtual {p0}, Lte0;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SignedFormatStructure("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lox7;->a:Lte0;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
