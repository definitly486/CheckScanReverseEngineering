.class public final Lyads/lh6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/nb6;
.implements Lyads/pb6;


# instance fields
.field public final a:Lyads/ja6;

.field public final b:Lyads/ec6;

.field public final c:Lyads/jf6;

.field public final d:Lyads/ya6;

.field public final e:Lyads/qf6;

.field public f:Ljava/lang/Long;

.field public g:Z


# direct methods
.method public constructor <init>(Lyads/ja6;Lyads/of6;Lyads/ec6;Lyads/jf6;Lyads/ya6;)V
    .locals 1

    new-instance v0, Lyads/qf6;

    invoke-direct {v0, p2}, Lyads/qf6;-><init>(Lyads/of6;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/lh6;->a:Lyads/ja6;

    iput-object p3, p0, Lyads/lh6;->b:Lyads/ec6;

    iput-object p4, p0, Lyads/lh6;->c:Lyads/jf6;

    iput-object p5, p0, Lyads/lh6;->d:Lyads/ya6;

    iput-object v0, p0, Lyads/lh6;->e:Lyads/qf6;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lyads/lh6;->f:Ljava/lang/Long;

    return-void
.end method

.method public final a(JJ)V
    .locals 2

    iget-boolean p1, p0, Lyads/lh6;->g:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lyads/lh6;->e:Lyads/qf6;

    invoke-virtual {p1}, Lyads/qf6;->a()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lyads/lh6;->b:Lyads/ec6;

    invoke-virtual {p1}, Lyads/ec6;->a()Lyads/cc6;

    move-result-object p1

    sget-object p3, Lyads/cc6;->e:Lyads/cc6;

    if-ne p1, p3, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    iget-object p1, p0, Lyads/lh6;->f:Ljava/lang/Long;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    sub-long p1, p3, p1

    const-wide/16 v0, 0x7d0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyads/lh6;->g:Z

    iget-object p1, p0, Lyads/lh6;->d:Lyads/ya6;

    iget-object p2, p0, Lyads/lh6;->a:Lyads/ja6;

    invoke-interface {p1, p2}, Lyads/ya6;->i(Lyads/ja6;)V

    iget-object p1, p0, Lyads/lh6;->c:Lyads/jf6;

    invoke-virtual {p1}, Lyads/jf6;->n()V

    :cond_0
    sget-object p2, Lj59;->a:Lj59;

    :cond_1
    if-nez p2, :cond_3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lyads/lh6;->f:Ljava/lang/Long;

    iget-object p1, p0, Lyads/lh6;->d:Lyads/ya6;

    iget-object p0, p0, Lyads/lh6;->a:Lyads/ja6;

    invoke-interface {p1, p0}, Lyads/ya6;->a(Lyads/ja6;)V

    return-void

    :cond_2
    iput-object p2, p0, Lyads/lh6;->f:Ljava/lang/Long;

    :cond_3
    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lyads/lh6;->f:Ljava/lang/Long;

    return-void
.end method
