.class public final Landroidx/camera/camera2/adapter/CaptureConfigAdapter$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/adapter/CaptureConfigAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/camera2/adapter/CaptureConfigAdapter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getStillCaptureTemplate-CMLptTo$camera_camera2(Landroidx/camera/core/impl/CaptureConfig;IZ)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x3

    invoke-static {p0}, Landroidx/camera/camera2/pipe/RequestTemplate;->constructor-impl(I)I

    move-result p0

    invoke-static {p2, p0}, Landroidx/camera/camera2/pipe/RequestTemplate;->equals-impl0(II)Z

    move-result p0

    const/4 p2, -0x1

    if-eqz p0, :cond_0

    if-nez p3, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroidx/camera/core/impl/CaptureConfig;->getTemplateType()I

    move-result p0

    if-eq p0, p2, :cond_2

    invoke-virtual {p1}, Landroidx/camera/core/impl/CaptureConfig;->getTemplateType()I

    move-result p0

    const/4 p3, 0x5

    if-ne p0, p3, :cond_1

    goto :goto_0

    :cond_1
    move p0, p2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x2

    :goto_1
    if-eq p0, p2, :cond_3

    invoke-static {p0}, Landroidx/camera/camera2/pipe/RequestTemplate;->constructor-impl(I)I

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p1}, Landroidx/camera/core/impl/CaptureConfig;->getTemplateType()I

    move-result p0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/RequestTemplate;->constructor-impl(I)I

    move-result p0

    return p0
.end method
