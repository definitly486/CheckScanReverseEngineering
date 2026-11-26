.class public abstract Lcom/google/protobuf/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;II)V"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Object;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;IJ)V"
        }
    .end annotation
.end method

.method public abstract c(Ljava/lang/Object;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;ITT;)V"
        }
    .end annotation
.end method

.method public abstract d(Ljava/lang/Object;ILfx0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;I",
            "Lfx0;",
            ")V"
        }
    .end annotation
.end method

.method public abstract e(Ljava/lang/Object;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;IJ)V"
        }
    .end annotation
.end method

.method public abstract f(Ljava/lang/Object;)Lcom/google/protobuf/k0;
.end method

.method public abstract g(Ljava/lang/Object;)Lcom/google/protobuf/k0;
.end method

.method public abstract h(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public abstract i(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public abstract j(Ljava/lang/Object;)V
.end method

.method public abstract k(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/k0;
.end method

.method public final l(ILcom/google/protobuf/g;Ljava/lang/Object;)Z
    .locals 7

    iget-object v0, p2, Lcom/google/protobuf/g;->a:Lcom/google/protobuf/f;

    iget v1, p2, Lcom/google/protobuf/g;->b:I

    ushr-int/lit8 v2, v1, 0x3

    and-int/lit8 v1, v1, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_9

    if-eq v1, v4, :cond_8

    const/4 v5, 0x2

    if-eq v1, v5, :cond_7

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_1

    const/4 p1, 0x5

    if-ne v1, p1, :cond_0

    invoke-virtual {p2, p1}, Lcom/google/protobuf/g;->x(I)V

    invoke-virtual {v0}, Lcom/google/protobuf/f;->n()I

    move-result p1

    invoke-virtual {p0, p3, v2, p1}, Lcom/google/protobuf/j0;->a(Ljava/lang/Object;II)V

    return v4

    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->e()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_1
    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/j0;->m()Lcom/google/protobuf/k0;

    move-result-object v0

    shl-int/lit8 v1, v2, 0x3

    or-int/2addr v1, v5

    add-int/2addr p1, v4

    const/16 v3, 0x64

    if-ge p1, v3, :cond_6

    :cond_3
    invoke-virtual {p2}, Lcom/google/protobuf/g;->a()I

    move-result v3

    const v5, 0x7fffffff

    if-eq v3, v5, :cond_4

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/j0;->l(ILcom/google/protobuf/g;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_4
    iget p1, p2, Lcom/google/protobuf/g;->b:I

    if-ne v1, p1, :cond_5

    invoke-virtual {p0, v0}, Lcom/google/protobuf/j0;->p(Ljava/lang/Object;)Lcom/google/protobuf/k0;

    move-result-object p1

    invoke-virtual {p0, p3, v2, p1}, Lcom/google/protobuf/j0;->c(Ljava/lang/Object;ILjava/lang/Object;)V

    return v4

    :cond_5
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->a()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_6
    new-instance p0, Lcom/google/protobuf/InvalidProtocolBufferException;

    const-string p1, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-virtual {p2}, Lcom/google/protobuf/g;->e()Lfx0;

    move-result-object p1

    invoke-virtual {p0, p3, v2, p1}, Lcom/google/protobuf/j0;->d(Ljava/lang/Object;ILfx0;)V

    return v4

    :cond_8
    invoke-virtual {p2, v4}, Lcom/google/protobuf/g;->x(I)V

    invoke-virtual {v0}, Lcom/google/protobuf/f;->o()J

    move-result-wide p1

    invoke-virtual {p0, p3, v2, p1, p2}, Lcom/google/protobuf/j0;->b(Ljava/lang/Object;IJ)V

    return v4

    :cond_9
    invoke-virtual {p2, v3}, Lcom/google/protobuf/g;->x(I)V

    invoke-virtual {v0}, Lcom/google/protobuf/f;->r()J

    move-result-wide p1

    invoke-virtual {p0, p3, v2, p1, p2}, Lcom/google/protobuf/j0;->e(Ljava/lang/Object;IJ)V

    return v4
.end method

.method public abstract m()Lcom/google/protobuf/k0;
.end method

.method public abstract n(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TB;)V"
        }
    .end annotation
.end method

.method public abstract o(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract p(Ljava/lang/Object;)Lcom/google/protobuf/k0;
.end method

.method public abstract q(Ljava/lang/Object;Lcom/google/protobuf/n0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/n0;",
            ")V"
        }
    .end annotation
.end method

.method public abstract r(Ljava/lang/Object;Lcom/google/protobuf/n0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/n0;",
            ")V"
        }
    .end annotation
.end method
