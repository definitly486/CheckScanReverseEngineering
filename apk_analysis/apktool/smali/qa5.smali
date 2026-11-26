.class public final synthetic Lqa5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/SessionConfig$ErrorListener;


# instance fields
.field public final synthetic a:Landroidx/camera/camera2/impl/MeteringRepeating;

.field public final synthetic b:Landroid/util/Size;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/impl/MeteringRepeating;Landroid/util/Size;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqa5;->a:Landroidx/camera/camera2/impl/MeteringRepeating;

    iput-object p2, p0, Lqa5;->b:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public final onError(Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V
    .locals 1

    iget-object v0, p0, Lqa5;->a:Landroidx/camera/camera2/impl/MeteringRepeating;

    iget-object p0, p0, Lqa5;->b:Landroid/util/Size;

    invoke-static {v0, p0, p1, p2}, Landroidx/camera/camera2/impl/MeteringRepeating;->a(Landroidx/camera/camera2/impl/MeteringRepeating;Landroid/util/Size;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V

    return-void
.end method
