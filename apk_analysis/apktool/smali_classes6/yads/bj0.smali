.class public final Lyads/bj0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/hx5;

.field public b:Lyads/oe3;

.field public c:Lyads/p55;

.field public d:Lyads/h14;

.field public e:Lyads/h14;

.field public f:Lyads/h14;


# direct methods
.method public constructor <init>(Lyads/hx5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/bj0;->a:Lyads/hx5;

    sget-object p1, Lyads/oe3;->c:Lyads/le3;

    sget-object p1, Lyads/k55;->f:Lyads/k55;

    iput-object p1, p0, Lyads/bj0;->b:Lyads/oe3;

    sget-object p1, Lyads/p55;->h:Lyads/p55;

    iput-object p1, p0, Lyads/bj0;->c:Lyads/p55;

    return-void
.end method

.method public static a(Lyads/eq2;Lyads/oe3;Lyads/h14;Lyads/hx5;)Lyads/h14;
    .locals 11

    invoke-virtual {p0}, Lyads/eq2;->q()V

    iget-object v0, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget-object v0, v0, Lyads/bw4;->a:Lyads/kx5;

    invoke-virtual {p0}, Lyads/eq2;->q()V

    iget-object v1, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget-object v1, v1, Lyads/bw4;->a:Lyads/kx5;

    invoke-virtual {v1}, Lyads/kx5;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget-object v3, v1, Lyads/bw4;->a:Lyads/kx5;

    iget-object v1, v1, Lyads/bw4;->b:Lyads/h14;

    iget-object v1, v1, Lyads/b14;->a:Ljava/lang/Object;

    invoke-virtual {v3, v1}, Lyads/kx5;->a(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    invoke-virtual {v0}, Lyads/kx5;->c()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move-object v6, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Lyads/kx5;->a(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    :goto_1
    invoke-virtual {p0}, Lyads/eq2;->j()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lyads/kx5;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v0, v1, p3, v2}, Lyads/kx5;->a(ILyads/hx5;Z)Lyads/hx5;

    move-result-object v0

    invoke-virtual {p0}, Lyads/eq2;->q()V

    iget-object v1, p0, Lyads/eq2;->b0:Lyads/bw4;

    invoke-virtual {p0, v1}, Lyads/eq2;->a(Lyads/bw4;)J

    move-result-wide v7

    invoke-static {v7, v8}, Lyads/u56;->b(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Lyads/u56;->a(J)J

    move-result-wide v7

    iget-wide v9, p3, Lyads/hx5;->f:J

    sub-long/2addr v7, v9

    invoke-virtual {v0, v7, v8}, Lyads/hx5;->a(J)I

    move-result p3

    :goto_2
    move v10, p3

    goto :goto_4

    :cond_3
    :goto_3
    const/4 p3, -0x1

    goto :goto_2

    :goto_4
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Lyads/h14;

    invoke-virtual {p0}, Lyads/eq2;->j()Z

    move-result v7

    invoke-virtual {p0}, Lyads/eq2;->e()I

    move-result v8

    invoke-virtual {p0}, Lyads/eq2;->f()I

    move-result v9

    invoke-static/range {v5 .. v10}, Lyads/bj0;->a(Lyads/h14;Ljava/lang/Object;ZIII)Z

    move-result p3

    if-eqz p3, :cond_4

    return-object v5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lyads/eq2;->j()Z

    move-result v7

    invoke-virtual {p0}, Lyads/eq2;->e()I

    move-result v8

    invoke-virtual {p0}, Lyads/eq2;->f()I

    move-result v9

    move-object v5, p2

    invoke-static/range {v5 .. v10}, Lyads/bj0;->a(Lyads/h14;Ljava/lang/Object;ZIII)Z

    move-result p0

    if-eqz p0, :cond_6

    return-object v5

    :cond_6
    return-object v4
.end method

.method public static a(Lyads/h14;Ljava/lang/Object;ZIII)Z
    .locals 1

    .line 178
    iget-object v0, p0, Lyads/b14;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    .line 179
    iget p1, p0, Lyads/b14;->b:I

    if-ne p1, p3, :cond_1

    iget p1, p0, Lyads/b14;->c:I

    if-eq p1, p4, :cond_2

    :cond_1
    if-nez p2, :cond_3

    iget p1, p0, Lyads/b14;->b:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    iget p0, p0, Lyads/b14;->e:I

    if-ne p0, p5, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method


# virtual methods
.method public final a(Lyads/kx5;)V
    .locals 4

    .line 162
    new-instance v0, Lyads/pe3;

    const/4 v1, 0x4

    .line 163
    invoke-direct {v0, v1}, Lyads/pe3;-><init>(I)V

    .line 164
    iget-object v1, p0, Lyads/bj0;->b:Lyads/oe3;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    iget-object v1, p0, Lyads/bj0;->e:Lyads/h14;

    invoke-virtual {p0, v0, v1, p1}, Lyads/bj0;->a(Lyads/pe3;Lyads/h14;Lyads/kx5;)V

    .line 166
    iget-object v1, p0, Lyads/bj0;->f:Lyads/h14;

    iget-object v2, p0, Lyads/bj0;->e:Lyads/h14;

    invoke-static {v1, v2}, Lyads/ep4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    iget-object v1, p0, Lyads/bj0;->f:Lyads/h14;

    invoke-virtual {p0, v0, v1, p1}, Lyads/bj0;->a(Lyads/pe3;Lyads/h14;Lyads/kx5;)V

    .line 168
    :cond_0
    iget-object v1, p0, Lyads/bj0;->d:Lyads/h14;

    iget-object v2, p0, Lyads/bj0;->e:Lyads/h14;

    invoke-static {v1, v2}, Lyads/ep4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lyads/bj0;->d:Lyads/h14;

    iget-object v2, p0, Lyads/bj0;->f:Lyads/h14;

    .line 169
    invoke-static {v1, v2}, Lyads/ep4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 170
    iget-object v1, p0, Lyads/bj0;->d:Lyads/h14;

    invoke-virtual {p0, v0, v1, p1}, Lyads/bj0;->a(Lyads/pe3;Lyads/h14;Lyads/kx5;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 171
    :goto_0
    iget-object v2, p0, Lyads/bj0;->b:Lyads/oe3;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    .line 172
    iget-object v3, p0, Lyads/bj0;->b:Lyads/oe3;

    if-ge v1, v2, :cond_2

    .line 173
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/h14;

    invoke-virtual {p0, v0, v2, p1}, Lyads/bj0;->a(Lyads/pe3;Lyads/h14;Lyads/kx5;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    :cond_2
    iget-object v1, p0, Lyads/bj0;->d:Lyads/h14;

    invoke-virtual {v3, v1}, Lyads/oe3;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 175
    iget-object v1, p0, Lyads/bj0;->d:Lyads/h14;

    invoke-virtual {p0, v0, v1, p1}, Lyads/bj0;->a(Lyads/pe3;Lyads/h14;Lyads/kx5;)V

    .line 176
    :cond_3
    :goto_1
    iget p1, v0, Lyads/pe3;->b:I

    iget-object v0, v0, Lyads/pe3;->a:[Ljava/lang/Object;

    invoke-static {p1, v0}, Lyads/p55;->a(I[Ljava/lang/Object;)Lyads/p55;

    move-result-object p1

    .line 177
    iput-object p1, p0, Lyads/bj0;->c:Lyads/p55;

    return-void
.end method

.method public final a(Lyads/pe3;Lyads/h14;Lyads/kx5;)V
    .locals 2

    if-nez p2, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, p2, Lyads/b14;->a:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lyads/kx5;->a(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 159
    invoke-virtual {p1, p2, p3}, Lyads/pe3;->a(Ljava/lang/Object;Ljava/lang/Object;)Lyads/pe3;

    return-void

    .line 160
    :cond_1
    iget-object p0, p0, Lyads/bj0;->c:Lyads/p55;

    invoke-virtual {p0, p2}, Lyads/p55;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/kx5;

    if-eqz p0, :cond_2

    .line 161
    invoke-virtual {p1, p2, p0}, Lyads/pe3;->a(Ljava/lang/Object;Ljava/lang/Object;)Lyads/pe3;

    :cond_2
    :goto_0
    return-void
.end method
