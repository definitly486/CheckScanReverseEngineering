.class final Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/media/ImageReaderWrapper$OnImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;-><init>(Landroidx/camera/camera2/pipe/media/ImageReaderWrapper;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$1;->this$0:Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onImage-AQuxepk(IILandroidx/camera/camera2/pipe/media/ImageWrapper;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$1;->this$0:Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;

    invoke-static {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->access$onImage-AQuxepk(Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;IILandroidx/camera/camera2/pipe/media/ImageWrapper;)V

    return-void
.end method
