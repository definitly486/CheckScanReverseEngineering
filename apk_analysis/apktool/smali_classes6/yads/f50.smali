.class public final Lyads/f50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/l14;
.implements Lyads/ul2;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lyads/k14;

.field public c:Lyads/tl2;

.field public final synthetic d:Lyads/h50;


# direct methods
.method public constructor <init>(Lyads/h50;Ljava/lang/Object;)V
    .locals 7

    iput-object p1, p0, Lyads/f50;->d:Lyads/h50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lyads/cs;->c:Lyads/k14;

    new-instance v1, Lyads/k14;

    iget-object v2, v0, Lyads/k14;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-direct/range {v1 .. v6}, Lyads/k14;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILyads/h14;J)V

    iput-object v1, p0, Lyads/f50;->b:Lyads/k14;

    iget-object p1, p1, Lyads/cs;->d:Lyads/tl2;

    new-instance v0, Lyads/tl2;

    iget-object p1, p1, Lyads/tl2;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lyads/tl2;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILyads/h14;)V

    iput-object v0, p0, Lyads/f50;->c:Lyads/tl2;

    iput-object p2, p0, Lyads/f50;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lyads/r04;)Lyads/r04;
    .locals 10

    .line 90
    iget-wide v6, p1, Lyads/r04;->f:J

    .line 91
    iget-wide v8, p1, Lyads/r04;->g:J

    cmp-long p0, v6, v6

    if-nez p0, :cond_0

    cmp-long p0, v8, v8

    if-nez p0, :cond_0

    return-object p1

    .line 92
    :cond_0
    new-instance v0, Lyads/r04;

    iget v1, p1, Lyads/r04;->a:I

    iget v2, p1, Lyads/r04;->b:I

    iget-object v3, p1, Lyads/r04;->c:Lyads/vz2;

    iget v4, p1, Lyads/r04;->d:I

    iget-object v5, p1, Lyads/r04;->e:Ljava/lang/Object;

    invoke-direct/range {v0 .. v9}, Lyads/r04;-><init>(IILyads/vz2;ILjava/lang/Object;JJ)V

    return-object v0
.end method

.method public final a(ILyads/h14;Lyads/cu3;Lyads/r04;)V
    .locals 0

    .line 86
    invoke-virtual {p0, p1, p2}, Lyads/f50;->a(ILyads/h14;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lyads/f50;->b:Lyads/k14;

    .line 88
    invoke-virtual {p0, p4}, Lyads/f50;->a(Lyads/r04;)Lyads/r04;

    move-result-object p0

    .line 89
    invoke-virtual {p1, p3, p0}, Lyads/k14;->b(Lyads/cu3;Lyads/r04;)V

    :cond_0
    return-void
.end method

.method public final a(ILyads/h14;Lyads/cu3;Lyads/r04;Ljava/io/IOException;Z)V
    .locals 0

    .line 80
    invoke-virtual {p0, p1, p2}, Lyads/f50;->a(ILyads/h14;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Lyads/f50;->b:Lyads/k14;

    .line 82
    invoke-virtual {p0, p4}, Lyads/f50;->a(Lyads/r04;)Lyads/r04;

    move-result-object p0

    .line 83
    invoke-virtual {p1, p3, p0, p5, p6}, Lyads/k14;->a(Lyads/cu3;Lyads/r04;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method

.method public final a(ILyads/h14;Lyads/r04;)V
    .locals 0

    .line 84
    invoke-virtual {p0, p1, p2}, Lyads/f50;->a(ILyads/h14;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lyads/f50;->b:Lyads/k14;

    invoke-virtual {p0, p3}, Lyads/f50;->a(Lyads/r04;)Lyads/r04;

    move-result-object p0

    invoke-virtual {p1, p0}, Lyads/k14;->b(Lyads/r04;)V

    :cond_0
    return-void
.end method

.method public final a(ILyads/h14;)Z
    .locals 6

    if-eqz p2, :cond_1

    iget-object v0, p0, Lyads/f50;->d:Lyads/h50;

    iget-object v1, p0, Lyads/f50;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Lyads/h50;->a(Ljava/lang/Object;Lyads/h14;)Lyads/h14;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :goto_0
    move-object v3, p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    :goto_1
    iget-object p2, p0, Lyads/f50;->b:Lyads/k14;

    iget v0, p2, Lyads/k14;->a:I

    if-ne v0, p1, :cond_3

    iget-object p2, p2, Lyads/k14;->b:Lyads/h14;

    invoke-static {p2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    move v2, p1

    goto :goto_3

    :cond_3
    :goto_2
    iget-object p2, p0, Lyads/f50;->d:Lyads/h50;

    iget-object p2, p2, Lyads/cs;->c:Lyads/k14;

    new-instance v0, Lyads/k14;

    iget-object v1, p2, Lyads/k14;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-wide/16 v4, 0x0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lyads/k14;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILyads/h14;J)V

    iput-object v0, p0, Lyads/f50;->b:Lyads/k14;

    :goto_3
    iget-object p1, p0, Lyads/f50;->c:Lyads/tl2;

    iget p2, p1, Lyads/tl2;->a:I

    if-ne p2, v2, :cond_4

    iget-object p1, p1, Lyads/tl2;->b:Lyads/h14;

    invoke-static {p1, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    iget-object p1, p0, Lyads/f50;->d:Lyads/h50;

    iget-object p1, p1, Lyads/cs;->d:Lyads/tl2;

    new-instance p2, Lyads/tl2;

    iget-object p1, p1, Lyads/tl2;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2, p1, v2, v3}, Lyads/tl2;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILyads/h14;)V

    iput-object p2, p0, Lyads/f50;->c:Lyads/tl2;

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public final b(ILyads/h14;Lyads/cu3;Lyads/r04;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyads/f50;->a(ILyads/h14;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lyads/f50;->b:Lyads/k14;

    invoke-virtual {p0, p4}, Lyads/f50;->a(Lyads/r04;)Lyads/r04;

    move-result-object p0

    invoke-virtual {p1, p3, p0}, Lyads/k14;->c(Lyads/cu3;Lyads/r04;)V

    :cond_0
    return-void
.end method

.method public final b(ILyads/h14;Lyads/r04;)V
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lyads/f50;->a(ILyads/h14;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 17
    iget-object p1, p0, Lyads/f50;->b:Lyads/k14;

    invoke-virtual {p0, p3}, Lyads/f50;->a(Lyads/r04;)Lyads/r04;

    move-result-object p0

    invoke-virtual {p1, p0}, Lyads/k14;->a(Lyads/r04;)V

    :cond_0
    return-void
.end method

.method public final c(ILyads/h14;Lyads/cu3;Lyads/r04;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyads/f50;->a(ILyads/h14;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lyads/f50;->b:Lyads/k14;

    invoke-virtual {p0, p4}, Lyads/f50;->a(Lyads/r04;)Lyads/r04;

    move-result-object p0

    invoke-virtual {p1, p3, p0}, Lyads/k14;->a(Lyads/cu3;Lyads/r04;)V

    :cond_0
    return-void
.end method
