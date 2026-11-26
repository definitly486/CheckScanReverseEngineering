.class public final Lyads/x86;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/wh5;


# instance fields
.field public final a:[J

.field public final b:[J

.field public final c:J

.field public final d:J


# direct methods
.method public constructor <init>([J[JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/x86;->a:[J

    iput-object p2, p0, Lyads/x86;->b:[J

    iput-wide p3, p0, Lyads/x86;->c:J

    iput-wide p5, p0, Lyads/x86;->d:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 12
    iget-wide v0, p0, Lyads/x86;->d:J

    return-wide v0
.end method

.method public final a(J)J
    .locals 2

    iget-object v0, p0, Lyads/x86;->a:[J

    iget-object p0, p0, Lyads/x86;->b:[J

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1}, Lyads/u56;->b([JJZ)I

    move-result p0

    aget-wide p0, v0, p0

    return-wide p0
.end method

.method public final b(J)Lyads/qh5;
    .locals 8

    iget-object v0, p0, Lyads/x86;->a:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lyads/u56;->b([JJZ)I

    move-result v0

    new-instance v2, Lyads/uh5;

    iget-object v3, p0, Lyads/x86;->a:[J

    aget-wide v4, v3, v0

    iget-object p0, p0, Lyads/x86;->b:[J

    aget-wide v6, p0, v0

    invoke-direct {v2, v4, v5, v6, v7}, Lyads/uh5;-><init>(JJ)V

    cmp-long p1, v4, p1

    if-gez p1, :cond_1

    array-length p1, v3

    sub-int/2addr p1, v1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lyads/uh5;

    add-int/2addr v0, v1

    aget-wide v4, v3, v0

    aget-wide v0, p0, v0

    invoke-direct {p1, v4, v5, v0, v1}, Lyads/uh5;-><init>(JJ)V

    new-instance p0, Lyads/qh5;

    invoke-direct {p0, v2, p1}, Lyads/qh5;-><init>(Lyads/uh5;Lyads/uh5;)V

    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Lyads/qh5;

    invoke-direct {p0, v2, v2}, Lyads/qh5;-><init>(Lyads/uh5;Lyads/uh5;)V

    return-object p0
.end method

.method public final b()Z
    .locals 0

    .line 51
    const/4 p0, 0x1

    return p0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lyads/x86;->c:J

    return-wide v0
.end method
