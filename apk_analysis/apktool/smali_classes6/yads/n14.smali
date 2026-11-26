.class public final Lyads/n14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/l14;
.implements Lyads/ul2;


# instance fields
.field public final a:Lyads/p14;

.field public b:Lyads/k14;

.field public c:Lyads/tl2;

.field public final synthetic d:Lyads/q14;


# direct methods
.method public constructor <init>(Lyads/q14;Lyads/p14;)V
    .locals 1

    iput-object p1, p0, Lyads/n14;->d:Lyads/q14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lyads/q14;->f:Lyads/k14;

    iput-object v0, p0, Lyads/n14;->b:Lyads/k14;

    iget-object p1, p1, Lyads/q14;->g:Lyads/tl2;

    iput-object p1, p0, Lyads/n14;->c:Lyads/tl2;

    iput-object p2, p0, Lyads/n14;->a:Lyads/p14;

    return-void
.end method


# virtual methods
.method public final a(ILyads/h14;Lyads/cu3;Lyads/r04;)V
    .locals 0

    .line 119
    invoke-virtual {p0, p1, p2}, Lyads/n14;->a(ILyads/h14;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 120
    iget-object p0, p0, Lyads/n14;->b:Lyads/k14;

    invoke-virtual {p0, p3, p4}, Lyads/k14;->b(Lyads/cu3;Lyads/r04;)V

    :cond_0
    return-void
.end method

.method public final a(ILyads/h14;Lyads/cu3;Lyads/r04;Ljava/io/IOException;Z)V
    .locals 0

    .line 115
    invoke-virtual {p0, p1, p2}, Lyads/n14;->a(ILyads/h14;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    iget-object p0, p0, Lyads/n14;->b:Lyads/k14;

    invoke-virtual {p0, p3, p4, p5, p6}, Lyads/k14;->a(Lyads/cu3;Lyads/r04;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method

.method public final a(ILyads/h14;Lyads/r04;)V
    .locals 0

    .line 117
    invoke-virtual {p0, p1, p2}, Lyads/n14;->a(ILyads/h14;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 118
    iget-object p0, p0, Lyads/n14;->b:Lyads/k14;

    invoke-virtual {p0, p3}, Lyads/k14;->b(Lyads/r04;)V

    :cond_0
    return-void
.end method

.method public final a(ILyads/h14;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget-object v1, p0, Lyads/n14;->a:Lyads/p14;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, v1, Lyads/p14;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, v1, Lyads/p14;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/h14;

    iget-wide v4, v4, Lyads/b14;->d:J

    iget-wide v6, p2, Lyads/b14;->d:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget-object v0, p2, Lyads/b14;->a:Ljava/lang/Object;

    iget-object v1, v1, Lyads/p14;->b:Ljava/lang/Object;

    invoke-static {v1, v0}, Lyads/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lyads/h14;->a(Ljava/lang/Object;)Lyads/h14;

    move-result-object v0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    return v2

    :cond_2
    move-object v6, v0

    iget-object p2, p0, Lyads/n14;->a:Lyads/p14;

    iget p2, p2, Lyads/p14;->d:I

    add-int v5, p1, p2

    iget-object p1, p0, Lyads/n14;->b:Lyads/k14;

    iget p2, p1, Lyads/k14;->a:I

    if-ne p2, v5, :cond_3

    iget-object p1, p1, Lyads/k14;->b:Lyads/h14;

    invoke-static {p1, v6}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    iget-object p1, p0, Lyads/n14;->d:Lyads/q14;

    iget-object p1, p1, Lyads/q14;->f:Lyads/k14;

    new-instance v3, Lyads/k14;

    iget-object v4, p1, Lyads/k14;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-wide/16 v7, 0x0

    invoke-direct/range {v3 .. v8}, Lyads/k14;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILyads/h14;J)V

    iput-object v3, p0, Lyads/n14;->b:Lyads/k14;

    :cond_4
    iget-object p1, p0, Lyads/n14;->c:Lyads/tl2;

    iget p2, p1, Lyads/tl2;->a:I

    if-ne p2, v5, :cond_5

    iget-object p1, p1, Lyads/tl2;->b:Lyads/h14;

    invoke-static {p1, v6}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    iget-object p1, p0, Lyads/n14;->d:Lyads/q14;

    iget-object p1, p1, Lyads/q14;->g:Lyads/tl2;

    new-instance p2, Lyads/tl2;

    iget-object p1, p1, Lyads/tl2;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2, p1, v5, v6}, Lyads/tl2;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILyads/h14;)V

    iput-object p2, p0, Lyads/n14;->c:Lyads/tl2;

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public final b(ILyads/h14;Lyads/cu3;Lyads/r04;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyads/n14;->a(ILyads/h14;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lyads/n14;->b:Lyads/k14;

    invoke-virtual {p0, p3, p4}, Lyads/k14;->c(Lyads/cu3;Lyads/r04;)V

    :cond_0
    return-void
.end method

.method public final b(ILyads/h14;Lyads/r04;)V
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2}, Lyads/n14;->a(ILyads/h14;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13
    iget-object p0, p0, Lyads/n14;->b:Lyads/k14;

    invoke-virtual {p0, p3}, Lyads/k14;->a(Lyads/r04;)V

    :cond_0
    return-void
.end method

.method public final c(ILyads/h14;Lyads/cu3;Lyads/r04;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyads/n14;->a(ILyads/h14;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lyads/n14;->b:Lyads/k14;

    invoke-virtual {p0, p3, p4}, Lyads/k14;->a(Lyads/cu3;Lyads/r04;)V

    :cond_0
    return-void
.end method
