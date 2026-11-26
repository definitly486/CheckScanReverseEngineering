.class public final Ljb9;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljb9;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/ArrayList;)[[B
    .locals 14

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [[B

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzu3;

    add-int/lit8 v5, v3, 0x1

    iget-object v6, v4, Lzu3;->a:Lgx0;

    invoke-virtual {v6}, Lgx0;->w()[B

    move-result-object v6

    aput-object v6, v1, v3

    add-int/lit8 v3, v3, 0x2

    iget-object v4, v4, Lzu3;->b:Lgx0;

    invoke-virtual {v4}, Lgx0;->w()[B

    move-result-object v4

    aput-object v4, v1, v5

    goto :goto_0

    :cond_0
    sget-object p0, Lv29;->b:[B

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_9

    aget-object v4, v1, v3

    add-int/lit8 v5, v3, 0x1

    aget-object v6, v1, v5

    invoke-static {v4, p0}, Lv29;->a([B[B)Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v2

    :goto_2
    array-length v7, v6

    if-ge v4, v7, :cond_7

    aget-byte v7, v6, v4

    const/16 v8, 0x2c

    if-ne v7, v8, :cond_6

    new-instance v4, Ljava/util/ArrayList;

    add-int/lit8 v5, v0, 0xa

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v5, v2

    :goto_3
    if-ge v5, v3, :cond_1

    aget-object v6, v1, v5

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_1
    :goto_4
    if-ge v3, v0, :cond_5

    aget-object v5, v1, v3

    add-int/lit8 v6, v3, 0x1

    aget-object v6, v1, v6

    invoke-static {v5, p0}, Lv29;->a([B[B)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_2
    move v7, v2

    move v9, v7

    :goto_5
    array-length v10, v6

    if-gt v7, v10, :cond_4

    array-length v10, v6

    if-eq v7, v10, :cond_3

    aget-byte v10, v6, v7

    if-eq v10, v8, :cond_3

    goto :goto_6

    :cond_3
    sget-object v10, Lcom/google/common/io/BaseEncoding;->a:Lcom/google/common/io/BaseEncoding$c;

    new-instance v11, Ljava/lang/String;

    sub-int v12, v7, v9

    sget-object v13, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v11, v6, v9, v12, v13}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v10, v11}, Lcom/google/common/io/BaseEncoding;->a(Ljava/lang/String;)[B

    move-result-object v9

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v10

    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_4
    :goto_7
    add-int/lit8 v3, v3, 0x2

    goto :goto_4

    :cond_5
    new-array p0, v2, [[B

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[B

    return-object p0

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    sget-object v4, Lcom/google/common/io/BaseEncoding;->a:Lcom/google/common/io/BaseEncoding$c;

    new-instance v7, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v7, v6, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v4, v7}, Lcom/google/common/io/BaseEncoding;->a(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v1, v5

    :cond_8
    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_1

    :cond_9
    return-object v1
.end method
