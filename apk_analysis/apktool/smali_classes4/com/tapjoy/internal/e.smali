.class public final Lcom/tapjoy/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "[A-Za-z0-9\\-_]*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "The given API key was malformed."

    if-eqz v1, :cond_6

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_6

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_6

    const/16 v0, 0x8

    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v3, v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    array-length v5, v1

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    new-instance v7, Ljava/util/zip/CRC32;

    invoke-direct {v7}, Ljava/util/zip/CRC32;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v8, v5}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {v7}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v9

    long-to-int v1, v9

    const-string v5, "The given API key was invalid."

    if-ne v6, v1, :cond_5

    iput-object p1, p0, Lcom/tapjoy/internal/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/util/UUID;

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v9

    invoke-direct {v1, v6, v7, v9, v10}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/e;->d:Ljava/lang/String;

    const/16 v0, 0x10

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/e;->b:I

    const/16 v1, 0x11

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    const/4 v4, 0x1

    new-array v6, v4, [I

    sget-object v7, Lcom/tapjoy/internal/c0;->a:[I

    invoke-static {v7, v8, v6, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget v6, v6, v8

    if-eqz v6, :cond_4

    const/4 v7, 0x2

    if-ne v7, v1, :cond_0

    move v8, v6

    :cond_0
    iput v8, p0, Lcom/tapjoy/internal/e;->c:I

    const/16 v1, 0x18

    const/16 v6, 0x2c

    invoke-virtual {p1, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/e;->e:Ljava/lang/String;

    if-ne v0, v7, :cond_2

    if-ne v8, v4, :cond_2

    const/16 p0, 0x39

    if-lt v3, p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v5}, Lfg;->c(Ljava/lang/String;)V

    throw v2

    :cond_2
    if-ne v0, v4, :cond_3

    :goto_0
    return-void

    :cond_3
    const-string p0, "The given API key was not supported."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    throw v2

    :cond_4
    throw v2

    :cond_5
    invoke-static {v5}, Lfg;->c(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception p0

    invoke-static {v3, p0}, Lcc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_6
    invoke-static {v3}, Lfg;->c(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/tapjoy/internal/e;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tapjoy/internal/e;->a:Ljava/lang/String;

    check-cast p1, Lcom/tapjoy/internal/e;

    iget-object p1, p1, Lcom/tapjoy/internal/e;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/internal/e;->a:Ljava/lang/String;

    return-object p0
.end method
