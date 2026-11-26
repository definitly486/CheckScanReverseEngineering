.class public final synthetic Landroidx/camera/core/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/core/RotationProvider$ListenerWrapper;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/RotationProvider$ListenerWrapper;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/i;->b:Landroidx/camera/core/RotationProvider$ListenerWrapper;

    iput p2, p0, Landroidx/camera/core/i;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/i;->b:Landroidx/camera/core/RotationProvider$ListenerWrapper;

    iget p0, p0, Landroidx/camera/core/i;->c:I

    invoke-static {v0, p0}, Landroidx/camera/core/RotationProvider$ListenerWrapper;->a(Landroidx/camera/core/RotationProvider$ListenerWrapper;I)V

    return-void
.end method
