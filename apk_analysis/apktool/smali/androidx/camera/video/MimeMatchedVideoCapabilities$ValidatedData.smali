.class final Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/MimeMatchedVideoCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ValidatedData"
.end annotation


# instance fields
.field private final dynamicRanges:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/core/DynamicRange;",
            ">;"
        }
    .end annotation
.end field

.field private final qualityToSizeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/video/Quality;",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;-><init>(Ljava/util/Set;Ljava/util/Map;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/camera/core/DynamicRange;",
            ">;",
            "Ljava/util/Map<",
            "Landroidx/camera/video/Quality;",
            "Landroid/util/Size;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;->dynamicRanges:Ljava/util/Set;

    .line 18
    iput-object p2, p0, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;->qualityToSizeMap:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Set;Ljava/util/Map;ILjh2;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    sget-object p1, Lox2;->b:Lox2;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    sget-object p2, Lmx2;->b:Lmx2;

    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;-><init>(Ljava/util/Set;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic copy$default(Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;Ljava/util/Set;Ljava/util/Map;ILjava/lang/Object;)Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;->dynamicRanges:Ljava/util/Set;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;->qualityToSizeMap:Ljava/util/Map;

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;->copy(Ljava/util/Set;Ljava/util/Map;)Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/camera/core/DynamicRange;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;->dynamicRanges:Ljava/util/Set;

    return-object p0
.end method

.method public final component2()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/camera/video/Quality;",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;->qualityToSizeMap:Ljava/util/Map;

    return-object p0
.end method

.method public final copy(Ljava/util/Set;Ljava/util/Map;)Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/camera/core/DynamicRange;",
            ">;",
            "Ljava/util/Map<",
            "Landroidx/camera/video/Quality;",
            "Landroid/util/Size;",
            ">;)",
            "Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;

    invoke-direct {p0, p1, p2}, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;-><init>(Ljava/util/Set;Ljava/util/Map;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;

    iget-object v1, p0, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;->dynamicRanges:Ljava/util/Set;

    iget-object v3, p1, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;->dynamicRanges:Ljava/util/Set;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;->qualityToSizeMap:Ljava/util/Map;

    iget-object p1, p1, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;->qualityToSizeMap:Ljava/util/Map;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDynamicRanges()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/camera/core/DynamicRange;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;->dynamicRanges:Ljava/util/Set;

    return-object p0
.end method

.method public final getQualityToSizeMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/camera/video/Quality;",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;->qualityToSizeMap:Ljava/util/Map;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;->dynamicRanges:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;->qualityToSizeMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ValidatedData(dynamicRanges="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;->dynamicRanges:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", qualityToSizeMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;->qualityToSizeMap:Ljava/util/Map;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lg2;->c(Ljava/lang/StringBuilder;Ljava/util/Map;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
