.class public final Lyo5;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Lyo5;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    const/4 p0, 0x0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "NotificationModel(id=0, title=null, body=null, date=0, isRead=false, agreementRequired=false, deeplink=null, buttonDeeplink=null, buttonTitle=null, logoUrl=null, ordInfoPromotion=null, ordPromotionText=null, ordToken=null, ordTitle=null, ordText=null, aspectRatio=null)"

    return-object p0
.end method
