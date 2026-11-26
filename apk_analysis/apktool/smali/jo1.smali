.class public final synthetic Ljo1;
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

    iput p1, p0, Ljo1;->b:I

    iput-object p2, p0, Ljo1;->c:Ljava/lang/Object;

    iput-object p3, p0, Ljo1;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Ljo1;->b:I

    iget-object v1, p0, Ljo1;->d:Ljava/lang/Object;

    iget-object p0, p0, Ljo1;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lio/appmetrica/analytics/idsync/impl/q;

    check-cast v1, Lio/appmetrica/analytics/idsync/impl/G;

    invoke-static {p0, v1}, Lio/appmetrica/analytics/idsync/impl/q;->a(Lio/appmetrica/analytics/idsync/impl/q;Lio/appmetrica/analytics/idsync/impl/G;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/google/firebase/messaging/ImageDownload;

    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p0, v1}, Lcom/google/firebase/messaging/ImageDownload;->a(Lcom/google/firebase/messaging/ImageDownload;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/camera/camera2/pipe/Request$Listener;

    check-cast v1, Landroidx/camera/camera2/pipe/RequestMetadata;

    invoke-static {p0, v1}, Landroidx/camera/camera2/impl/ComboRequestListener;->h(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
