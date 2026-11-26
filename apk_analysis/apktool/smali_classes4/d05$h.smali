.class public abstract Ld05$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld05;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:Ld05$m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld05$m<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation
.end field

.field public e:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation
.end field

.field public f:Ld05$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public g:Ld05$c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld05<",
            "TK;TV;TE;TS;>.c0;"
        }
    .end annotation
.end field

.field public h:Ld05$c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld05<",
            "TK;TV;TE;TS;>.c0;"
        }
    .end annotation
.end field

.field public final synthetic i:Ld05;


# direct methods
.method public constructor <init>(Ld05;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld05$h;->i:Ld05;

    iget-object p1, p1, Ld05;->d:[Ld05$m;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Ld05$h;->b:I

    const/4 p1, -0x1

    iput p1, p0, Ld05$h;->c:I

    invoke-virtual {p0}, Ld05$h;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Ld05$h;->g:Ld05$c0;

    invoke-virtual {p0}, Ld05$h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ld05$h;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Ld05$h;->b:I

    if-ltz v0, :cond_2

    iget-object v1, p0, Ld05$h;->i:Ld05;

    iget-object v1, v1, Ld05;->d:[Ld05$m;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Ld05$h;->b:I

    aget-object v0, v1, v0

    iput-object v0, p0, Ld05$h;->d:Ld05$m;

    iget v0, v0, Ld05$m;->c:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld05$h;->d:Ld05$m;

    iget-object v0, v0, Ld05$m;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Ld05$h;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ld05$h;->c:I

    invoke-virtual {p0}, Ld05$h;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    :goto_0
    return-void
.end method

.method public final b(Ld05$i;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-object v0, p0, Ld05$h;->i:Ld05;

    :try_start_0
    invoke-interface {p1}, Ld05$i;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ld05$i;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ld05$i;->getValue()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    new-instance v2, Ld05$c0;

    invoke-direct {v2, v0, v1, p1}, Ld05$c0;-><init>(Ld05;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Ld05$h;->g:Ld05$c0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Ld05$h;->d:Ld05$m;

    invoke-virtual {p0}, Ld05$m;->i()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Ld05$h;->d:Ld05$m;

    invoke-virtual {p0}, Ld05$m;->i()V

    const/4 p0, 0x0

    return p0

    :goto_1
    iget-object p0, p0, Ld05$h;->d:Ld05$m;

    invoke-virtual {p0}, Ld05$m;->i()V

    throw p1
.end method

.method public final c()Ld05$c0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld05<",
            "TK;TV;TE;TS;>.c0;"
        }
    .end annotation

    iget-object v0, p0, Ld05$h;->g:Ld05$c0;

    if-eqz v0, :cond_0

    iput-object v0, p0, Ld05$h;->h:Ld05$c0;

    invoke-virtual {p0}, Ld05$h;->a()V

    iget-object p0, p0, Ld05$h;->h:Ld05$c0;

    return-object p0

    :cond_0
    invoke-static {}, Lqz0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Ld05$h;->f:Ld05$i;

    if-eqz v0, :cond_1

    :goto_0
    invoke-interface {v0}, Ld05$i;->getNext()Ld05$i;

    move-result-object v0

    iput-object v0, p0, Ld05$h;->f:Ld05$i;

    iget-object v0, p0, Ld05$h;->f:Ld05$i;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Ld05$h;->b(Ld05$i;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Ld05$h;->f:Ld05$i;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final e()Z
    .locals 3

    :cond_0
    iget v0, p0, Ld05$h;->c:I

    if-ltz v0, :cond_2

    iget-object v1, p0, Ld05$h;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Ld05$h;->c:I

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld05$i;

    iput-object v0, p0, Ld05$h;->f:Ld05$i;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Ld05$h;->b(Ld05$i;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ld05$h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Ld05$h;->g:Ld05$c0;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ld05$h;->c()Ld05$c0;

    move-result-object p0

    return-object p0
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Ld05$h;->h:Ld05$c0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcn1;->c(Z)V

    iget-object v0, p0, Ld05$h;->h:Ld05$c0;

    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Ld05$h;->i:Ld05;

    invoke-virtual {v1, v0}, Ld05;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Ld05$h;->h:Ld05$c0;

    return-void
.end method
