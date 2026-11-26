.class public final Landroidx/room/util/ByteArrayWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final array:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/util/ByteArrayWrapper;->array:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Landroidx/room/util/ByteArrayWrapper;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, Landroidx/room/util/ByteArrayWrapper;->array:[B

    check-cast p1, Landroidx/room/util/ByteArrayWrapper;

    iget-object p1, p1, Landroidx/room/util/ByteArrayWrapper;->array:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/room/util/ByteArrayWrapper;->array:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method
