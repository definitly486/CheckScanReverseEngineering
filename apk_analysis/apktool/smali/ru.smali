.class public final synthetic Lru;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Z)V
    .locals 0

    iput p1, p0, Lru;->b:I

    iput-object p2, p0, Lru;->d:Ljava/lang/Object;

    iput-boolean p3, p0, Lru;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lru;->b:I

    iget-boolean v1, p0, Lru;->c:Z

    iget-object p0, p0, Lru;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/nm;

    invoke-virtual {p0, v1}, Lyads/nm;->a(Z)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;

    invoke-static {p0, v1}, Landroidx/camera/video/internal/audio/AudioSource;->h(Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
