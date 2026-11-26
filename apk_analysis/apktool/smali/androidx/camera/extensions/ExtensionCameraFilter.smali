.class final Landroidx/camera/extensions/ExtensionCameraFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/CameraFilter;


# instance fields
.field private final mId:Landroidx/camera/core/impl/Identifier;

.field private final mVendorExtender:Landroidx/camera/extensions/internal/VendorExtender;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/camera/extensions/internal/VendorExtender;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/camera/core/impl/Identifier;->create(Ljava/lang/Object;)Landroidx/camera/core/impl/Identifier;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/extensions/ExtensionCameraFilter;->mId:Landroidx/camera/core/impl/Identifier;

    iput-object p2, p0, Landroidx/camera/extensions/ExtensionCameraFilter;->mVendorExtender:Landroidx/camera/extensions/internal/VendorExtender;

    return-void
.end method


# virtual methods
.method public filter(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/CameraInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/camera/core/CameraInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/CameraInfo;

    instance-of v2, v1, Landroidx/camera/core/impl/CameraInfoInternal;

    const-string v3, "The camera info doesn\'t contain internal implementation."

    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v2}, Landroidx/camera/core/impl/CameraInfoInternal;->getCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroidx/camera/extensions/internal/ExtensionsUtils;->getCameraCharacteristicsMap(Landroidx/camera/core/impl/CameraInfoInternal;)Ljava/util/Map;

    move-result-object v2

    iget-object v4, p0, Landroidx/camera/extensions/ExtensionCameraFilter;->mVendorExtender:Landroidx/camera/extensions/internal/VendorExtender;

    invoke-interface {v4, v3, v2}, Landroidx/camera/extensions/internal/VendorExtender;->isExtensionAvailable(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getIdentifier()Landroidx/camera/core/impl/Identifier;
    .locals 0

    iget-object p0, p0, Landroidx/camera/extensions/ExtensionCameraFilter;->mId:Landroidx/camera/core/impl/Identifier;

    return-object p0
.end method
