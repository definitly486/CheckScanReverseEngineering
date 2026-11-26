.class public Lyads/mi0;
.super Lyads/ev;
.source "SourceFile"


# instance fields
.field public final c:Lyads/ca0;

.field public d:Ljava/nio/ByteBuffer;

.field public e:Z

.field public f:J

.field public g:Ljava/nio/ByteBuffer;

.field public final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.decoder"

    invoke-static {v0}, Lyads/nq2;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lyads/ev;-><init>()V

    new-instance v0, Lyads/ca0;

    invoke-direct {v0}, Lyads/ca0;-><init>()V

    iput-object v0, p0, Lyads/mi0;->c:Lyads/ca0;

    iput p1, p0, Lyads/mi0;->h:I

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lyads/ev;->b:I

    iget-object v1, p0, Lyads/mi0;->d:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    iget-object v1, p0, Lyads/mi0;->g:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_1
    iput-boolean v0, p0, Lyads/mi0;->e:Z

    return-void
.end method

.method public final c()V
    .locals 1

    .line 100
    iget-object v0, p0, Lyads/mi0;->d:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 102
    :cond_0
    iget-object p0, p0, Lyads/mi0;->g:Ljava/nio/ByteBuffer;

    if-eqz p0, :cond_1

    .line 103
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_1
    return-void
.end method

.method public final c(I)V
    .locals 6

    iget-object v0, p0, Lyads/mi0;->d:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_3

    iget v4, p0, Lyads/mi0;->h:I

    if-ne v4, v3, :cond_0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-ne v4, v2, :cond_1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lyads/mi0;->d:Ljava/nio/ByteBuffer;

    return-void

    :cond_1
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    :goto_1
    new-instance p0, Lyads/li0;

    invoke-direct {p0, v1, p1}, Lyads/li0;-><init>(II)V

    throw p0

    :cond_3
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v4

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v5

    add-int/2addr p1, v5

    if-lt v4, p1, :cond_4

    iput-object v0, p0, Lyads/mi0;->d:Ljava/nio/ByteBuffer;

    return-void

    :cond_4
    iget v4, p0, Lyads/mi0;->h:I

    if-ne v4, v3, :cond_5

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_2

    :cond_5
    if-ne v4, v2, :cond_7

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    :goto_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    if-lez v5, :cond_6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_6
    iput-object p1, p0, Lyads/mi0;->d:Ljava/nio/ByteBuffer;

    return-void

    :cond_7
    iget-object p0, p0, Lyads/mi0;->d:Ljava/nio/ByteBuffer;

    if-nez p0, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    :goto_3
    new-instance p0, Lyads/li0;

    invoke-direct {p0, v1, p1}, Lyads/li0;-><init>(II)V

    throw p0
.end method
