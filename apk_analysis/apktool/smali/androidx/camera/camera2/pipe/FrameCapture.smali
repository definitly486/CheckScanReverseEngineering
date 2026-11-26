.class public interface abstract Landroidx/camera/camera2/pipe/FrameCapture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/FrameCapture$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/FrameCapture$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/FrameCapture$Companion;->$$INSTANCE:Landroidx/camera/camera2/pipe/FrameCapture$Companion;

    sput-object v0, Landroidx/camera/camera2/pipe/FrameCapture;->Companion:Landroidx/camera/camera2/pipe/FrameCapture$Companion;

    return-void
.end method


# virtual methods
.method public abstract addListener(Landroidx/camera/camera2/pipe/Frame$Listener;)V
.end method

.method public abstract awaitFrame(Le02;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/Frame;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getFrame()Landroidx/camera/camera2/pipe/Frame;
.end method

.method public abstract getRequest()Landroidx/camera/camera2/pipe/Request;
.end method

.method public abstract getStatus-U7r42EA()I
.end method
