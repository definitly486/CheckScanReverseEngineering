.class public final Lyads/cm2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/k06;


# instance fields
.field public final a:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lyads/cm2;->a:[B

    return-void
.end method


# virtual methods
.method public final a(Lyads/tc0;IZ)I
    .locals 1

    iget-object v0, p0, Lyads/cm2;->a:[B

    array-length v0, v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object p0, p0, Lyads/cm2;->a:[B

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0, p2}, Lyads/tc0;->c([BII)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    if-eqz p3, :cond_0

    return p1

    :cond_0
    invoke-static {}, Ln7;->e()V

    const/4 p0, 0x0

    :cond_1
    return p0
.end method

.method public final a(ILyads/os4;)V
    .locals 0

    .line 27
    iget p0, p2, Lyads/os4;->b:I

    add-int/2addr p0, p1

    .line 28
    invoke-virtual {p2, p0}, Lyads/os4;->e(I)V

    return-void
.end method

.method public final a(JIIILyads/j06;)V
    .locals 0

    .line 26
    return-void
.end method

.method public final a(Lyads/vz2;)V
    .locals 0

    .line 25
    return-void
.end method
