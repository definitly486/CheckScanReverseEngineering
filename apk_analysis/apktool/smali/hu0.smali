.class public final synthetic Lhu0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/video/internal/audio/BufferedAudioStream;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/audio/BufferedAudioStream;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhu0;->b:Landroidx/camera/video/internal/audio/BufferedAudioStream;

    iput p2, p0, Lhu0;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lhu0;->b:Landroidx/camera/video/internal/audio/BufferedAudioStream;

    iget p0, p0, Lhu0;->c:I

    invoke-static {v0, p0}, Landroidx/camera/video/internal/audio/BufferedAudioStream;->d(Landroidx/camera/video/internal/audio/BufferedAudioStream;I)V

    return-void
.end method
