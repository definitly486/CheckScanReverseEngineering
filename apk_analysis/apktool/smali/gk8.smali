.class public final synthetic Lgk8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/core/imagecapture/TakePictureRequest;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/imagecapture/TakePictureRequest;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgk8;->b:Landroidx/camera/core/imagecapture/TakePictureRequest;

    iput p2, p0, Lgk8;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lgk8;->b:Landroidx/camera/core/imagecapture/TakePictureRequest;

    iget p0, p0, Lgk8;->c:I

    invoke-static {v0, p0}, Landroidx/camera/core/imagecapture/TakePictureRequest;->e(Landroidx/camera/core/imagecapture/TakePictureRequest;I)V

    return-void
.end method
