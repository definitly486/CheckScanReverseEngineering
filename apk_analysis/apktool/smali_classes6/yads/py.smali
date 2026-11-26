.class public abstract Lyads/py;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/nt5;


# instance fields
.field public final a:Ljava/util/ArrayDeque;

.field public final b:Ljava/util/ArrayDeque;

.field public final c:Ljava/util/PriorityQueue;

.field public d:Lyads/ny;

.field public e:J

.field public f:J


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lyads/py;->a:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lyads/py;->a:Ljava/util/ArrayDeque;

    new-instance v3, Lyads/ny;

    invoke-direct {v3}, Lyads/ny;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lyads/py;->b:Ljava/util/ArrayDeque;

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lyads/py;->b:Ljava/util/ArrayDeque;

    new-instance v2, Lyads/oy;

    new-instance v3, Lea;

    invoke-direct {v3, p0}, Lea;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Lyads/oy;-><init>(Lyads/ni0;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lyads/py;->c:Ljava/util/PriorityQueue;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lyads/rt5;
    .locals 0

    .line 48
    invoke-virtual {p0}, Lyads/py;->d()Lyads/rt5;

    move-result-object p0

    return-object p0
.end method

.method public final a(J)V
    .locals 0

    .line 49
    iput-wide p1, p0, Lyads/py;->e:J

    return-void
.end method

.method public abstract a(Lyads/ny;)V
.end method

.method public final a(Lyads/qt5;)V
    .locals 4

    iget-object v0, p0, Lyads/py;->d:Lyads/ny;

    if-ne p1, v0, :cond_1

    check-cast p1, Lyads/ny;

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Lyads/ev;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lyads/mi0;->b()V

    iget-object v0, p0, Lyads/py;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lyads/py;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lyads/py;->f:J

    iput-wide v0, p1, Lyads/ny;->j:J

    iget-object v0, p0, Lyads/py;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lyads/py;->d:Lyads/ny;

    return-void

    :cond_1
    invoke-static {}, Lmi2;->b()V

    return-void
.end method

.method public final a(Lyads/rt5;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    iput v0, p1, Lyads/ev;->b:I

    const/4 v0, 0x0

    .line 46
    iput-object v0, p1, Lyads/rt5;->d:Lyads/mt5;

    .line 47
    iget-object p0, p0, Lyads/py;->b:Ljava/util/ArrayDeque;

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lyads/py;->d:Lyads/ny;

    if-nez v0, :cond_1

    iget-object v0, p0, Lyads/py;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lyads/py;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/ny;

    iput-object v0, p0, Lyads/py;->d:Lyads/ny;

    return-object v0

    :cond_1
    invoke-static {}, Lud;->g()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract c()Lyads/qy;
.end method

.method public d()Lyads/rt5;
    .locals 6

    iget-object v0, p0, Lyads/py;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :goto_0
    iget-object v0, p0, Lyads/py;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lyads/py;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/ny;

    sget v2, Lyads/u56;->a:I

    iget-wide v2, v0, Lyads/mi0;->f:J

    iget-wide v4, p0, Lyads/py;->e:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    iget-object v0, p0, Lyads/py;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/ny;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lyads/ev;->b(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lyads/py;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/rt5;

    iget v3, v1, Lyads/ev;->b:I

    or-int/2addr v2, v3

    iput v2, v1, Lyads/ev;->b:I

    invoke-virtual {v0}, Lyads/mi0;->b()V

    iget-object p0, p0, Lyads/py;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_1
    invoke-virtual {p0, v0}, Lyads/py;->a(Lyads/ny;)V

    invoke-virtual {p0}, Lyads/py;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lyads/py;->c()Lyads/qy;

    move-result-object v1

    iget-object v2, p0, Lyads/py;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/rt5;

    iget-wide v3, v0, Lyads/mi0;->f:J

    iput-wide v3, v2, Lyads/rt5;->c:J

    iput-object v1, v2, Lyads/rt5;->d:Lyads/mt5;

    iput-wide v3, v2, Lyads/rt5;->e:J

    invoke-virtual {v0}, Lyads/mi0;->b()V

    iget-object p0, p0, Lyads/py;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-object v2

    :cond_2
    invoke-virtual {v0}, Lyads/mi0;->b()V

    iget-object v2, p0, Lyads/py;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public final e()Lyads/rt5;
    .locals 0

    iget-object p0, p0, Lyads/py;->b:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/rt5;

    return-object p0
.end method

.method public abstract f()Z
.end method

.method public flush()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lyads/py;->f:J

    iput-wide v0, p0, Lyads/py;->e:J

    :goto_0
    iget-object v0, p0, Lyads/py;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lyads/py;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/ny;

    sget v1, Lyads/u56;->a:I

    invoke-virtual {v0}, Lyads/mi0;->b()V

    iget-object v1, p0, Lyads/py;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lyads/py;->d:Lyads/ny;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lyads/mi0;->b()V

    iget-object v1, p0, Lyads/py;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lyads/py;->d:Lyads/ny;

    :cond_1
    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method
