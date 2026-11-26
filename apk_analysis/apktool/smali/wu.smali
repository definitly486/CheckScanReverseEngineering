.class public final synthetic Lwu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwu;->b:Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;

    iput-boolean p2, p0, Lwu;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lwu;->b:Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;

    iget-boolean p0, p0, Lwu;->c:Z

    invoke-static {v0, p0}, Landroidx/camera/video/internal/audio/AudioStreamImpl;->a(Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;Z)V

    return-void
.end method
