.class public final synthetic Li11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Li11;->b:I

    iput-object p1, p0, Li11;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Li11;->b:I

    iget-object p0, p0, Li11;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    invoke-static {p0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->d(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/camera/core/impl/CameraPresenceProvider;

    invoke-static {p0}, Landroidx/camera/core/impl/CameraPresenceProvider;->f(Landroidx/camera/core/impl/CameraPresenceProvider;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
