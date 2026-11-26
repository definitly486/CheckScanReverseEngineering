.class public final Landroidx/camera/camera2/pipe/MetadataTransform$TransformFn$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/MetadataTransform$TransformFn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static computeOverridesFor-F8oR-dw(Landroidx/camera/camera2/pipe/MetadataTransform$TransformFn;Landroidx/camera/camera2/pipe/FrameInfo;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/MetadataTransform$TransformFn;",
            "Landroidx/camera/camera2/pipe/FrameInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/camera2/pipe/FrameInfo;",
            ">;)",
            "Ljava/util/Map<",
            "*",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/MetadataTransform$TransformFn;->access$computeOverridesFor-F8oR-dw$jd(Landroidx/camera/camera2/pipe/MetadataTransform$TransformFn;Landroidx/camera/camera2/pipe/FrameInfo;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
