.class public final Lyads/ke3;
.super Lyads/ge3;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/ge3;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lyads/k55;
    .locals 1

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lyads/ge3;->c:Z

    .line 51
    iget-object v0, p0, Lyads/ge3;->a:[Ljava/lang/Object;

    iget p0, p0, Lyads/ge3;->b:I

    invoke-static {p0, v0}, Lyads/oe3;->b(I[Ljava/lang/Object;)Lyads/k55;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/lang/Object;)Lyads/ke3;
    .locals 3

    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    iget v0, p0, Lyads/ge3;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lyads/ge3;->a(I)V

    .line 54
    iget-object v0, p0, Lyads/ge3;->a:[Ljava/lang/Object;

    iget v1, p0, Lyads/ge3;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lyads/ge3;->b:I

    aput-object p1, v0, v1

    return-object p0
.end method

.method public final a(Ljava/util/List;)Lyads/ke3;
    .locals 2

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget v0, p0, Lyads/ge3;->b:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lyads/ge3;->a(I)V

    instance-of v0, p1, Lyads/ie3;

    if-eqz v0, :cond_0

    check-cast p1, Lyads/ie3;

    iget-object v0, p0, Lyads/ge3;->a:[Ljava/lang/Object;

    iget v1, p0, Lyads/ge3;->b:I

    invoke-virtual {p1, v1, v0}, Lyads/ie3;->a(I[Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lyads/ge3;->b:I

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lyads/ke3;->a(Ljava/lang/Object;)Lyads/ke3;

    goto :goto_0

    :cond_1
    return-object p0
.end method
