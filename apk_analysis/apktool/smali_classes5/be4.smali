.class public final Lbe4;
.super Lzd4;
.source "SourceFile"


# instance fields
.field public final j:Ljd4;

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final l:I

.field public m:I


# direct methods
.method public constructor <init>(Lxb4;Ljd4;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-direct {p0, p1, p2, v0, v1}, Lzd4;-><init>(Lxb4;Ljd4;Ljava/lang/String;I)V

    iput-object p2, p0, Lbe4;->j:Ljd4;

    iget-object p1, p2, Ljd4;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lbe4;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lbe4;->l:I

    const/4 p1, -0x1

    iput p1, p0, Lbe4;->m:I

    return-void
.end method


# virtual methods
.method public final decodeElementIndex(Lmp7;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lbe4;->m:I

    iget v0, p0, Lbe4;->l:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lbe4;->m:I

    return p1

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final endStructure(Lmp7;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final n(Lmp7;I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    div-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Lbe4;->k:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final r(Ljava/lang/String;)Loc4;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lbe4;->m:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    sget-object p0, Lrc4;->a:Li54;

    new-instance p0, Lcd4;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcd4;-><init>(Ljava/lang/Object;Z)V

    return-object p0

    :cond_0
    iget-object p0, p0, Lbe4;->j:Ljd4;

    invoke-static {p1, p0}, Ln05;->c(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Loc4;

    return-object p0
.end method

.method public final t()Loc4;
    .locals 0

    iget-object p0, p0, Lbe4;->j:Ljd4;

    return-object p0
.end method

.method public final w()Ljd4;
    .locals 0

    iget-object p0, p0, Lbe4;->j:Ljd4;

    return-object p0
.end method
