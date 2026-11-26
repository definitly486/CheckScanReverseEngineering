.class public final Lyads/ck0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/e10;


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Lyads/ph6;

.field public final c:Lyads/jd0;

.field public final d:J

.field public final e:Lyads/l10;

.field public final f:Lyads/tt4;


# direct methods
.method public constructor <init>(Landroid/view/View;Lyads/ph6;Lyads/jd0;JLyads/l10;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lyads/qt4;->a(Ly22;I)Lyads/tt4;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ck0;->a:Landroid/view/View;

    iput-object p2, p0, Lyads/ck0;->b:Lyads/ph6;

    iput-object p3, p0, Lyads/ck0;->c:Lyads/jd0;

    iput-wide p4, p0, Lyads/ck0;->d:J

    iput-object p6, p0, Lyads/ck0;->e:Lyads/l10;

    iput-object v0, p0, Lyads/ck0;->f:Lyads/tt4;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lyads/ck0;->f:Lyads/tt4;

    invoke-virtual {p0}, Lyads/tt4;->c()V

    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lyads/ck0;->f:Lyads/tt4;

    invoke-virtual {p0}, Lyads/tt4;->b()V

    return-void
.end method

.method public final invalidate()V
    .locals 0

    iget-object p0, p0, Lyads/ck0;->f:Lyads/tt4;

    invoke-virtual {p0}, Lyads/tt4;->a()V

    return-void
.end method

.method public final onAdDisplayed()V
    .locals 5

    new-instance v0, Lyads/bk0;

    iget-object v1, p0, Lyads/ck0;->a:Landroid/view/View;

    iget-object v2, p0, Lyads/ck0;->b:Lyads/ph6;

    iget-object v3, p0, Lyads/ck0;->c:Lyads/jd0;

    invoke-direct {v0, v1, v2, v3}, Lyads/bk0;-><init>(Landroid/view/View;Lyads/ph6;Lyads/jd0;)V

    iget-wide v1, p0, Lyads/ck0;->d:J

    iget-object v3, p0, Lyads/ck0;->e:Lyads/l10;

    iget-wide v3, v3, Lyads/l10;->a:J

    sub-long/2addr v1, v3

    long-to-double v1, v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    double-to-long v1, v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    iget-object v0, p0, Lyads/ck0;->b:Lyads/ph6;

    iget-object p0, p0, Lyads/ck0;->a:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v3, p0, Lyads/ck0;->f:Lyads/tt4;

    iget-object v4, p0, Lyads/ck0;->e:Lyads/l10;

    iput-object v4, v3, Lyads/tt4;->e:Lyads/tx5;

    invoke-virtual {v3, v1, v2, v0}, Lyads/tt4;->a(JLyads/ut4;)V

    iget-object p0, p0, Lyads/ck0;->c:Lyads/jd0;

    sget-object v0, Lyads/id0;->f:Lyads/id0;

    invoke-virtual {p0, v0}, Lyads/jd0;->a(Lyads/id0;)V

    return-void
.end method
