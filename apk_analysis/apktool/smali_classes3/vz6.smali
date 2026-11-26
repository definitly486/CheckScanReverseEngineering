.class public final synthetic Lvz6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lvz6;->b:I

    iput-object p2, p0, Lvz6;->c:Ljava/lang/Object;

    iput-object p3, p0, Lvz6;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lvz6;->b:I

    iget-object v1, p0, Lvz6;->d:Ljava/lang/Object;

    iget-object p0, p0, Lvz6;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/media3/common/SimpleBasePlayer;

    check-cast v1, Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->d(Landroidx/media3/common/SimpleBasePlayer;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void

    :pswitch_0
    check-cast p0, Ljava/util/concurrent/Executor;

    check-cast v1, Ljava/lang/Runnable;

    invoke-static {v1, p0}, Landroidx/camera/video/Recorder;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
