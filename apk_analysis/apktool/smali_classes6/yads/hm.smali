.class public final Lyads/hm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final a:Landroid/os/Handler;

.field public final synthetic b:Lyads/jm;


# direct methods
.method public constructor <init>(Lyads/jm;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lyads/hm;->b:Lyads/jm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/hm;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object p0, p0, Lyads/hm;->b:Lyads/jm;

    const/4 v0, -0x3

    const/4 v1, -0x2

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Unknown focus change type: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioFocusManager"

    invoke-static {p1, p0}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lyads/jm;->b(I)V

    invoke-virtual {p0, v0}, Lyads/jm;->a(I)V

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lyads/jm;->a(I)V

    invoke-virtual {p0}, Lyads/jm;->a()V

    return-void

    :cond_2
    if-eq p1, v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lyads/jm;->b(I)V

    return-void

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lyads/jm;->a(I)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lyads/jm;->b(I)V

    return-void
.end method

.method public final onAudioFocusChange(I)V
    .locals 2

    iget-object v0, p0, Lyads/hm;->a:Landroid/os/Handler;

    new-instance v1, Lkx9;

    invoke-direct {v1, p0, p1}, Lkx9;-><init>(Lyads/hm;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
