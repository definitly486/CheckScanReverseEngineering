.class public final Lyads/l06;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/c06;

.field public final b:I

.field public final c:[J

.field public final d:[I

.field public final e:I

.field public final f:[J

.field public final g:[I

.field public final h:J


# direct methods
.method public constructor <init>(Lyads/c06;[J[II[J[IJ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p3

    array-length v1, p5

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    array-length v0, p2

    array-length v1, p5

    if-ne v0, v1, :cond_2

    array-length v0, p6

    array-length v1, p5

    if-ne v0, v1, :cond_1

    iput-object p1, p0, Lyads/l06;->a:Lyads/c06;

    iput-object p2, p0, Lyads/l06;->c:[J

    iput-object p3, p0, Lyads/l06;->d:[I

    iput p4, p0, Lyads/l06;->e:I

    iput-object p5, p0, Lyads/l06;->f:[J

    iput-object p6, p0, Lyads/l06;->g:[I

    iput-wide p7, p0, Lyads/l06;->h:J

    array-length p1, p2

    iput p1, p0, Lyads/l06;->b:I

    array-length p0, p6

    if-lez p0, :cond_0

    array-length p0, p6

    add-int/lit8 p0, p0, -0x1

    aget p1, p6, p0

    const/high16 p2, 0x20000000

    or-int/2addr p1, p2

    aput p1, p6, p0

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lmi2;->b()V

    throw v2

    :cond_2
    invoke-static {}, Lmi2;->b()V

    throw v2

    :cond_3
    invoke-static {}, Lmi2;->b()V

    throw v2
.end method


# virtual methods
.method public final a(J)I
    .locals 2

    iget-object v0, p0, Lyads/l06;->f:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lyads/u56;->a([JJZ)I

    move-result p1

    :goto_0
    iget-object p2, p0, Lyads/l06;->f:[J

    array-length p2, p2

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Lyads/l06;->g:[I

    aget p2, p2, p1

    and-int/2addr p2, v1

    if-eqz p2, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method
