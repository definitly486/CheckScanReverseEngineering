.class public final synthetic Landroidx/camera/video/internal/encoder/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/n;->b:Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;

    iput p2, p0, Landroidx/camera/video/internal/encoder/n;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/video/internal/encoder/n;->b:Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;

    iget p0, p0, Landroidx/camera/video/internal/encoder/n;->c:I

    invoke-static {v0, p0}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->g(Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;I)V

    return-void
.end method
