.class public final Lir;
.super Lu74;
.source "SourceFile"


# instance fields
.field public final b:[I

.field public c:I


# direct methods
.method public constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Lu74;-><init>()V

    iput-object p1, p0, Lir;->b:[I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lir;->c:I

    iget-object p0, p0, Lir;->b:[I

    array-length p0, p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final nextInt()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lir;->b:[I

    iget v1, p0, Lir;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lir;->c:I

    aget p0, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    iget v1, p0, Lir;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lir;->c:I

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lag;->g(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
