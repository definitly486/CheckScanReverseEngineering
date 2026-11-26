.class public final Lyads/yc0;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final b:Lyads/wc0;

.field public final c:Lyads/bd0;

.field public final d:[B

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Lyads/wc0;Lyads/bd0;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyads/yc0;->e:Z

    iput-boolean v0, p0, Lyads/yc0;->f:Z

    iput-object p1, p0, Lyads/yc0;->b:Lyads/wc0;

    iput-object p2, p0, Lyads/yc0;->c:Lyads/bd0;

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lyads/yc0;->d:[B

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-boolean v0, p0, Lyads/yc0;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lyads/yc0;->b:Lyads/wc0;

    invoke-interface {v0}, Lyads/wc0;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/yc0;->f:Z

    :cond_0
    return-void
.end method

.method public final read()I
    .locals 3

    .line 35
    iget-object v0, p0, Lyads/yc0;->d:[B

    .line 36
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lyads/yc0;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 37
    :cond_0
    iget-object p0, p0, Lyads/yc0;->d:[B

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public final read([B)I
    .locals 2

    .line 34
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lyads/yc0;->read([BII)I

    move-result p0

    return p0
.end method

.method public final read([BII)I
    .locals 2

    iget-boolean v0, p0, Lyads/yc0;->f:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lyads/yc0;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lyads/yc0;->b:Lyads/wc0;

    iget-object v1, p0, Lyads/yc0;->c:Lyads/bd0;

    invoke-interface {v0, v1}, Lyads/wc0;->a(Lyads/bd0;)J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/yc0;->e:Z

    :cond_0
    iget-object p0, p0, Lyads/yc0;->b:Lyads/wc0;

    invoke-interface {p0, p1, p2, p3}, Lyads/tc0;->c([BII)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    return p1

    :cond_1
    return p0

    :cond_2
    invoke-static {}, Lud;->g()V

    const/4 p0, 0x0

    return p0
.end method
