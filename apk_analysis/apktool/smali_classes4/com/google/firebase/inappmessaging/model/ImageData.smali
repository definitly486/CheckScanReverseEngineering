.class public Lcom/google/firebase/inappmessaging/model/ImageData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/model/ImageData$Builder;
    }
.end annotation


# instance fields
.field private final bitmapData:Landroid/graphics/Bitmap;

.field private final imageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/model/ImageData;->imageUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/model/ImageData;->bitmapData:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static builder()Lcom/google/firebase/inappmessaging/model/ImageData$Builder;
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/model/ImageData$Builder;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/model/ImageData$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/firebase/inappmessaging/model/ImageData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/firebase/inappmessaging/model/ImageData;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/model/ImageData;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/ImageData;->hashCode()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/google/firebase/inappmessaging/model/ImageData;->imageUrl:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/firebase/inappmessaging/model/ImageData;->imageUrl:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method public getBitmapData()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/model/ImageData;->bitmapData:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/model/ImageData;->imageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/ImageData;->bitmapData:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/google/firebase/inappmessaging/model/ImageData;->imageUrl:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
