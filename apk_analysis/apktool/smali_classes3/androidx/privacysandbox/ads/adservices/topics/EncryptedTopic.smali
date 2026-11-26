.class public final Landroidx/privacysandbox/ads/adservices/topics/EncryptedTopic;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/privacysandbox/ads/adservices/common/ExperimentalFeatures$Ext11OptIn;
.end annotation


# instance fields
.field private final encapsulatedKey:[B

.field private final encryptedTopic:[B

.field private final keyIdentifier:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;[B)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/topics/EncryptedTopic;->encryptedTopic:[B

    iput-object p2, p0, Landroidx/privacysandbox/ads/adservices/topics/EncryptedTopic;->keyIdentifier:Ljava/lang/String;

    iput-object p3, p0, Landroidx/privacysandbox/ads/adservices/topics/EncryptedTopic;->encapsulatedKey:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/privacysandbox/ads/adservices/topics/EncryptedTopic;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/topics/EncryptedTopic;->encryptedTopic:[B

    check-cast p1, Landroidx/privacysandbox/ads/adservices/topics/EncryptedTopic;

    iget-object v3, p1, Landroidx/privacysandbox/ads/adservices/topics/EncryptedTopic;->encryptedTopic:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/topics/EncryptedTopic;->keyIdentifier:Ljava/lang/String;

    iget-object v3, p1, Landroidx/privacysandbox/ads/adservices/topics/EncryptedTopic;->keyIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/topics/EncryptedTopic;->encapsulatedKey:[B

    iget-object p1, p1, Landroidx/privacysandbox/ads/adservices/topics/EncryptedTopic;->encapsulatedKey:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final getEncapsulatedKey()[B
    .locals 0

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/topics/EncryptedTopic;->encapsulatedKey:[B

    return-object p0
.end method

.method public final getEncryptedTopic()[B
    .locals 0

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/topics/EncryptedTopic;->encryptedTopic:[B

    return-object p0
.end method

.method public final getKeyIdentifier()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/topics/EncryptedTopic;->keyIdentifier:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/topics/EncryptedTopic;->encryptedTopic:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/topics/EncryptedTopic;->keyIdentifier:Ljava/lang/String;

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/topics/EncryptedTopic;->encapsulatedKey:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EncryptedTopic="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/topics/EncryptedTopic;->encryptedTopic:[B

    invoke-static {v1}, Lra8;->t([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", KeyIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/topics/EncryptedTopic;->keyIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", EncapsulatedKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/topics/EncryptedTopic;->encapsulatedKey:[B

    invoke-static {p0}, Lra8;->t([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EncryptedTopic { "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
