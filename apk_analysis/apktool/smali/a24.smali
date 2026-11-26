.class public final synthetic La24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/media/ImageReaderWrapper$OnExpectedOutputsListener;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La24;->a:Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;

    return-void
.end method


# virtual methods
.method public final onExpectedOutputs(JLjava/util/Set;)V
    .locals 0

    iget-object p0, p0, La24;->a:Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;

    invoke-static {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->a(Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;JLjava/util/Set;)V

    return-void
.end method
