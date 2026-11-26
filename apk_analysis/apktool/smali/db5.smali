.class public final synthetic Ldb5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

.field public final synthetic c:Landroidx/camera/video/MimeMatchedVideoCapabilities;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;Landroidx/camera/video/MimeMatchedVideoCapabilities;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldb5;->b:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

    iput-object p2, p0, Ldb5;->c:Landroidx/camera/video/MimeMatchedVideoCapabilities;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ldb5;->b:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

    iget-object p0, p0, Ldb5;->c:Landroidx/camera/video/MimeMatchedVideoCapabilities;

    invoke-static {v0, p0}, Landroidx/camera/video/MimeMatchedVideoCapabilities;->a(Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;Landroidx/camera/video/MimeMatchedVideoCapabilities;)Landroidx/camera/video/MimeMatchedVideoCapabilities$ValidatedData;

    move-result-object p0

    return-object p0
.end method
