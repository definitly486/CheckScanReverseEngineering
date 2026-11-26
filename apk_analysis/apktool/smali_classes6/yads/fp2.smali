.class public final Lyads/fp2;
.super Lyads/vk5;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/vk5;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/j84;Ljava/nio/ByteBuffer;)Lyads/h84;
    .locals 9

    new-instance p0, Lyads/h84;

    new-instance p1, Lyads/os4;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result p2

    invoke-direct {p1, v0, p2}, Lyads/os4;-><init>([BI)V

    invoke-virtual {p1}, Lyads/os4;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lyads/os4;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lyads/os4;->g()J

    move-result-wide v4

    invoke-virtual {p1}, Lyads/os4;->g()J

    move-result-wide v6

    iget-object p2, p1, Lyads/os4;->a:[B

    iget v0, p1, Lyads/os4;->b:I

    iget p1, p1, Lyads/os4;->c:I

    invoke-static {p2, v0, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    new-instance v1, Lyads/ep2;

    invoke-direct/range {v1 .. v8}, Lyads/ep2;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    const/4 p1, 0x1

    new-array p1, p1, [Lyads/g84;

    const/4 p2, 0x0

    aput-object v1, p1, p2

    invoke-direct {p0, p1}, Lyads/h84;-><init>([Lyads/g84;)V

    return-object p0
.end method
