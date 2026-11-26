.class public final Ltu3$a;
.super Ltu3;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltu3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final c:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Ltu3$a;->c:[B

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 5

    iget-object p0, p0, Ltu3$a;->c:[B

    array-length v0, p0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v1, "HashCode#asInt() requires >= 4 bytes (it only has %s bytes)."

    array-length v4, p0

    invoke-static {v4, v1, v0}, Lo8;->p(ILjava/lang/String;Z)V

    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public final b()I
    .locals 0

    iget-object p0, p0, Ltu3$a;->c:[B

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public final d(Ltu3;)Z
    .locals 6

    iget-object p0, p0, Ltu3$a;->c:[B

    array-length v0, p0

    invoke-virtual {p1}, Ltu3;->e()[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x1

    move v3, v0

    move v1, v2

    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_2

    aget-byte v4, p0, v1

    invoke-virtual {p1}, Ltu3;->e()[B

    move-result-object v5

    aget-byte v5, v5, v1

    if-ne v4, v5, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    and-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public final e()[B
    .locals 0

    iget-object p0, p0, Ltu3$a;->c:[B

    return-object p0
.end method
