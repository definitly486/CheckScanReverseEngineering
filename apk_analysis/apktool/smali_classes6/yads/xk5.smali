.class public abstract Lyads/xk5;
.super Lyads/sk5;
.source "SourceFile"

# interfaces
.implements Lyads/nt5;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [Lyads/qt5;

    new-array v0, v0, [Lyads/rt5;

    invoke-direct {p0, v1, v0}, Lyads/sk5;-><init>([Lyads/mi0;[Lyads/rt5;)V

    iget v0, p0, Lyads/sk5;->g:I

    iget-object p0, p0, Lyads/sk5;->e:[Lyads/mi0;

    array-length v1, p0

    if-ne v0, v1, :cond_1

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Lyads/mi0;->c(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lud;->g()V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public abstract a([BIZ)Lyads/mt5;
.end method

.method public final a(Lyads/mi0;Lyads/rt5;Z)Lyads/ot5;
    .locals 4

    check-cast p1, Lyads/qt5;

    :try_start_0
    iget-object v0, p1, Lyads/mi0;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v0, p3}, Lyads/xk5;->a([BIZ)Lyads/mt5;

    move-result-object p0

    iget-wide v0, p1, Lyads/mi0;->f:J

    iget-wide v2, p1, Lyads/qt5;->i:J

    iput-wide v0, p2, Lyads/rt5;->c:J

    iput-object p0, p2, Lyads/rt5;->d:Lyads/mt5;

    const-wide p0, 0x7fffffffffffffffL

    cmp-long p0, v2, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    iput-wide v0, p2, Lyads/rt5;->e:J

    iget p0, p2, Lyads/ev;->b:I

    const p1, 0x7fffffff

    and-int/2addr p0, p1

    iput p0, p2, Lyads/ev;->b:I
    :try_end_0
    .catch Lyads/ot5; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    return-object p0
.end method

.method public final a(J)V
    .locals 0

    .line 52
    return-void
.end method
