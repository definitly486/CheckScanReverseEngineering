.class public final Lyads/ut2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/bw3;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lyads/bw3;

    invoke-direct {v0}, Lyads/bw3;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/ut2;->a:Lyads/bw3;

    return-void
.end method

.method public static final a(JLll3;Lll3;)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x1388

    cmp-long p0, v0, p0

    if-gtz p0, :cond_0

    invoke-interface {p2}, Lll3;->invoke()Ljava/lang/Object;

    return-void

    :cond_0
    invoke-interface {p3}, Lll3;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lll3;Lll3;)V
    .locals 3

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 20
    iget-object p0, p0, Lyads/ut2;->a:Lyads/bw3;

    new-instance v2, Lrea;

    invoke-direct {v2, v0, v1, p1, p2}, Lrea;-><init>(JLll3;Lll3;)V

    .line 21
    iget-object p0, p0, Lyads/bw3;->a:Landroid/os/Handler;

    .line 22
    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
