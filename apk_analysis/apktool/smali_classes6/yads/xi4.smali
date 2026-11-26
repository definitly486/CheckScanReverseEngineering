.class public final Lyads/xi4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/n03;


# instance fields
.field public final a:Lyads/jk4;

.field public final b:Lyads/tt4;

.field public final c:Lyads/l15;

.field public final d:Lyads/b3;

.field public e:Lyads/z95;


# direct methods
.method public constructor <init>(Lyads/jk4;Lyads/bx5;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lyads/qt4;->a(Ly22;I)Lyads/tt4;

    move-result-object v0

    iget-object v1, p2, Lyads/bx5;->a:Lyads/l15;

    iget-object p2, p2, Lyads/bx5;->b:Lyads/b3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/xi4;->a:Lyads/jk4;

    iput-object v0, p0, Lyads/xi4;->b:Lyads/tt4;

    iput-object v1, p0, Lyads/xi4;->c:Lyads/l15;

    iput-object p2, p0, Lyads/xi4;->d:Lyads/b3;

    return-void
.end method


# virtual methods
.method public final invalidate()V
    .locals 1

    iget-object v0, p0, Lyads/xi4;->e:Lyads/z95;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lyads/z95;->c:Lyads/tt4;

    invoke-virtual {v0}, Lyads/tt4;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lyads/xi4;->e:Lyads/z95;

    return-void
.end method

.method public final pause()V
    .locals 0

    iget-object p0, p0, Lyads/xi4;->e:Lyads/z95;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lyads/z95;->c:Lyads/tt4;

    invoke-virtual {p0}, Lyads/tt4;->b()V

    :cond_0
    return-void
.end method

.method public final resume()V
    .locals 0

    iget-object p0, p0, Lyads/xi4;->e:Lyads/z95;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lyads/z95;->c:Lyads/tt4;

    invoke-virtual {p0}, Lyads/tt4;->c()V

    :cond_0
    return-void
.end method

.method public final start()V
    .locals 6

    iget-object v0, p0, Lyads/xi4;->a:Lyads/jk4;

    iget-object v1, p0, Lyads/xi4;->c:Lyads/l15;

    iget-object v2, p0, Lyads/xi4;->d:Lyads/b3;

    iget-object v3, p0, Lyads/xi4;->b:Lyads/tt4;

    new-instance v4, Lyads/wi4;

    invoke-direct {v4, p0}, Lyads/wi4;-><init>(Lyads/xi4;)V

    invoke-static {v0, v1, v2, v3, v4}, Lyads/x95;->a(Lyads/jk4;Lyads/l15;Lyads/b3;Lyads/tt4;Lll3;)Lyads/z95;

    move-result-object v0

    iget-object v1, v0, Lyads/z95;->b:Lll3;

    invoke-interface {v1}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lyads/z95;->f:J

    iget-object v3, v0, Lyads/z95;->d:Lll3;

    invoke-interface {v3}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    move-wide v1, v3

    :cond_0
    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    iget-object v1, v0, Lyads/z95;->a:Lyads/jk4;

    invoke-virtual {v1}, Lyads/jk4;->a()V

    iget-object v1, v0, Lyads/z95;->e:Lqm3;

    invoke-interface {v1}, Lll3;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v3, Lyads/y95;

    invoke-direct {v3, v0}, Lyads/y95;-><init>(Lyads/z95;)V

    iget-object v4, v0, Lyads/z95;->c:Lyads/tt4;

    invoke-virtual {v4, v1, v2, v3}, Lyads/tt4;->a(JLyads/ut4;)V

    iget-object v1, v0, Lyads/z95;->c:Lyads/tt4;

    iput-object v3, v1, Lyads/tt4;->e:Lyads/tx5;

    :goto_0
    iput-object v0, p0, Lyads/xi4;->e:Lyads/z95;

    return-void
.end method
