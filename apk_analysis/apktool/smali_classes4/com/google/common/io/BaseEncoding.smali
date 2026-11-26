.class public abstract Lcom/google/common/io/BaseEncoding;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/BaseEncoding$DecodingException;,
        Lcom/google/common/io/BaseEncoding$c;,
        Lcom/google/common/io/BaseEncoding$d;,
        Lcom/google/common/io/BaseEncoding$b;,
        Lcom/google/common/io/BaseEncoding$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/common/io/BaseEncoding$c;

.field public static final b:Lcom/google/common/io/BaseEncoding$c;

.field public static final c:Lcom/google/common/io/BaseEncoding$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/common/io/BaseEncoding$c;

    const-string v1, "base64()"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-direct {v0, v1, v2}, Lcom/google/common/io/BaseEncoding$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/io/BaseEncoding;->a:Lcom/google/common/io/BaseEncoding$c;

    new-instance v0, Lcom/google/common/io/BaseEncoding$c;

    const-string v1, "base64Url()"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-direct {v0, v1, v2}, Lcom/google/common/io/BaseEncoding$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/io/BaseEncoding;->b:Lcom/google/common/io/BaseEncoding$c;

    new-instance v0, Lcom/google/common/io/BaseEncoding$d;

    const-string v1, "base32()"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    invoke-direct {v0, v1, v2}, Lcom/google/common/io/BaseEncoding$d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/common/io/BaseEncoding$d;

    const-string v1, "base32Hex()"

    const-string v2, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    invoke-direct {v0, v1, v2}, Lcom/google/common/io/BaseEncoding$d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/common/io/BaseEncoding$b;

    new-instance v1, Lcom/google/common/io/BaseEncoding$a;

    const/16 v2, 0x10

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    const-string v3, "base16()"

    invoke-direct {v1, v3, v2}, Lcom/google/common/io/BaseEncoding$a;-><init>(Ljava/lang/String;[C)V

    invoke-direct {v0, v1}, Lcom/google/common/io/BaseEncoding$b;-><init>(Lcom/google/common/io/BaseEncoding$a;)V

    sput-object v0, Lcom/google/common/io/BaseEncoding;->c:Lcom/google/common/io/BaseEncoding$b;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method


# virtual methods
.method public final a(Ljava/lang/String;)[B
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/common/io/BaseEncoding;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move-object v1, p0

    check-cast v1, Lcom/google/common/io/BaseEncoding$d;

    iget-object v1, v1, Lcom/google/common/io/BaseEncoding$d;->d:Lcom/google/common/io/BaseEncoding$a;

    iget v1, v1, Lcom/google/common/io/BaseEncoding$a;->d:I

    int-to-long v1, v1

    int-to-long v3, v0

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x7

    add-long/2addr v1, v3

    const-wide/16 v3, 0x8

    div-long/2addr v1, v3

    long-to-int v0, v1

    new-array v1, v0, [B

    invoke-virtual {p0, v1, p1}, Lcom/google/common/io/BaseEncoding;->b([BLjava/lang/CharSequence;)I

    move-result p0

    if-ne p0, v0, :cond_0

    return-object v1

    :cond_0
    new-array p1, p0, [B

    const/4 v0, 0x0

    invoke-static {v1, v0, p1, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Lcom/google/common/io/BaseEncoding$DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcg;->h(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract b([BLjava/lang/CharSequence;)I
.end method

.method public final c([B)Ljava/lang/String;
    .locals 5

    array-length v0, p1

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lo8;->o(III)V

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v2, p0

    check-cast v2, Lcom/google/common/io/BaseEncoding$d;

    iget-object v2, v2, Lcom/google/common/io/BaseEncoding$d;->d:Lcom/google/common/io/BaseEncoding$a;

    iget v3, v2, Lcom/google/common/io/BaseEncoding$a;->e:I

    iget v2, v2, Lcom/google/common/io/BaseEncoding$a;->f:I

    sget-object v4, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v0, v2}, Lv74;->a(II)I

    move-result v2

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    :try_start_0
    invoke-virtual {p0, v1, p1, v0}, Lcom/google/common/io/BaseEncoding;->d(Ljava/lang/StringBuilder;[BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lxg;->d(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract d(Ljava/lang/StringBuilder;[BI)V
.end method

.method public abstract e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
.end method
