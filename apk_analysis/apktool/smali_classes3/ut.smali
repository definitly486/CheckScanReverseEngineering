.class public final synthetic Lut;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final synthetic b:Landroidx/media3/common/audio/AudioFocusManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/audio/AudioFocusManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lut;->b:Landroidx/media3/common/audio/AudioFocusManager;

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 0

    iget-object p0, p0, Lut;->b:Landroidx/media3/common/audio/AudioFocusManager;

    invoke-static {p0, p1}, Landroidx/media3/common/audio/AudioFocusManager;->a(Landroidx/media3/common/audio/AudioFocusManager;I)V

    return-void
.end method
