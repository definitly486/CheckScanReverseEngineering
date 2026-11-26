.class public final synthetic Lke6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/CameraConfig$PostviewFormatSelector;


# virtual methods
.method public final select(ILjava/util/List;)I
    .locals 0

    invoke-static {p1, p2}, Landroidx/camera/extensions/internal/compat/workaround/PostviewFormatValidator;->a(ILjava/util/List;)I

    move-result p0

    return p0
.end method
