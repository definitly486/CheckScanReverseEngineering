.class public final Lyads/j26;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public b:Z

.field public c:I

.field public d:J

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lyads/j26;->a:[B

    return-void
.end method


# virtual methods
.method public final a(Lyads/k06;JIIILyads/j06;)V
    .locals 9

    .line 77
    iget v1, p0, Lyads/j26;->g:I

    add-int v2, p5, p6

    const/4 v8, 0x0

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v8

    :goto_0
    if-eqz v1, :cond_4

    .line 78
    iget-boolean v1, p0, Lyads/j26;->b:Z

    if-nez v1, :cond_1

    goto :goto_1

    .line 79
    :cond_1
    iget v1, p0, Lyads/j26;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lyads/j26;->c:I

    if-nez v1, :cond_2

    .line 80
    iput-wide p2, p0, Lyads/j26;->d:J

    .line 81
    iput p4, p0, Lyads/j26;->e:I

    .line 82
    iput v8, p0, Lyads/j26;->f:I

    .line 83
    :cond_2
    iget v1, p0, Lyads/j26;->f:I

    add-int v5, v1, p5

    iput v5, p0, Lyads/j26;->f:I

    .line 84
    iput p6, p0, Lyads/j26;->g:I

    const/16 v1, 0x10

    if-lt v2, v1, :cond_3

    if-lez v2, :cond_3

    .line 85
    iget-wide v2, p0, Lyads/j26;->d:J

    iget v4, p0, Lyads/j26;->e:I

    move-object v1, p1

    move v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v1 .. v7}, Lyads/k06;->a(JIIILyads/j06;)V

    .line 86
    iput v8, p0, Lyads/j26;->c:I

    :cond_3
    :goto_1
    return-void

    .line 87
    :cond_4
    const-string v0, "TrueHD chunk samples must be contiguous in the sample queue."

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lyads/xs2;)V
    .locals 7

    iget-boolean v0, p0, Lyads/j26;->b:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lyads/j26;->a:[B

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lyads/xs2;->a([BII)V

    invoke-interface {p1}, Lyads/xs2;->c()V

    iget-object p1, p0, Lyads/j26;->a:[B

    const/4 v0, 0x4

    aget-byte v1, p1, v0

    const/4 v3, -0x8

    const/4 v4, 0x1

    if-ne v1, v3, :cond_4

    const/4 v1, 0x5

    aget-byte v1, p1, v1

    const/16 v3, 0x72

    if-ne v1, v3, :cond_4

    const/4 v1, 0x6

    aget-byte v1, p1, v1

    const/16 v3, 0x6f

    if-ne v1, v3, :cond_4

    const/4 v1, 0x7

    aget-byte v3, p1, v1

    and-int/lit16 v5, v3, 0xfe

    const/16 v6, 0xba

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    and-int/lit16 v3, v3, 0xff

    const/16 v5, 0xbb

    if-ne v3, v5, :cond_2

    move v2, v4

    :cond_2
    if-eqz v2, :cond_3

    const/16 v2, 0x9

    goto :goto_0

    :cond_3
    const/16 v2, 0x8

    :goto_0
    aget-byte p1, p1, v2

    shr-int/2addr p1, v0

    and-int/2addr p1, v1

    const/16 v0, 0x28

    shl-int v2, v0, p1

    :cond_4
    :goto_1
    if-nez v2, :cond_5

    :goto_2
    return-void

    :cond_5
    iput-boolean v4, p0, Lyads/j26;->b:Z

    return-void
.end method
