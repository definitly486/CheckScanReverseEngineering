.class final Landroidx/camera/core/ImageCaptureExtKt$takePicture$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/core/ImageCaptureExtKt;->takePicture(Landroidx/camera/core/ImageCapture;Lll3;Lnl3;Lnl3;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnl3<",
        "Ljava/lang/Throwable;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $delegatingCallback:Lr07;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr07<",
            "Landroidx/camera/core/DelegatingImageCapturedCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr07;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr07<",
            "Landroidx/camera/core/DelegatingImageCapturedCallback;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/core/ImageCaptureExtKt$takePicture$2$2;->$delegatingCallback:Lr07;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Landroidx/camera/core/ImageCaptureExtKt$takePicture$2$2;->invoke(Ljava/lang/Throwable;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/ImageCaptureExtKt$takePicture$2$2;->$delegatingCallback:Lr07;

    iget-object p0, p0, Lr07;->b:Ljava/lang/Object;

    if-eqz p0, :cond_0

    check-cast p0, Landroidx/camera/core/DelegatingImageCapturedCallback;

    invoke-virtual {p0}, Landroidx/camera/core/DelegatingImageCapturedCallback;->dispose()V

    return-void

    :cond_0
    const-string p0, "delegatingCallback"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
