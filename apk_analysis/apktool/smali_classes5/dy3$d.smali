.class public final Ldy3$d;
.super Ldy3$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public e:J

.field public final synthetic f:Ldy3;


# direct methods
.method public constructor <init>(Ldy3;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    iput-object p1, p0, Ldy3$d;->f:Ldy3;

    invoke-direct {p0, p1}, Ldy3$a;-><init>(Ldy3;)V

    iput-wide p2, p0, Ldy3$d;->e:J

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ldy3$a;->m()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    iget-boolean v0, p0, Ldy3$a;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Ldy3$d;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    sget-object v0, Lgb9;->a:[B

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x64

    :try_start_0
    invoke-static {p0, v0}, Lgb9;->t(Lv48;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Ldy3$d;->f:Ldy3;

    iget-object v0, v0, Ldy3;->b:Lly6;

    invoke-virtual {v0}, Lly6;->l()V

    invoke-virtual {p0}, Ldy3$a;->m()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldy3$a;->c:Z

    return-void
.end method

.method public final t0(Lbu0;J)J
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_4

    iget-boolean v2, p0, Ldy3$a;->c:Z

    if-nez v2, :cond_3

    iget-wide v2, p0, Ldy3$d;->e:J

    cmp-long v4, v2, v0

    const-wide/16 v5, -0x1

    if-nez v4, :cond_0

    return-wide v5

    :cond_0
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-super {p0, p1, p2, p3}, Ldy3$a;->t0(Lbu0;J)J

    move-result-wide p1

    cmp-long p3, p1, v5

    if-eqz p3, :cond_2

    iget-wide v2, p0, Ldy3$d;->e:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Ldy3$d;->e:J

    cmp-long p3, v2, v0

    if-nez p3, :cond_1

    invoke-virtual {p0}, Ldy3$a;->m()V

    :cond_1
    return-wide p1

    :cond_2
    iget-object p1, p0, Ldy3$d;->f:Ldy3;

    iget-object p1, p1, Ldy3;->b:Lly6;

    invoke-virtual {p1}, Lly6;->l()V

    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ldy3$a;->m()V

    throw p1

    :cond_3
    const-string p0, "closed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-wide v0

    :cond_4
    const-string p0, "byteCount < 0: "

    invoke-static {p2, p3, p0}, Lr01;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    return-wide v0
.end method
