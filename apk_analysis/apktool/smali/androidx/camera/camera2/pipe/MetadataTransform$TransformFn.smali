.class public interface abstract Landroidx/camera/camera2/pipe/MetadataTransform$TransformFn;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/MetadataTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TransformFn"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/MetadataTransform$TransformFn$DefaultImpls;
    }
.end annotation


# direct methods
.method public static synthetic access$computeOverridesFor-F8oR-dw$jd(Landroidx/camera/camera2/pipe/MetadataTransform$TransformFn;Landroidx/camera/camera2/pipe/FrameInfo;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/MetadataTransform$TransformFn;->computeOverridesFor-F8oR-dw(Landroidx/camera/camera2/pipe/FrameInfo;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public computeOverridesFor-F8oR-dw(Landroidx/camera/camera2/pipe/FrameInfo;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lmx2;->b:Lmx2;

    return-object p0
.end method
