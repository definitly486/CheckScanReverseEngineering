.class public final Lyads/tj0;
.super Landroid/media/AudioTrack$StreamEventCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lyads/uj0;


# direct methods
.method public constructor <init>(Lyads/uj0;)V
    .locals 0

    iput-object p1, p0, Lyads/tj0;->a:Lyads/uj0;

    invoke-direct {p0}, Landroid/media/AudioTrack$StreamEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataRequest(Landroid/media/AudioTrack;I)V
    .locals 0

    iget-object p0, p0, Lyads/tj0;->a:Lyads/uj0;

    iget-object p0, p0, Lyads/uj0;->c:Lyads/vj0;

    iget-object p2, p0, Lyads/vj0;->u:Landroid/media/AudioTrack;

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lyads/vj0;->r:Lyads/ry3;

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lyads/vj0;->U:Z

    if-eqz p0, :cond_0

    iget-object p0, p1, Lyads/ry3;->a:Lyads/sy3;

    iget-object p0, p0, Lyads/sy3;->Q0:Lyads/m65;

    if-eqz p0, :cond_0

    check-cast p0, Lyads/gq2;

    iget-object p0, p0, Lyads/gq2;->a:Lyads/mq2;

    iget-object p0, p0, Lyads/mq2;->i:Lyads/gu5;

    const/4 p1, 0x2

    iget-object p0, p0, Lyads/gu5;->a:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lud;->g()V

    return-void
.end method

.method public final onTearDown(Landroid/media/AudioTrack;)V
    .locals 1

    iget-object p0, p0, Lyads/tj0;->a:Lyads/uj0;

    iget-object p0, p0, Lyads/uj0;->c:Lyads/vj0;

    iget-object v0, p0, Lyads/vj0;->u:Landroid/media/AudioTrack;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lyads/vj0;->r:Lyads/ry3;

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lyads/vj0;->U:Z

    if-eqz p0, :cond_0

    iget-object p0, p1, Lyads/ry3;->a:Lyads/sy3;

    iget-object p0, p0, Lyads/sy3;->Q0:Lyads/m65;

    if-eqz p0, :cond_0

    check-cast p0, Lyads/gq2;

    iget-object p0, p0, Lyads/gq2;->a:Lyads/mq2;

    iget-object p0, p0, Lyads/mq2;->i:Lyads/gu5;

    const/4 p1, 0x2

    iget-object p0, p0, Lyads/gu5;->a:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lud;->g()V

    return-void
.end method
