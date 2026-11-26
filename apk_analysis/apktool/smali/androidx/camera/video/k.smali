.class public final synthetic Landroidx/camera/video/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/Recorder$RecordingRecord$MuxerSupplier;


# instance fields
.field public final synthetic a:Landroidx/camera/video/Recorder$RecordingRecord;

.field public final synthetic b:Landroidx/camera/video/internal/muxer/MuxerFactory;

.field public final synthetic c:Landroidx/camera/video/OutputOptions;

.field public final synthetic d:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/Recorder$RecordingRecord;Landroidx/camera/video/internal/muxer/MuxerFactory;Landroidx/camera/video/OutputOptions;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/k;->a:Landroidx/camera/video/Recorder$RecordingRecord;

    iput-object p2, p0, Landroidx/camera/video/k;->b:Landroidx/camera/video/internal/muxer/MuxerFactory;

    iput-object p3, p0, Landroidx/camera/video/k;->c:Landroidx/camera/video/OutputOptions;

    iput-object p4, p0, Landroidx/camera/video/k;->d:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public final get(ILandroidx/core/util/Consumer;)Landroidx/camera/video/internal/muxer/Muxer;
    .locals 6

    iget-object v2, p0, Landroidx/camera/video/k;->c:Landroidx/camera/video/OutputOptions;

    iget-object v3, p0, Landroidx/camera/video/k;->d:Landroid/os/ParcelFileDescriptor;

    iget-object v0, p0, Landroidx/camera/video/k;->a:Landroidx/camera/video/Recorder$RecordingRecord;

    iget-object v1, p0, Landroidx/camera/video/k;->b:Landroidx/camera/video/internal/muxer/MuxerFactory;

    move v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroidx/camera/video/Recorder$RecordingRecord;->e(Landroidx/camera/video/Recorder$RecordingRecord;Landroidx/camera/video/internal/muxer/MuxerFactory;Landroidx/camera/video/OutputOptions;Landroid/os/ParcelFileDescriptor;ILandroidx/core/util/Consumer;)Landroidx/camera/video/internal/muxer/Muxer;

    move-result-object p0

    return-object p0
.end method
