.class public final synthetic Lm11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic b:Landroidx/camera/core/impl/CameraPresenceProvider;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/impl/CameraPresenceProvider;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm11;->b:Landroidx/camera/core/impl/CameraPresenceProvider;

    iput-object p2, p0, Lm11;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lm11;->c:Ljava/lang/String;

    check-cast p1, Landroidx/camera/core/CameraState;

    iget-object p0, p0, Lm11;->b:Landroidx/camera/core/impl/CameraPresenceProvider;

    invoke-static {p0, v0, p1}, Landroidx/camera/core/impl/CameraPresenceProvider;->g(Landroidx/camera/core/impl/CameraPresenceProvider;Ljava/lang/String;Landroidx/camera/core/CameraState;)V

    return-void
.end method
