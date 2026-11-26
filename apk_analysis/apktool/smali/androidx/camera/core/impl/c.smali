.class public final synthetic Landroidx/camera/core/impl/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/camera/core/CameraPresenceListener;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/CameraPresenceListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/impl/c;->b:Landroidx/camera/core/CameraPresenceListener;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/impl/c;->b:Landroidx/camera/core/CameraPresenceListener;

    check-cast p1, Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;

    invoke-static {p0, p1}, Landroidx/camera/core/impl/CameraPresenceProvider;->e(Landroidx/camera/core/CameraPresenceListener;Landroidx/camera/core/impl/CameraPresenceProvider$ListenerWrapper;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
