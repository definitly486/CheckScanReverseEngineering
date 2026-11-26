.class public final Lr68;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lol2;


# instance fields
.field public final a:C

.field public b:I

.field public final c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lol2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(C)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lr68;->b:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lr68;->c:Ljava/util/LinkedList;

    iput-char p1, p0, Lr68;->a:C

    return-void
.end method


# virtual methods
.method public final a()C
    .locals 0

    iget-char p0, p0, Lr68;->a:C

    return p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lr68;->b:I

    return p0
.end method

.method public final c()C
    .locals 0

    iget-char p0, p0, Lr68;->a:C

    return p0
.end method

.method public final d(Ldq8;Ldq8;I)V
    .locals 3

    iget-object p0, p0, Lr68;->c:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lol2;

    invoke-interface {v1}, Lol2;->b()I

    move-result v2

    if-gt v2, p3, :cond_0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lol2;

    :goto_0
    invoke-interface {v1, p1, p2, p3}, Lol2;->d(Ldq8;Ldq8;I)V

    return-void
.end method

.method public final e(Lnl2;Lnl2;)I
    .locals 4

    iget v0, p1, Lnl2;->g:I

    iget-object p0, p0, Lr68;->c:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lol2;

    invoke-interface {v2}, Lol2;->b()I

    move-result v3

    if-gt v3, v0, :cond_0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lol2;

    :goto_0
    invoke-interface {v2, p1, p2}, Lol2;->e(Lnl2;Lnl2;)I

    move-result p0

    return p0
.end method

.method public final f(Lol2;)V
    .locals 4

    invoke-interface {p1}, Lol2;->b()I

    move-result v0

    iget-object v1, p0, Lr68;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lol2;

    invoke-interface {v3}, Lol2;->b()I

    move-result v3

    if-le v0, v3, :cond_0

    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    invoke-interface {v2, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot add two delimiter processors for char \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char p0, p0, Lr68;->a:C

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\' and minimum length "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iput v0, p0, Lr68;->b:I

    return-void
.end method
