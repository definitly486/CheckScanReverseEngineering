.class public final Landroidx/camera/core/streamsharing/PreferredChildSize;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final childSizeToScale:Landroid/util/Size;

.field private final cropRectBeforeScaling:Landroid/graphics/Rect;

.field private final originalSelectedChildSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/util/Size;Landroid/util/Size;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/streamsharing/PreferredChildSize;->cropRectBeforeScaling:Landroid/graphics/Rect;

    iput-object p2, p0, Landroidx/camera/core/streamsharing/PreferredChildSize;->childSizeToScale:Landroid/util/Size;

    iput-object p3, p0, Landroidx/camera/core/streamsharing/PreferredChildSize;->originalSelectedChildSize:Landroid/util/Size;

    return-void
.end method

.method public static synthetic copy$default(Landroidx/camera/core/streamsharing/PreferredChildSize;Landroid/graphics/Rect;Landroid/util/Size;Landroid/util/Size;ILjava/lang/Object;)Landroidx/camera/core/streamsharing/PreferredChildSize;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Landroidx/camera/core/streamsharing/PreferredChildSize;->cropRectBeforeScaling:Landroid/graphics/Rect;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Landroidx/camera/core/streamsharing/PreferredChildSize;->childSizeToScale:Landroid/util/Size;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Landroidx/camera/core/streamsharing/PreferredChildSize;->originalSelectedChildSize:Landroid/util/Size;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/core/streamsharing/PreferredChildSize;->copy(Landroid/graphics/Rect;Landroid/util/Size;Landroid/util/Size;)Landroidx/camera/core/streamsharing/PreferredChildSize;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/streamsharing/PreferredChildSize;->cropRectBeforeScaling:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final component2()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/streamsharing/PreferredChildSize;->childSizeToScale:Landroid/util/Size;

    return-object p0
.end method

.method public final component3()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/streamsharing/PreferredChildSize;->originalSelectedChildSize:Landroid/util/Size;

    return-object p0
.end method

.method public final copy(Landroid/graphics/Rect;Landroid/util/Size;Landroid/util/Size;)Landroidx/camera/core/streamsharing/PreferredChildSize;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/camera/core/streamsharing/PreferredChildSize;

    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/core/streamsharing/PreferredChildSize;-><init>(Landroid/graphics/Rect;Landroid/util/Size;Landroid/util/Size;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/core/streamsharing/PreferredChildSize;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/core/streamsharing/PreferredChildSize;

    iget-object v1, p0, Landroidx/camera/core/streamsharing/PreferredChildSize;->cropRectBeforeScaling:Landroid/graphics/Rect;

    iget-object v3, p1, Landroidx/camera/core/streamsharing/PreferredChildSize;->cropRectBeforeScaling:Landroid/graphics/Rect;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/core/streamsharing/PreferredChildSize;->childSizeToScale:Landroid/util/Size;

    iget-object v3, p1, Landroidx/camera/core/streamsharing/PreferredChildSize;->childSizeToScale:Landroid/util/Size;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Landroidx/camera/core/streamsharing/PreferredChildSize;->originalSelectedChildSize:Landroid/util/Size;

    iget-object p1, p1, Landroidx/camera/core/streamsharing/PreferredChildSize;->originalSelectedChildSize:Landroid/util/Size;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getChildSizeToScale()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/streamsharing/PreferredChildSize;->childSizeToScale:Landroid/util/Size;

    return-object p0
.end method

.method public final getCropRectBeforeScaling()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/streamsharing/PreferredChildSize;->cropRectBeforeScaling:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getOriginalSelectedChildSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/streamsharing/PreferredChildSize;->originalSelectedChildSize:Landroid/util/Size;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/streamsharing/PreferredChildSize;->cropRectBeforeScaling:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/core/streamsharing/PreferredChildSize;->childSizeToScale:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Landroidx/camera/core/streamsharing/PreferredChildSize;->originalSelectedChildSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PreferredChildSize(cropRectBeforeScaling="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/core/streamsharing/PreferredChildSize;->cropRectBeforeScaling:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", childSizeToScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/streamsharing/PreferredChildSize;->childSizeToScale:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", originalSelectedChildSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/camera/core/streamsharing/PreferredChildSize;->originalSelectedChildSize:Landroid/util/Size;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
