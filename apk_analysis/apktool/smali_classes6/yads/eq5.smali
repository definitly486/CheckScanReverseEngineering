.class public final Lyads/eq5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/my3;


# instance fields
.field public final b:Lyads/du5;

.field public c:Z

.field public d:J

.field public e:J

.field public f:Lyads/dw4;


# direct methods
.method public constructor <init>(Lyads/du5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/eq5;->b:Lyads/du5;

    sget-object p1, Lyads/dw4;->e:Lyads/dw4;

    iput-object p1, p0, Lyads/eq5;->f:Lyads/dw4;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 6

    iget-wide v0, p0, Lyads/eq5;->d:J

    iget-boolean v2, p0, Lyads/eq5;->c:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lyads/eq5;->b:Lyads/du5;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lyads/eq5;->e:J

    sub-long/2addr v2, v4

    iget-object p0, p0, Lyads/eq5;->f:Lyads/dw4;

    iget v4, p0, Lyads/dw4;->b:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    invoke-static {v2, v3}, Lyads/u56;->a(J)J

    move-result-wide v2

    :goto_0
    add-long/2addr v2, v0

    return-wide v2

    :cond_0
    iget p0, p0, Lyads/dw4;->d:I

    int-to-long v4, p0

    mul-long/2addr v2, v4

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public final a(J)V
    .locals 0

    .line 40
    iput-wide p1, p0, Lyads/eq5;->d:J

    .line 41
    iget-boolean p1, p0, Lyads/eq5;->c:Z

    if-eqz p1, :cond_0

    .line 42
    iget-object p1, p0, Lyads/eq5;->b:Lyads/du5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 44
    iput-wide p1, p0, Lyads/eq5;->e:J

    :cond_0
    return-void
.end method

.method public final a(Lyads/dw4;)V
    .locals 2

    .line 45
    iget-boolean v0, p0, Lyads/eq5;->c:Z

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lyads/eq5;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lyads/eq5;->a(J)V

    .line 47
    :cond_0
    iput-object p1, p0, Lyads/eq5;->f:Lyads/dw4;

    return-void
.end method

.method public final getPlaybackParameters()Lyads/dw4;
    .locals 0

    iget-object p0, p0, Lyads/eq5;->f:Lyads/dw4;

    return-object p0
.end method
