.class public final Lar4$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lre4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lar4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TE;>;",
        "Lre4;"
    }
.end annotation


# instance fields
.field public final b:Lar4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lar4<",
            "TE;>;"
        }
    .end annotation
.end field

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Lar4;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lar4<",
            "TE;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lar4$b;->b:Lar4;

    iput p2, p0, Lar4$b;->c:I

    const/4 p2, -0x1

    iput p2, p0, Lar4$b;->d:I

    invoke-static {p1}, Lar4;->a(Lar4;)I

    move-result p1

    iput p1, p0, Lar4$b;->e:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lar4$b;->b:Lar4;

    invoke-static {v0}, Lar4;->a(Lar4;)I

    move-result v0

    iget p0, p0, Lar4$b;->e:I

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lln;->e()V

    return-void
.end method

.method public final add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lar4$b;->a()V

    iget v0, p0, Lar4$b;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lar4$b;->c:I

    iget-object v1, p0, Lar4$b;->b:Lar4;

    invoke-virtual {v1, v0, p1}, Lar4;->add(ILjava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, Lar4$b;->d:I

    invoke-static {v1}, Lar4;->a(Lar4;)I

    move-result p1

    iput p1, p0, Lar4$b;->e:I

    return-void
.end method

.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lar4$b;->c:I

    iget-object p0, p0, Lar4$b;->b:Lar4;

    iget p0, p0, Lar4;->c:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasPrevious()Z
    .locals 0

    iget p0, p0, Lar4$b;->c:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lar4$b;->a()V

    iget v0, p0, Lar4$b;->c:I

    iget-object v1, p0, Lar4$b;->b:Lar4;

    iget v2, v1, Lar4;->c:I

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lar4$b;->c:I

    iput v0, p0, Lar4$b;->d:I

    iget-object p0, v1, Lar4;->b:[Ljava/lang/Object;

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    invoke-static {}, Lqz0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final nextIndex()I
    .locals 0

    iget p0, p0, Lar4$b;->c:I

    return p0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lar4$b;->a()V

    iget v0, p0, Lar4$b;->c:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lar4$b;->c:I

    iput v0, p0, Lar4$b;->d:I

    iget-object p0, p0, Lar4$b;->b:Lar4;

    iget-object p0, p0, Lar4;->b:[Ljava/lang/Object;

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    invoke-static {}, Lqz0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final previousIndex()I
    .locals 0

    iget p0, p0, Lar4$b;->c:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public final remove()V
    .locals 3

    invoke-virtual {p0}, Lar4$b;->a()V

    iget v0, p0, Lar4$b;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lar4$b;->b:Lar4;

    invoke-virtual {v2, v0}, Lar4;->removeAt(I)Ljava/lang/Object;

    iget v0, p0, Lar4$b;->d:I

    iput v0, p0, Lar4$b;->c:I

    iput v1, p0, Lar4$b;->d:I

    invoke-static {v2}, Lar4;->a(Lar4;)I

    move-result v0

    iput v0, p0, Lar4$b;->e:I

    return-void

    :cond_0
    const-string p0, "Call next() or previous() before removing element from the iterator."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lar4$b;->a()V

    iget v0, p0, Lar4$b;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lar4$b;->b:Lar4;

    invoke-virtual {p0, v0, p1}, Lar4;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const-string p0, "Call next() or previous() before replacing element from the iterator."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method
