.class public final Lyads/ml0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/my3;


# instance fields
.field public final b:Lyads/eq5;

.field public final c:Lyads/mq2;

.field public d:Lyads/gs;

.field public e:Lyads/my3;

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Lyads/mq2;Lyads/du5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ml0;->c:Lyads/mq2;

    new-instance p1, Lyads/eq5;

    invoke-direct {p1, p2}, Lyads/eq5;-><init>(Lyads/du5;)V

    iput-object p1, p0, Lyads/ml0;->b:Lyads/eq5;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyads/ml0;->f:Z

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-boolean v0, p0, Lyads/ml0;->f:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyads/ml0;->b:Lyads/eq5;

    invoke-virtual {p0}, Lyads/eq5;->a()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object p0, p0, Lyads/ml0;->e:Lyads/my3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lyads/my3;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Lyads/dw4;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lyads/ml0;->e:Lyads/my3;

    if-eqz v0, :cond_0

    .line 22
    invoke-interface {v0, p1}, Lyads/my3;->a(Lyads/dw4;)V

    .line 23
    iget-object p1, p0, Lyads/ml0;->e:Lyads/my3;

    invoke-interface {p1}, Lyads/my3;->getPlaybackParameters()Lyads/dw4;

    move-result-object p1

    .line 24
    :cond_0
    iget-object p0, p0, Lyads/ml0;->b:Lyads/eq5;

    invoke-virtual {p0, p1}, Lyads/eq5;->a(Lyads/dw4;)V

    return-void
.end method

.method public final getPlaybackParameters()Lyads/dw4;
    .locals 1

    iget-object v0, p0, Lyads/ml0;->e:Lyads/my3;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lyads/my3;->getPlaybackParameters()Lyads/dw4;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lyads/ml0;->b:Lyads/eq5;

    iget-object p0, p0, Lyads/eq5;->f:Lyads/dw4;

    return-object p0
.end method
