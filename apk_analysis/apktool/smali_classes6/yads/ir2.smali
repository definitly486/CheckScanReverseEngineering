.class public final Lyads/ir2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/mt5;


# instance fields
.field public final b:J

.field public final c:Lyads/k55;


# direct methods
.method public constructor <init>(JLyads/k55;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lyads/ir2;->b:J

    iput-object p3, p0, Lyads/ir2;->c:Lyads/k55;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 12
    const/4 p0, 0x1

    return p0
.end method

.method public final a(J)I
    .locals 2

    .line 11
    iget-wide v0, p0, Lyads/ir2;->b:J

    cmp-long p0, v0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final a(I)J
    .locals 0

    if-nez p1, :cond_0

    iget-wide p0, p0, Lyads/ir2;->b:J

    return-wide p0

    :cond_0
    invoke-static {}, Lmi2;->b()V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final b(J)Ljava/util/List;
    .locals 2

    iget-wide v0, p0, Lyads/ir2;->b:J

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    iget-object p0, p0, Lyads/ir2;->c:Lyads/k55;

    return-object p0

    :cond_0
    sget-object p0, Lyads/oe3;->c:Lyads/le3;

    sget-object p0, Lyads/k55;->f:Lyads/k55;

    return-object p0
.end method
