.class public final Lyads/kf4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final a:Lyads/ak;

.field public final b:Lyads/a4;

.field public final c:Lyads/dh4;

.field public final d:Lyads/l65;

.field public final e:Lyads/ot3;

.field public final f:Lyads/tz2;

.field public final g:Ly22;


# direct methods
.method public constructor <init>(Lyads/ak;Lyads/a4;Lyads/dh4;Lyads/l65;Lyads/ot3;Lyads/tz2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/kf4;->a:Lyads/ak;

    iput-object p2, p0, Lyads/kf4;->b:Lyads/a4;

    iput-object p3, p0, Lyads/kf4;->c:Lyads/dh4;

    iput-object p4, p0, Lyads/kf4;->d:Lyads/l65;

    iput-object p5, p0, Lyads/kf4;->e:Lyads/ot3;

    iput-object p6, p0, Lyads/kf4;->f:Lyads/tz2;

    new-instance p1, Lyads/i90;

    invoke-direct {p1}, Lyads/i90;-><init>()V

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object p2

    invoke-static {p2, p1}, Lyads/xn;->a(Lhq1;Lyads/i90;)Ly22;

    move-result-object p1

    iput-object p1, p0, Lyads/kf4;->g:Ly22;

    return-void
.end method

.method public static final a(Ljava/lang/Throwable;)Lj59;
    .locals 0

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lyads/kf4;->d:Lyads/l65;

    iget-object v0, v0, Lyads/l65;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    iget-object v0, p0, Lyads/kf4;->e:Lyads/ot3;

    if-eqz v0, :cond_1

    iget-wide v0, v0, Lyads/ot3;->e:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lyads/kf4;->a:Lyads/ak;

    iget-boolean v0, v0, Lyads/ak;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyads/kf4;->g:Ly22;

    new-instance v1, Lzc2;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lzc2;-><init>(I)V

    new-instance v2, Lyads/jf4;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lyads/jf4;-><init>(Lyads/kf4;Landroid/view/View;Le02;)V

    invoke-static {v0, v1, v2}, Lyads/h90;->a(Ly22;Lnl3;Lbm3;)V

    :cond_1
    return-void
.end method
