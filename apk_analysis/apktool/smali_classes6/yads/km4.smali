.class public final Lyads/km4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/n03;
.implements Lyads/mm4;


# instance fields
.field public final a:Lyads/lm4;

.field public b:Lyads/b4;

.field public final c:Lyads/ek0;

.field public d:Lyads/m15;

.field public final e:Lyads/tt4;


# direct methods
.method public constructor <init>(Lyads/lm4;Lyads/b4;Lyads/ek0;Lyads/m15;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lyads/qt4;->a(Ly22;I)Lyads/tt4;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/km4;->a:Lyads/lm4;

    iput-object p2, p0, Lyads/km4;->b:Lyads/b4;

    iput-object p3, p0, Lyads/km4;->c:Lyads/ek0;

    iput-object p4, p0, Lyads/km4;->d:Lyads/m15;

    iput-object v0, p0, Lyads/km4;->e:Lyads/tt4;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lyads/km4;->d:Lyads/m15;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lyads/m15;->a()V

    :cond_0
    iget-object v0, p0, Lyads/km4;->b:Lyads/b4;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lyads/b4;->b()V

    :cond_1
    iget-object v0, p0, Lyads/km4;->a:Lyads/lm4;

    iget-object v0, v0, Lyads/lm4;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lyads/km4;->b:Lyads/b4;

    iput-object v0, p0, Lyads/km4;->d:Lyads/m15;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 27
    return-void
.end method

.method public final invalidate()V
    .locals 2

    iget-object v0, p0, Lyads/km4;->e:Lyads/tt4;

    invoke-virtual {v0}, Lyads/tt4;->a()V

    iget-object v0, p0, Lyads/km4;->e:Lyads/tt4;

    const/4 v1, 0x0

    iput-object v1, v0, Lyads/tt4;->e:Lyads/tx5;

    iget-object v0, p0, Lyads/km4;->a:Lyads/lm4;

    iget-object v0, v0, Lyads/lm4;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iput-object v1, p0, Lyads/km4;->b:Lyads/b4;

    iput-object v1, p0, Lyads/km4;->d:Lyads/m15;

    return-void
.end method

.method public final pause()V
    .locals 0

    iget-object p0, p0, Lyads/km4;->e:Lyads/tt4;

    invoke-virtual {p0}, Lyads/tt4;->b()V

    return-void
.end method

.method public final resume()V
    .locals 0

    iget-object p0, p0, Lyads/km4;->e:Lyads/tt4;

    invoke-virtual {p0}, Lyads/tt4;->c()V

    return-void
.end method

.method public final start()V
    .locals 4

    iget-object v0, p0, Lyads/km4;->a:Lyads/lm4;

    iget-object v0, v0, Lyads/lm4;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lyads/km4;->c:Lyads/ek0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lyads/ek0;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Lyads/jm4;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, p0, v2, v3}, Lyads/jm4;-><init>(Lyads/km4;J)V

    iget-object p0, p0, Lyads/km4;->e:Lyads/tt4;

    iput-object v1, p0, Lyads/tt4;->e:Lyads/tx5;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, v1}, Lyads/tt4;->a(JLyads/ut4;)V

    :cond_1
    return-void
.end method
