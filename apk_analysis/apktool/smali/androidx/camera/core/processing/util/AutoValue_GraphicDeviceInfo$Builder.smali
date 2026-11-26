.class final Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo$Builder;
.super Landroidx/camera/core/processing/util/GraphicDeviceInfo$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private eglExtensions:Ljava/lang/String;

.field private eglVersion:Ljava/lang/String;

.field private glExtensions:Ljava/lang/String;

.field private glVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/core/processing/util/GraphicDeviceInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroidx/camera/core/processing/util/GraphicDeviceInfo;
    .locals 8

    iget-object v0, p0, Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo$Builder;->glVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, " glVersion"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo$Builder;->eglVersion:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, " eglVersion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo$Builder;->glExtensions:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, " glExtensions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo$Builder;->eglExtensions:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, " eglExtensions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v2, Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo;

    iget-object v3, p0, Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo$Builder;->glVersion:Ljava/lang/String;

    iget-object v4, p0, Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo$Builder;->eglVersion:Ljava/lang/String;

    iget-object v5, p0, Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo$Builder;->glExtensions:Ljava/lang/String;

    iget-object v6, p0, Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo$Builder;->eglExtensions:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo$1;)V

    return-object v2

    :cond_4
    const-string p0, "Missing required properties:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public setEglExtensions(Ljava/lang/String;)Landroidx/camera/core/processing/util/GraphicDeviceInfo$Builder;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo$Builder;->eglExtensions:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, "Null eglExtensions"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public setEglVersion(Ljava/lang/String;)Landroidx/camera/core/processing/util/GraphicDeviceInfo$Builder;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo$Builder;->eglVersion:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, "Null eglVersion"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public setGlExtensions(Ljava/lang/String;)Landroidx/camera/core/processing/util/GraphicDeviceInfo$Builder;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo$Builder;->glExtensions:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, "Null glExtensions"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public setGlVersion(Ljava/lang/String;)Landroidx/camera/core/processing/util/GraphicDeviceInfo$Builder;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/camera/core/processing/util/AutoValue_GraphicDeviceInfo$Builder;->glVersion:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, "Null glVersion"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
