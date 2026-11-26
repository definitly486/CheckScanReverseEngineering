.class final Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion$requestSync$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion;->requestSync(Landroid/view/Surface;Landroid/graphics/Bitmap;J)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/core/util/Consumer;"
    }
.end annotation


# instance fields
.field final synthetic $result:Llt;

.field final synthetic $semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>(Llt;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion$requestSync$1$2;->$result:Llt;

    iput-object p2, p0, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion$requestSync$1$2;->$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion$requestSync$1$2;->$result:Llt;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Llt;->a:I

    sget-object p1, Ljy8$a;->a:Ljy8$a;

    iget-object p0, p0, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion$requestSync$1$2;->$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion$requestSync$1$2;->accept(Ljava/lang/Integer;)V

    return-void
.end method
