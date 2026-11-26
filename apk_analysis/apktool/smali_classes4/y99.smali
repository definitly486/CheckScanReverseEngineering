.class public final synthetic Ly99;
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

    iput p2, p0, Ly99;->b:I

    iput-object p1, p0, Ly99;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Ly99;->b:I

    iget-object p0, p0, Ly99;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/my/target/h1;

    sget v0, Lcom/my/target/h1;->d:I

    iget-object p0, p0, Lcom/my/target/h1;->b:Landroid/webkit/WebView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/my/target/h1;->c(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :pswitch_0
    check-cast p0, Landroidx/camera/core/SafeCloseImageReaderProxy;

    invoke-static {p0}, Landroidx/camera/camera2/adapter/ZslControlImpl;->a(Landroidx/camera/core/SafeCloseImageReaderProxy;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/google/firebase/crashlytics/internal/metadata/UserMetadata;

    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/metadata/UserMetadata;->a(Lcom/google/firebase/crashlytics/internal/metadata/UserMetadata;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
