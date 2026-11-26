.class public final Lcw4;
.super Lwv4;
.source "SourceFile"


# instance fields
.field public final b:J

.field public final c:J

.field public d:Z

.field public e:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 2

    invoke-direct {p0}, Lwv4;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcw4;->b:J

    iput-wide p3, p0, Lcw4;->c:J

    cmp-long v0, p1, p3

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcw4;->d:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-wide p1, p3

    :goto_1
    iput-wide p1, p0, Lcw4;->e:J

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    iget-boolean p0, p0, Lcw4;->d:Z

    return p0
.end method

.method public final nextLong()J
    .locals 4

    iget-wide v0, p0, Lcw4;->e:J

    iget-wide v2, p0, Lcw4;->c:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcw4;->d:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcw4;->d:Z

    return-wide v0

    :cond_0
    invoke-static {}, Lqz0;->e()V

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    iget-wide v2, p0, Lcw4;->b:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcw4;->e:J

    return-wide v0
.end method
