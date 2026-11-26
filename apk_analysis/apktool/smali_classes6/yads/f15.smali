.class public final Lyads/f15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/e10;


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Landroid/widget/ProgressBar;

.field public final c:Lyads/gn2;

.field public final d:Lyads/jd0;

.field public final e:Lyads/l15;

.field public final f:J

.field public final g:Lyads/tt4;

.field public final h:Lyads/e15;

.field public final i:Lyads/d15;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/ProgressBar;Lyads/gn2;Lyads/k10;Lyads/jd0;Lyads/l15;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/f15;->a:Landroid/view/View;

    iput-object p2, p0, Lyads/f15;->b:Landroid/widget/ProgressBar;

    iput-object p3, p0, Lyads/f15;->c:Lyads/gn2;

    iput-object p5, p0, Lyads/f15;->d:Lyads/jd0;

    iput-object p6, p0, Lyads/f15;->e:Lyads/l15;

    iput-wide p7, p0, Lyads/f15;->f:J

    const/4 p6, 0x0

    const/4 v0, 0x3

    invoke-static {p6, v0}, Lyads/qt4;->a(Ly22;I)Lyads/tt4;

    move-result-object p6

    iput-object p6, p0, Lyads/f15;->g:Lyads/tt4;

    new-instance p6, Lyads/e15;

    invoke-direct {p6, p1, p3, p5}, Lyads/e15;-><init>(Landroid/view/View;Lyads/gn2;Lyads/jd0;)V

    iput-object p6, p0, Lyads/f15;->h:Lyads/e15;

    new-instance p1, Lyads/d15;

    invoke-direct {p1, p2, p4, p7, p8}, Lyads/d15;-><init>(Landroid/widget/ProgressBar;Lyads/k10;J)V

    iput-object p1, p0, Lyads/f15;->i:Lyads/d15;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lyads/f15;->g:Lyads/tt4;

    invoke-virtual {p0}, Lyads/tt4;->c()V

    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lyads/f15;->g:Lyads/tt4;

    invoke-virtual {p0}, Lyads/tt4;->b()V

    return-void
.end method

.method public final invalidate()V
    .locals 0

    iget-object p0, p0, Lyads/f15;->g:Lyads/tt4;

    invoke-virtual {p0}, Lyads/tt4;->a()V

    return-void
.end method

.method public final onAdDisplayed()V
    .locals 4

    iget-object v0, p0, Lyads/f15;->b:Landroid/widget/ProgressBar;

    iget-wide v1, p0, Lyads/f15;->f:J

    long-to-int v1, v1

    iget-object v2, p0, Lyads/f15;->e:Lyads/l15;

    iget-wide v2, v2, Lyads/l15;->a:J

    long-to-int v2, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-wide v0, p0, Lyads/f15;->f:J

    iget-object v2, p0, Lyads/f15;->e:Lyads/l15;

    iget-wide v2, v2, Lyads/l15;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lyads/f15;->c:Lyads/gn2;

    iget-object v3, p0, Lyads/f15;->a:Landroid/view/View;

    invoke-virtual {v2, v3}, Lyads/gn2;->a(Landroid/view/View;)V

    iget-object v2, p0, Lyads/f15;->g:Lyads/tt4;

    iget-object v3, p0, Lyads/f15;->i:Lyads/d15;

    iput-object v3, v2, Lyads/tt4;->e:Lyads/tx5;

    iget-object v3, p0, Lyads/f15;->h:Lyads/e15;

    invoke-virtual {v2, v0, v1, v3}, Lyads/tt4;->a(JLyads/ut4;)V

    iget-object p0, p0, Lyads/f15;->d:Lyads/jd0;

    sget-object v0, Lyads/id0;->f:Lyads/id0;

    invoke-virtual {p0, v0}, Lyads/jd0;->a(Lyads/id0;)V

    :cond_0
    return-void
.end method
