.class public final Lyads/cl4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/n03;
.implements Lyads/nl4;


# instance fields
.field public final a:Lyads/el4;

.field public final b:Lyads/ra5;

.field public final c:Ljava/lang/Long;

.field public final d:Lyads/l10;

.field public final e:Lyads/y00;


# direct methods
.method public constructor <init>(Lyads/d9;Lyads/el4;Lyads/ra5;Lyads/bx5;)V
    .locals 1

    iget-object p1, p1, Lyads/d9;->j:Ljava/lang/Long;

    iget-object v0, p4, Lyads/bx5;->e:Lyads/l10;

    iget-object p4, p4, Lyads/bx5;->d:Lyads/y00;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/cl4;->a:Lyads/el4;

    iput-object p3, p0, Lyads/cl4;->b:Lyads/ra5;

    iput-object p1, p0, Lyads/cl4;->c:Ljava/lang/Long;

    iput-object v0, p0, Lyads/cl4;->d:Lyads/l10;

    iput-object p4, p0, Lyads/cl4;->e:Lyads/y00;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 36
    iget-object v0, p0, Lyads/cl4;->b:Lyads/ra5;

    invoke-virtual {v0}, Lyads/ra5;->a()V

    .line 37
    invoke-virtual {p0}, Lyads/cl4;->c()V

    return-void
.end method

.method public final a(JJ)V
    .locals 0

    iget-object p1, p0, Lyads/cl4;->e:Lyads/y00;

    invoke-interface {p1}, Lyads/y00;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lyads/cl4;->d:Lyads/l10;

    iput-wide p3, p1, Lyads/l10;->b:J

    iget-wide p1, p1, Lyads/l10;->a:J

    add-long/2addr p3, p1

    iget-object p1, p0, Lyads/cl4;->c:Ljava/lang/Long;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long p1, p3, p1

    if-ltz p1, :cond_0

    iget-object p1, p0, Lyads/cl4;->b:Lyads/ra5;

    invoke-virtual {p1}, Lyads/ra5;->a()V

    invoke-virtual {p0}, Lyads/cl4;->c()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lyads/cl4;->e:Lyads/y00;

    invoke-interface {v0}, Lyads/y00;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyads/cl4;->b:Lyads/ra5;

    invoke-virtual {v0}, Lyads/ra5;->a()V

    invoke-virtual {p0}, Lyads/cl4;->c()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lyads/cl4;->a:Lyads/el4;

    iget-object v0, v0, Lyads/el4;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final invalidate()V
    .locals 0

    invoke-virtual {p0}, Lyads/cl4;->c()V

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
    .locals 5

    iget-object v0, p0, Lyads/cl4;->a:Lyads/el4;

    iget-object v0, v0, Lyads/el4;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lyads/cl4;->e:Lyads/y00;

    invoke-interface {v0}, Lyads/y00;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyads/cl4;->c:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lyads/cl4;->d:Lyads/l10;

    iget-wide v1, v1, Lyads/l10;->a:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-ltz v0, :cond_0

    iget-object v0, p0, Lyads/cl4;->b:Lyads/ra5;

    invoke-virtual {v0}, Lyads/ra5;->a()V

    invoke-virtual {p0}, Lyads/cl4;->c()V

    :cond_0
    return-void
.end method
