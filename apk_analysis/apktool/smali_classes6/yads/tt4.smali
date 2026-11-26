.class public final Lyads/tt4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ly22;

.field public final b:Lyads/ax5;

.field public c:Lyads/rt4;

.field public d:Lyads/ut4;

.field public e:Lyads/tx5;

.field public f:J

.field public g:J

.field public h:J

.field public i:Lmb4;


# direct methods
.method public constructor <init>(Ly22;Lyads/ax5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/tt4;->a:Ly22;

    iput-object p2, p0, Lyads/tt4;->b:Lyads/ax5;

    sget-object p1, Lyads/rt4;->b:Lyads/rt4;

    iput-object p1, p0, Lyads/tt4;->c:Lyads/rt4;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lyads/tt4;->c:Lyads/rt4;

    sget-object v1, Lyads/rt4;->b:Lyads/rt4;

    if-eq v0, v1, :cond_1

    iput-object v1, p0, Lyads/tt4;->c:Lyads/rt4;

    const/4 v0, 0x0

    iput-object v0, p0, Lyads/tt4;->d:Lyads/ut4;

    iget-object v1, p0, Lyads/tt4;->i:Lmb4;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v0, p0, Lyads/tt4;->i:Lmb4;

    :cond_1
    return-void
.end method

.method public final a(JLyads/ut4;)V
    .locals 0

    .line 21
    invoke-virtual {p0}, Lyads/tt4;->a()V

    .line 22
    iput-object p3, p0, Lyads/tt4;->d:Lyads/ut4;

    .line 23
    iput-wide p1, p0, Lyads/tt4;->f:J

    .line 24
    iput-wide p1, p0, Lyads/tt4;->g:J

    .line 25
    invoke-virtual {p0}, Lyads/tt4;->d()V

    return-void
.end method

.method public final b()V
    .locals 5

    sget-object v0, Lyads/rt4;->c:Lyads/rt4;

    iget-object v1, p0, Lyads/tt4;->c:Lyads/rt4;

    if-ne v0, v1, :cond_1

    sget-object v0, Lyads/rt4;->d:Lyads/rt4;

    iput-object v0, p0, Lyads/tt4;->c:Lyads/rt4;

    iget-object v0, p0, Lyads/tt4;->i:Lmb4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v1, p0, Lyads/tt4;->i:Lmb4;

    iget-object v0, p0, Lyads/tt4;->b:Lyads/ax5;

    check-cast v0, Lcg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lyads/qt4;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lyads/tt4;->h:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lyads/tt4;->f:J

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lyads/tt4;->f:J

    iget-object v2, p0, Lyads/tt4;->e:Lyads/tx5;

    if-eqz v2, :cond_1

    iget-wide v3, p0, Lyads/tt4;->g:J

    sub-long/2addr v3, v0

    invoke-interface {v2, v0, v1, v3, v4}, Lyads/tx5;->a(JJ)V

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 2

    sget-object v0, Lyads/rt4;->d:Lyads/rt4;

    iget-object v1, p0, Lyads/tt4;->c:Lyads/rt4;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lyads/tt4;->d()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 4

    sget-object v0, Lyads/rt4;->c:Lyads/rt4;

    iput-object v0, p0, Lyads/tt4;->c:Lyads/rt4;

    iget-wide v0, p0, Lyads/tt4;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lyads/tt4;->d:Lyads/ut4;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lyads/ut4;->a()V

    :cond_0
    invoke-virtual {p0}, Lyads/tt4;->a()V

    return-void

    :cond_1
    iget-object v0, p0, Lyads/tt4;->a:Ly22;

    new-instance v1, Lyads/st4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lyads/st4;-><init>(Lyads/tt4;Le02;)V

    const/4 v3, 0x3

    invoke-static {v0, v2, v2, v1, v3}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object v0

    iput-object v0, p0, Lyads/tt4;->i:Lmb4;

    return-void
.end method
