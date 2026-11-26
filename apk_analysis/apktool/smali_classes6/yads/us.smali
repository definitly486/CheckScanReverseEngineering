.class public final Lyads/us;
.super Lyads/mi0;
.source "SourceFile"


# instance fields
.field public i:J

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lyads/mi0;-><init>(I)V

    const/16 v0, 0x20

    iput v0, p0, Lyads/us;->k:I

    return-void
.end method


# virtual methods
.method public final a(Lyads/mi0;)Z
    .locals 5

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1, v0}, Lyads/ev;->b(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Lyads/ev;->b(I)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lyads/ev;->b(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lyads/us;->j:I

    const/high16 v2, -0x80000000

    if-lez v0, :cond_2

    iget v3, p0, Lyads/us;->k:I

    if-lt v0, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Lyads/ev;->b(I)Z

    move-result v0

    invoke-virtual {p0, v2}, Lyads/ev;->b(I)Z

    move-result v3

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lyads/mi0;->d:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lyads/mi0;->d:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    add-int/2addr v0, v3

    const v3, 0x2ee000

    if-le v0, v3, :cond_2

    :goto_0
    return v1

    :cond_2
    iget v0, p0, Lyads/us;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lyads/us;->j:I

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-wide v3, p1, Lyads/mi0;->f:J

    iput-wide v3, p0, Lyads/mi0;->f:J

    invoke-virtual {p1, v1}, Lyads/ev;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iput v1, p0, Lyads/ev;->b:I

    :cond_3
    invoke-virtual {p1, v2}, Lyads/ev;->b(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iput v2, p0, Lyads/ev;->b:I

    :cond_4
    iget-object v0, p1, Lyads/mi0;->d:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-virtual {p0, v2}, Lyads/mi0;->c(I)V

    iget-object v2, p0, Lyads/mi0;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_5
    iget-wide v2, p1, Lyads/mi0;->f:J

    iput-wide v2, p0, Lyads/us;->i:J

    return v1

    :cond_6
    invoke-static {}, Lmi2;->b()V

    return v1

    :cond_7
    invoke-static {}, Lmi2;->b()V

    return v1

    :cond_8
    invoke-static {}, Lmi2;->b()V

    return v1
.end method

.method public final b()V
    .locals 1

    invoke-super {p0}, Lyads/mi0;->b()V

    const/4 v0, 0x0

    iput v0, p0, Lyads/us;->j:I

    return-void
.end method
