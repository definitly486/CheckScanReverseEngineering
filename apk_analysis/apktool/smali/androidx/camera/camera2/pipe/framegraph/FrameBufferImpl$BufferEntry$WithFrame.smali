.class public final Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry$WithFrame;
.super Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WithFrame"
.end annotation


# instance fields
.field private final frame:Landroidx/camera/camera2/pipe/Frame;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/Frame;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry;-><init>(Landroidx/camera/camera2/pipe/FrameReference;Ljh2;)V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry$WithFrame;->frame:Landroidx/camera/camera2/pipe/Frame;

    return-void
.end method


# virtual methods
.method public final getFrame()Landroidx/camera/camera2/pipe/Frame;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry$WithFrame;->frame:Landroidx/camera/camera2/pipe/Frame;

    return-object p0
.end method
