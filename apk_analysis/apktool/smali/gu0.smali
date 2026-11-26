.class public final synthetic Lgu0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/video/internal/audio/BufferedAudioStream;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/audio/BufferedAudioStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgu0;->b:Landroidx/camera/video/internal/audio/BufferedAudioStream;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lgu0;->b:Landroidx/camera/video/internal/audio/BufferedAudioStream;

    invoke-static {p0}, Landroidx/camera/video/internal/audio/BufferedAudioStream;->f(Landroidx/camera/video/internal/audio/BufferedAudioStream;)V

    return-void
.end method
