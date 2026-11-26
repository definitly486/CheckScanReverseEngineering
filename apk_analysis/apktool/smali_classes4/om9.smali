.class public final synthetic Lom9;
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

    iput p2, p0, Lom9;->b:I

    iput-object p1, p0, Lom9;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lom9;->b:I

    iget-object p0, p0, Lom9;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/tapjoy/TJConnectListener;

    invoke-static {p0}, Lcom/tapjoy/internal/h1;->a(Lcom/tapjoy/TJConnectListener;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/camera/core/SafeCloseImageReaderProxy;

    invoke-static {p0}, Landroidx/camera/camera2/adapter/ZslControlImpl;->c(Landroidx/camera/core/SafeCloseImageReaderProxy;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
