.class public final Lyads/dl4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/n03;
.implements Lyads/nl4;


# instance fields
.field public final a:Lyads/el4;

.field public b:Lyads/b4;

.field public c:Lyads/m15;

.field public final d:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lyads/d9;Lyads/el4;Lyads/b4;Lyads/m15;)V
    .locals 0

    iget-object p1, p1, Lyads/d9;->s:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/dl4;->a:Lyads/el4;

    iput-object p3, p0, Lyads/dl4;->b:Lyads/b4;

    iput-object p4, p0, Lyads/dl4;->c:Lyads/m15;

    iput-object p1, p0, Lyads/dl4;->d:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 46
    iget-object v0, p0, Lyads/dl4;->b:Lyads/b4;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lyads/b4;->a()V

    :cond_0
    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lyads/dl4;->b:Lyads/b4;

    return-void
.end method

.method public final a(JJ)V
    .locals 1

    iget-object v0, p0, Lyads/dl4;->c:Lyads/m15;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lyads/m15;->a(JJ)V

    :cond_0
    iget-object p1, p0, Lyads/dl4;->d:Ljava/lang/Long;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long p1, p3, p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lyads/dl4;->c:Lyads/m15;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lyads/m15;->a()V

    :cond_1
    iget-object p1, p0, Lyads/dl4;->b:Lyads/b4;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lyads/b4;->b()V

    :cond_2
    iget-object p1, p0, Lyads/dl4;->a:Lyads/el4;

    iget-object p1, p1, Lyads/el4;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lyads/dl4;->b:Lyads/b4;

    iput-object p1, p0, Lyads/dl4;->c:Lyads/m15;

    :cond_3
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lyads/dl4;->c:Lyads/m15;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lyads/m15;->a()V

    :cond_0
    iget-object v0, p0, Lyads/dl4;->b:Lyads/b4;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lyads/b4;->b()V

    :cond_1
    iget-object v0, p0, Lyads/dl4;->a:Lyads/el4;

    iget-object v0, v0, Lyads/el4;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lyads/dl4;->b:Lyads/b4;

    iput-object v0, p0, Lyads/dl4;->c:Lyads/m15;

    return-void
.end method

.method public final invalidate()V
    .locals 1

    iget-object v0, p0, Lyads/dl4;->a:Lyads/el4;

    iget-object v0, v0, Lyads/el4;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lyads/dl4;->b:Lyads/b4;

    iput-object v0, p0, Lyads/dl4;->c:Lyads/m15;

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

    iget-object v0, p0, Lyads/dl4;->a:Lyads/el4;

    iget-object v0, v0, Lyads/el4;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
