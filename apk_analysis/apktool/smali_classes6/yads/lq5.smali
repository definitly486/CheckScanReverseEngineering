.class public final Lyads/lq5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/xs2;


# instance fields
.field public final a:Lyads/wk0;

.field public final b:J


# direct methods
.method public constructor <init>(Lyads/wk0;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/lq5;->a:Lyads/wk0;

    iget-wide v0, p1, Lyads/wk0;->d:J

    cmp-long p1, v0, p2

    if-ltz p1, :cond_0

    iput-wide p2, p0, Lyads/lq5;->b:J

    return-void

    :cond_0
    invoke-static {}, Lmi2;->b()V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a()J
    .locals 4

    .line 11
    iget-object v0, p0, Lyads/lq5;->a:Lyads/wk0;

    .line 12
    iget-wide v0, v0, Lyads/wk0;->c:J

    .line 13
    iget-wide v2, p0, Lyads/lq5;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final a(I)V
    .locals 0

    .line 8
    iget-object p0, p0, Lyads/lq5;->a:Lyads/wk0;

    invoke-virtual {p0, p1}, Lyads/wk0;->a(I)V

    return-void
.end method

.method public final a([BII)V
    .locals 1

    .line 9
    iget-object p0, p0, Lyads/lq5;->a:Lyads/wk0;

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, p2, p3, v0}, Lyads/wk0;->b([BIIZ)Z

    return-void
.end method

.method public final a([BIIZ)Z
    .locals 0

    iget-object p0, p0, Lyads/lq5;->a:Lyads/wk0;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lyads/wk0;->a([BIIZ)Z

    move-result p0

    return p0
.end method

.method public final b(I)V
    .locals 1

    .line 10
    iget-object p0, p0, Lyads/lq5;->a:Lyads/wk0;

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, v0}, Lyads/wk0;->a(IZ)Z

    return-void
.end method

.method public final b([BII)V
    .locals 1

    .line 8
    iget-object p0, p0, Lyads/lq5;->a:Lyads/wk0;

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, p2, p3, v0}, Lyads/wk0;->a([BIIZ)Z

    return-void
.end method

.method public final b([BIIZ)Z
    .locals 0

    iget-object p0, p0, Lyads/lq5;->a:Lyads/wk0;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lyads/wk0;->b([BIIZ)Z

    move-result p0

    return p0
.end method

.method public final c([BII)I
    .locals 0

    iget-object p0, p0, Lyads/lq5;->a:Lyads/wk0;

    invoke-virtual {p0, p1, p2, p3}, Lyads/wk0;->c([BII)I

    move-result p0

    return p0
.end method

.method public final c()V
    .locals 1

    .line 7
    iget-object p0, p0, Lyads/lq5;->a:Lyads/wk0;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lyads/wk0;->f:I

    return-void
.end method

.method public final e()J
    .locals 5

    iget-object v0, p0, Lyads/lq5;->a:Lyads/wk0;

    iget-wide v1, v0, Lyads/wk0;->d:J

    iget v0, v0, Lyads/wk0;->f:I

    int-to-long v3, v0

    add-long/2addr v1, v3

    iget-wide v3, p0, Lyads/lq5;->b:J

    sub-long/2addr v1, v3

    return-wide v1
.end method

.method public final f()J
    .locals 4

    iget-object v0, p0, Lyads/lq5;->a:Lyads/wk0;

    iget-wide v0, v0, Lyads/wk0;->d:J

    iget-wide v2, p0, Lyads/lq5;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
