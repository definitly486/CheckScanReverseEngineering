.class public final Lyads/rb6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/eb6;

.field public final b:Lyads/ob6;

.field public final c:Ly22;

.field public d:Z

.field public e:Lmb4;


# direct methods
.method public constructor <init>(Lyads/eb6;Lyads/ob6;)V
    .locals 2

    new-instance v0, Lyads/i90;

    invoke-direct {v0}, Lyads/i90;-><init>()V

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object v1

    invoke-static {v1, v0}, Lyads/xn;->a(Lhq1;Lyads/i90;)Ly22;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/rb6;->a:Lyads/eb6;

    iput-object p2, p0, Lyads/rb6;->b:Lyads/ob6;

    iput-object v0, p0, Lyads/rb6;->c:Ly22;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-boolean v0, p0, Lyads/rb6;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/rb6;->d:Z

    iget-object v0, p0, Lyads/rb6;->b:Lyads/ob6;

    invoke-virtual {v0}, Lyads/ob6;->a()V

    iget-object v0, p0, Lyads/rb6;->c:Ly22;

    sget-object v1, Lqo2;->a:Loi2;

    sget-object v1, Luy4;->a:Lhu3;

    new-instance v2, Lyads/qb6;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lyads/qb6;-><init>(Lyads/rb6;Le02;)V

    const/4 v4, 0x2

    invoke-static {v0, v1, v3, v2, v4}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object v0

    iput-object v0, p0, Lyads/rb6;->e:Lmb4;

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Lyads/rb6;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyads/rb6;->b:Lyads/ob6;

    invoke-virtual {v0}, Lyads/ob6;->b()V

    iget-object v0, p0, Lyads/rb6;->e:Lmb4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v1, p0, Lyads/rb6;->e:Lmb4;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyads/rb6;->d:Z

    :cond_1
    return-void
.end method
