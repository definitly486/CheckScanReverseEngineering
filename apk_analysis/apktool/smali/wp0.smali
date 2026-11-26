.class public final synthetic Lwp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl3;
.implements Landroidx/arch/core/util/Function;
.implements Lcom/google/firebase/inject/Deferred$DeferredHandler;
.implements Lw08;
.implements Lyads/kw;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lwp0;->b:I

    iput-object p1, p0, Lwp0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJJ)V
    .locals 7

    iget-object p0, p0, Lwp0;->c:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lyads/p15;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lyads/p15;->a(JJJ)V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lwp0;->b:I

    iget-object p0, p0, Lwp0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lvc1;

    invoke-virtual {p0, p1}, Lvc1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfz8;

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/camera/view/CameraController;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/camera/view/CameraController;->enableTorch(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(Loz7$a;)V
    .locals 0

    iget-object p0, p0, Lwp0;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/Callable;

    invoke-static {p0, p1}, Landroidx/room/RxRoom$Companion;->c(Ljava/util/concurrent/Callable;Loz7$a;)V

    return-void
.end method

.method public handle(Lcom/google/firebase/inject/Provider;)V
    .locals 0

    iget-object p0, p0, Lwp0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponentDeferredProxy;

    invoke-static {p0, p1}, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponentDeferredProxy;->b(Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponentDeferredProxy;Lcom/google/firebase/inject/Provider;)V

    return-void
.end method
