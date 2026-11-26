.class public abstract Landroidx/camera/video/Quality$ConstantQuality;
.super Landroidx/camera/video/Quality;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/Quality;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ConstantQuality"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/camera/video/Quality;-><init>(Landroidx/camera/video/Quality$1;)V

    return-void
.end method

.method public static of(IILjava/lang/String;Ljava/util/List;)Landroidx/camera/video/Quality$ConstantQuality;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroidx/camera/video/Quality$ConstantQuality;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/video/AutoValue_Quality_ConstantQuality;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/camera/video/AutoValue_Quality_ConstantQuality;-><init>(IILjava/lang/String;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public abstract getHighSpeedValue()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getQualityValue(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/camera/video/Quality$ConstantQuality;->getHighSpeedValue()I

    move-result p0

    return p0

    :cond_0
    const-string p0, "Unknown quality source: "

    invoke-static {p1, p0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lxg;->d(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0}, Landroidx/camera/video/Quality$ConstantQuality;->getValue()I

    move-result p0

    return p0
.end method

.method public abstract getTypicalSizes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getValue()I
.end method
