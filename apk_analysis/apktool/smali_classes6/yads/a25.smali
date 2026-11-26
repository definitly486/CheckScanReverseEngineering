.class public final Lyads/a25;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:[F

.field public final d:[F


# direct methods
.method public constructor <init>(I[F[FI)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lyads/a25;->a:I

    array-length p1, p2

    int-to-long v0, p1

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    array-length p1, p3

    int-to-long v2, p1

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    iput-object p2, p0, Lyads/a25;->c:[F

    iput-object p3, p0, Lyads/a25;->d:[F

    iput p4, p0, Lyads/a25;->b:I

    return-void

    :cond_0
    invoke-static {}, Lmi2;->b()V

    const/4 p0, 0x0

    throw p0
.end method
