.class public final synthetic Lcj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->a(Landroid/hardware/camera2/params/MultiResolutionStreamInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
