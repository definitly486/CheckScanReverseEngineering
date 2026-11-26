.class public final Lyads/xl4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/n03;
.implements Lyads/nl4;


# instance fields
.field public final a:Lyads/el4;

.field public final b:Lyads/jk4;

.field public final c:Lyads/l15;

.field public final d:Lyads/b3;


# direct methods
.method public constructor <init>(Lyads/el4;Lyads/jk4;Lyads/bx5;)V
    .locals 1

    iget-object v0, p3, Lyads/bx5;->a:Lyads/l15;

    iget-object p3, p3, Lyads/bx5;->b:Lyads/b3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/xl4;->a:Lyads/el4;

    iput-object p2, p0, Lyads/xl4;->b:Lyads/jk4;

    iput-object v0, p0, Lyads/xl4;->c:Lyads/l15;

    iput-object p3, p0, Lyads/xl4;->d:Lyads/b3;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 30
    iget-object v0, p0, Lyads/xl4;->b:Lyads/jk4;

    invoke-virtual {v0}, Lyads/jk4;->a()V

    .line 31
    invoke-virtual {p0}, Lyads/xl4;->invalidate()V

    return-void
.end method

.method public final a(JJ)V
    .locals 2

    iget-object v0, p0, Lyads/xl4;->c:Lyads/l15;

    iget-wide v0, v0, Lyads/l15;->a:J

    add-long/2addr p3, v0

    iget-object v0, p0, Lyads/xl4;->d:Lyads/b3;

    invoke-interface {v0, p1, p2}, Lyads/b3;->a(J)J

    move-result-wide p1

    cmp-long v0, p3, p1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lyads/xl4;->invalidate()V

    iget-object p0, p0, Lyads/xl4;->b:Lyads/jk4;

    invoke-virtual {p0}, Lyads/jk4;->a()V

    return-void

    :cond_0
    iget-object p0, p0, Lyads/xl4;->b:Lyads/jk4;

    invoke-virtual {p0, p1, p2, p3, p4}, Lyads/jk4;->a(JJ)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lyads/xl4;->b:Lyads/jk4;

    invoke-virtual {v0}, Lyads/jk4;->a()V

    invoke-virtual {p0}, Lyads/xl4;->invalidate()V

    return-void
.end method

.method public final invalidate()V
    .locals 1

    iget-object v0, p0, Lyads/xl4;->a:Lyads/el4;

    iget-object v0, v0, Lyads/el4;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final pause()V
    .locals 0

    return-void
.end method

.method public final resume()V
    .locals 0

    return-void
.end method

.method public final start()V
    .locals 1

    iget-object v0, p0, Lyads/xl4;->a:Lyads/el4;

    iget-object v0, v0, Lyads/el4;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
