.class public final synthetic Llu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/video/internal/audio/AudioSource;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/audio/AudioSource;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llu;->b:Landroidx/camera/video/internal/audio/AudioSource;

    iput-boolean p2, p0, Llu;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Llu;->b:Landroidx/camera/video/internal/audio/AudioSource;

    iget-boolean p0, p0, Llu;->c:Z

    invoke-static {v0, p0}, Landroidx/camera/video/internal/audio/AudioSource;->e(Landroidx/camera/video/internal/audio/AudioSource;Z)V

    return-void
.end method
