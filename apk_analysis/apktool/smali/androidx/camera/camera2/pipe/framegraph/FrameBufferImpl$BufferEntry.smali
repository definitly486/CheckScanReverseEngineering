.class abstract Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BufferEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry$WithFrame;,
        Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry$WithoutFrame;
    }
.end annotation


# instance fields
.field private final frameReference:Landroidx/camera/camera2/pipe/FrameReference;


# direct methods
.method private constructor <init>(Landroidx/camera/camera2/pipe/FrameReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry;->frameReference:Landroidx/camera/camera2/pipe/FrameReference;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/FrameReference;Ljh2;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry;-><init>(Landroidx/camera/camera2/pipe/FrameReference;)V

    return-void
.end method


# virtual methods
.method public final getFrameReference()Landroidx/camera/camera2/pipe/FrameReference;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/framegraph/FrameBufferImpl$BufferEntry;->frameReference:Landroidx/camera/camera2/pipe/FrameReference;

    return-object p0
.end method
