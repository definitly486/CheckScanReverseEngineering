.class public final Liu1;
.super Lm1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liu1$e;,
        Liu1$f;
    }
.end annotation


# static fields
.field public static final f:Liu1$a;

.field public static final g:Liu1$b;

.field public static final h:Liu1$c;

.field public static final i:Liu1$d;


# instance fields
.field public final b:Ljava/util/ArrayDeque;

.field public c:Ljava/util/ArrayDeque;

.field public d:I

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Liu1$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Liu1;->f:Liu1$a;

    new-instance v0, Liu1$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Liu1;->g:Liu1$b;

    new-instance v0, Liu1$c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Liu1;->h:Liu1$c;

    new-instance v0, Liu1$d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Liu1;->i:Liu1$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Liu1;->b:Ljava/util/ArrayDeque;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Liu1;->b:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final G([BII)V
    .locals 1

    sget-object v0, Liu1;->h:Liu1$c;

    invoke-virtual {p0, v0, p3, p1, p2}, Liu1;->o(Liu1$e;ILjava/lang/Object;I)I

    return-void
.end method

.method public final I()V
    .locals 4

    iget-object v0, p0, Liu1;->c:Ljava/util/ArrayDeque;

    iget-object v1, p0, Liu1;->b:Ljava/util/ArrayDeque;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Liu1;->c:Ljava/util/ArrayDeque;

    :cond_0
    :goto_0
    iget-object v0, p0, Liu1;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Liu1;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldy6;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Liu1;->e:Z

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldy6;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ldy6;->I()V

    :cond_2
    return-void
.end method

.method public final b(Ldy6;)V
    .locals 5

    iget-boolean v0, p0, Liu1;->e:Z

    const/4 v1, 0x0

    iget-object v2, p0, Liu1;->b:Ljava/util/ArrayDeque;

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    instance-of v3, p1, Liu1;

    if-nez v3, :cond_1

    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget v1, p0, Liu1;->d:I

    invoke-interface {p1}, Ldy6;->q()I

    move-result p1

    add-int/2addr p1, v1

    iput p1, p0, Liu1;->d:I

    goto :goto_2

    :cond_1
    check-cast p1, Liu1;

    iget-object v3, p1, Liu1;->b:Ljava/util/ArrayDeque;

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldy6;

    invoke-virtual {v2, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget v3, p0, Liu1;->d:I

    iget v4, p1, Liu1;->d:I

    add-int/2addr v3, v4

    iput v3, p0, Liu1;->d:I

    iput v1, p1, Liu1;->d:I

    invoke-virtual {p1}, Liu1;->close()V

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldy6;

    invoke-interface {p0}, Ldy6;->I()V

    :cond_3
    return-void
.end method

.method public final close()V
    .locals 2

    :goto_0
    iget-object v0, p0, Liu1;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldy6;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Liu1;->c:Ljava/util/ArrayDeque;

    if-eqz v0, :cond_1

    :goto_1
    iget-object v0, p0, Liu1;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Liu1;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldy6;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final m()V
    .locals 2

    iget-boolean v0, p0, Liu1;->e:Z

    iget-object v1, p0, Liu1;->b:Ljava/util/ArrayDeque;

    if-eqz v0, :cond_1

    iget-object p0, p0, Liu1;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldy6;

    invoke-virtual {p0, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldy6;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ldy6;->I()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldy6;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public final markSupported()Z
    .locals 1

    iget-object p0, p0, Liu1;->b:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldy6;

    invoke-interface {v0}, Ldy6;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final n(Liu1$f;ILjava/lang/Object;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Liu1$f<",
            "TT;>;ITT;I)I"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lm1;->a(I)V

    iget-object v0, p0, Liu1;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldy6;

    invoke-interface {v1}, Ldy6;->q()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Liu1;->m()V

    :cond_0
    :goto_0
    if-lez p2, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldy6;

    invoke-interface {v1}, Ldy6;->q()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {p1, v1, v2, p3, p4}, Liu1$f;->a(Ldy6;ILjava/lang/Object;I)I

    move-result p4

    sub-int/2addr p2, v2

    iget v1, p0, Liu1;->d:I

    sub-int/2addr v1, v2

    iput v1, p0, Liu1;->d:I

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldy6;

    invoke-interface {v1}, Ldy6;->q()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Liu1;->m()V

    goto :goto_0

    :cond_1
    if-gtz p2, :cond_2

    return p4

    :cond_2
    const-string p0, "Failed executing read operation"

    invoke-static {p0}, Lxg;->d(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final o(Liu1$e;ILjava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Liu1$e<",
            "TT;>;ITT;I)I"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Liu1;->n(Liu1$f;ILjava/lang/Object;I)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lxg;->d(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final q()I
    .locals 0

    iget p0, p0, Liu1;->d:I

    return p0
.end method

.method public final readUnsignedByte()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v2, Liu1;->f:Liu1$a;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, v0, v1}, Liu1;->o(Liu1$e;ILjava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public final reset()V
    .locals 4

    iget-boolean v0, p0, Liu1;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Liu1;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldy6;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ldy6;->q()I

    move-result v2

    invoke-interface {v1}, Ldy6;->reset()V

    iget v3, p0, Liu1;->d:I

    invoke-interface {v1}, Ldy6;->q()I

    move-result v1

    sub-int/2addr v1, v2

    add-int/2addr v1, v3

    iput v1, p0, Liu1;->d:I

    :cond_0
    :goto_0
    iget-object v1, p0, Liu1;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldy6;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ldy6;->reset()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    iget v2, p0, Liu1;->d:I

    invoke-interface {v1}, Ldy6;->q()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Liu1;->d:I

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/nio/InvalidMarkException;

    invoke-direct {p0}, Ljava/nio/InvalidMarkException;-><init>()V

    throw p0
.end method

.method public final s0(Ljava/io/OutputStream;I)V
    .locals 2

    sget-object v0, Liu1;->i:Liu1$d;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, p1, v1}, Liu1;->n(Liu1$f;ILjava/lang/Object;I)I

    return-void
.end method

.method public final skipBytes(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v2, Liu1;->g:Liu1$b;

    invoke-virtual {p0, v2, p1, v0, v1}, Liu1;->o(Liu1$e;ILjava/lang/Object;I)I

    return-void
.end method

.method public final t(I)Ldy6;
    .locals 7

    if-gtz p1, :cond_0

    sget-object p0, Ley6;->a:Ley6$b;

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lm1;->a(I)V

    iget v0, p0, Liu1;->d:I

    sub-int/2addr v0, p1

    iput v0, p0, Liu1;->d:I

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    iget-object v2, p0, Liu1;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldy6;

    invoke-interface {v3}, Ldy6;->q()I

    move-result v4

    if-le v4, p1, :cond_1

    invoke-interface {v3, p1}, Ldy6;->t(I)Ldy6;

    move-result-object p1

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    iget-boolean v5, p0, Liu1;->e:Z

    if-eqz v5, :cond_2

    invoke-interface {v3, v4}, Ldy6;->t(I)Ldy6;

    move-result-object v3

    invoke-virtual {p0}, Liu1;->m()V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldy6;

    :goto_1
    sub-int/2addr p1, v4

    move-object v6, v3

    move v3, p1

    move-object p1, v6

    :goto_2
    if-nez v0, :cond_3

    move-object v0, p1

    goto :goto_4

    :cond_3
    if-nez v1, :cond_5

    new-instance v1, Liu1;

    const/4 v4, 0x2

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    add-int/2addr v2, v4

    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_3
    invoke-direct {v1, v4}, Liu1;-><init>(I)V

    invoke-virtual {v1, v0}, Liu1;->b(Ldy6;)V

    move-object v0, v1

    :cond_5
    invoke-virtual {v1, p1}, Liu1;->b(Ldy6;)V

    :goto_4
    if-gtz v3, :cond_6

    return-object v0

    :cond_6
    move p1, v3

    goto :goto_0
.end method
