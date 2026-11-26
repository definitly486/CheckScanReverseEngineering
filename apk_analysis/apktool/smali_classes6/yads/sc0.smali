.class public final Lyads/sc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/qc0;


# instance fields
.field public final a:Lyads/gz;

.field public final b:J


# direct methods
.method public constructor <init>(Lyads/gz;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/sc0;->a:Lyads/gz;

    iput-wide p2, p0, Lyads/sc0;->b:J

    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 2

    .line 14
    iget-object v0, p0, Lyads/sc0;->a:Lyads/gz;

    iget-object v0, v0, Lyads/gz;->e:[J

    long-to-int p1, p1

    aget-wide p1, v0, p1

    iget-wide v0, p0, Lyads/sc0;->b:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public final a(JJ)J
    .locals 2

    iget-object p3, p0, Lyads/sc0;->a:Lyads/gz;

    iget-wide v0, p0, Lyads/sc0;->b:J

    add-long/2addr p1, v0

    iget-object p0, p3, Lyads/gz;->e:[J

    const/4 p3, 0x1

    invoke-static {p0, p1, p2, p3}, Lyads/u56;->b([JJZ)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public final a()Z
    .locals 0

    .line 15
    const/4 p0, 0x1

    return p0
.end method

.method public final b()J
    .locals 2

    .line 20
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final b(JJ)J
    .locals 0

    .line 19
    iget-object p0, p0, Lyads/sc0;->a:Lyads/gz;

    iget-object p0, p0, Lyads/gz;->d:[J

    long-to-int p1, p1

    aget-wide p1, p0, p1

    return-wide p1
.end method

.method public final b(J)Lyads/y35;
    .locals 6

    new-instance v0, Lyads/y35;

    iget-object p0, p0, Lyads/sc0;->a:Lyads/gz;

    iget-object v1, p0, Lyads/gz;->c:[J

    long-to-int p1, p1

    aget-wide v2, v1, p1

    iget-object p0, p0, Lyads/gz;->b:[I

    aget p0, p0, p1

    int-to-long v4, p0

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v5}, Lyads/y35;-><init>(Ljava/lang/String;JJ)V

    return-object v0
.end method

.method public final c(J)J
    .locals 0

    iget-object p0, p0, Lyads/sc0;->a:Lyads/gz;

    iget p0, p0, Lyads/gz;->a:I

    int-to-long p0, p0

    return-wide p0
.end method

.method public final c(JJ)J
    .locals 0

    .line 6
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final d(JJ)J
    .locals 0

    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p0
.end method

.method public final e(JJ)J
    .locals 0

    iget-object p0, p0, Lyads/sc0;->a:Lyads/gz;

    iget p0, p0, Lyads/gz;->a:I

    int-to-long p0, p0

    return-wide p0
.end method
