.class public final Lyads/vv3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [J

    iput-object v0, p0, Lyads/vv3;->b:[J

    return-void
.end method


# virtual methods
.method public final a(I)J
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lyads/vv3;->a:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lyads/vv3;->b:[J

    aget-wide v0, p0, p1

    return-wide v0

    :cond_0
    const-string v0, "Invalid index "

    const-string v1, ", size is "

    invoke-static {p1, v0, v1}, Ln7;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lyads/vv3;->a:I

    invoke-static {p0, p1}, Lbj;->d(ILjava/lang/StringBuilder;)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final a(J)V
    .locals 3

    .line 27
    iget v0, p0, Lyads/vv3;->a:I

    iget-object v1, p0, Lyads/vv3;->b:[J

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v0, v0, 0x2

    .line 28
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Lyads/vv3;->b:[J

    .line 29
    :cond_0
    iget v0, p0, Lyads/vv3;->a:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lyads/vv3;->a:I

    aput-wide p1, v1, v0

    return-void
.end method

.method public final a()[J
    .locals 1

    .line 30
    iget-object v0, p0, Lyads/vv3;->b:[J

    iget p0, p0, Lyads/vv3;->a:I

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p0

    return-object p0
.end method
