.class public final synthetic Ls01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/view/RotationProvider$Listener;
.implements Lcom/google/firebase/inject/Deferred$DeferredHandler;
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Ls01;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/google/firebase/inject/Provider;)V
    .locals 0

    iget-object p0, p0, Ls01;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector;

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector;->a(Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector;Lcom/google/firebase/inject/Provider;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ls01;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/SimpleBasePlayer$State;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->g0(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public onRotationChanged(I)V
    .locals 0

    iget-object p0, p0, Ls01;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/view/CameraController;

    invoke-static {p0, p1}, Landroidx/camera/view/CameraController;->c(Landroidx/camera/view/CameraController;I)V

    return-void
.end method
