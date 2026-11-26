.class public final synthetic Lgd9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lgd9;->b:I

    iput-object p1, p0, Lgd9;->c:Ljava/lang/Object;

    iput-object p2, p0, Lgd9;->d:Ljava/lang/Object;

    iput-object p3, p0, Lgd9;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lgd9;->b:I

    iget-object v1, p0, Lgd9;->e:Ljava/lang/Object;

    iget-object v2, p0, Lgd9;->d:Ljava/lang/Object;

    iget-object p0, p0, Lgd9;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/my/tracker/obfuscated/c1;

    check-cast v2, Ljava/lang/String;

    check-cast v1, Lcom/my/tracker/MyTrackerConfig$OkHttpClientProvider;

    invoke-static {p0, v2, v1}, Lcom/my/tracker/obfuscated/c1;->a(Lcom/my/tracker/obfuscated/c1;Ljava/lang/String;Lcom/my/tracker/MyTrackerConfig$OkHttpClientProvider;)V

    return-void

    :pswitch_0
    check-cast p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    check-cast v2, Landroidx/camera/core/impl/SessionConfig$Builder;

    check-cast v1, Landroidx/camera/core/impl/CameraCaptureCallback;

    invoke-static {p0, v2, v1}, Landroidx/camera/video/VideoCapture;->f(Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/camera/core/impl/SessionConfig$Builder;Landroidx/camera/core/impl/CameraCaptureCallback;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
