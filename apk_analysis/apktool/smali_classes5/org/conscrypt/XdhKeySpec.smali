.class public final Lorg/conscrypt/XdhKeySpec;
.super Ljava/security/spec/EncodedKeySpec;
.source "SourceFile"


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/security/spec/EncodedKeySpec;-><init>([B)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljava/security/spec/EncodedKeySpec;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ljava/security/spec/EncodedKeySpec;

    invoke-virtual {p0}, Lorg/conscrypt/XdhKeySpec;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    const-string p0, "raw"

    return-object p0
.end method

.method public getKey()[B
    .locals 0

    invoke-virtual {p0}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/conscrypt/XdhKeySpec;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
