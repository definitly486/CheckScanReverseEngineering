.class public final Lyads/z90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/if6;


# instance fields
.field public final a:Lyads/p90;

.field public final b:Lyads/ff6;

.field public final c:Lyads/hd6;

.field public final d:Lyads/ad6;

.field public e:Z


# direct methods
.method public constructor <init>(Lyads/p90;Lyads/ff6;Lyads/hd6;)V
    .locals 2

    new-instance v0, Lyads/ad6;

    new-instance v1, Lyads/q90;

    invoke-direct {v1}, Lyads/q90;-><init>()V

    invoke-direct {v0, v1}, Lyads/ad6;-><init>(Lyads/q90;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/z90;->a:Lyads/p90;

    iput-object p2, p0, Lyads/z90;->b:Lyads/ff6;

    iput-object p3, p0, Lyads/z90;->c:Lyads/hd6;

    iput-object v0, p0, Lyads/z90;->d:Lyads/ad6;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 32
    iget-object v0, p0, Lyads/z90;->b:Lyads/ff6;

    iget-object p0, p0, Lyads/z90;->a:Lyads/p90;

    const-string v1, "unmute"

    invoke-virtual {v0, p0, v1}, Lyads/ff6;->a(Lyads/ef6;Ljava/lang/String;)V

    return-void
.end method

.method public final a(JF)V
    .locals 0

    .line 33
    iget-boolean p1, p0, Lyads/z90;->e:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lyads/z90;->e:Z

    .line 35
    iget-object p1, p0, Lyads/z90;->b:Lyads/ff6;

    iget-object p0, p0, Lyads/z90;->a:Lyads/p90;

    const-string p2, "start"

    invoke-virtual {p1, p0, p2}, Lyads/ff6;->a(Lyads/ef6;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Lyads/gf6;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "thirdQuartile"

    goto :goto_0

    :cond_0
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_1
    const-string p1, "midpoint"

    goto :goto_0

    :cond_2
    const-string p1, "firstQuartile"

    :goto_0
    iget-object v0, p0, Lyads/z90;->b:Lyads/ff6;

    iget-object p0, p0, Lyads/z90;->a:Lyads/p90;

    invoke-virtual {v0, p0, p1}, Lyads/ff6;->a(Lyads/ef6;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lyads/z90;->b:Lyads/ff6;

    iget-object p0, p0, Lyads/z90;->a:Lyads/p90;

    const-string v1, "complete"

    invoke-virtual {v0, p0, v1}, Lyads/ff6;->a(Lyads/ef6;Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lyads/z90;->b:Lyads/ff6;

    iget-object p0, p0, Lyads/z90;->a:Lyads/p90;

    const-string v1, "resume"

    invoke-virtual {v0, p0, v1}, Lyads/ff6;->a(Lyads/ef6;Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lyads/z90;->b:Lyads/ff6;

    iget-object p0, p0, Lyads/z90;->a:Lyads/p90;

    const-string v1, "pause"

    invoke-virtual {v0, p0, v1}, Lyads/ff6;->a(Lyads/ef6;Ljava/lang/String;)V

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lyads/z90;->b:Lyads/ff6;

    iget-object p0, p0, Lyads/z90;->a:Lyads/p90;

    const-string v1, "creativeView"

    invoke-virtual {v0, p0, v1}, Lyads/ff6;->a(Lyads/ef6;Ljava/lang/String;)V

    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lyads/z90;->a:Lyads/p90;

    new-instance v1, Lyads/u90;

    invoke-direct {v1, v0}, Lyads/u90;-><init>(Lyads/p90;)V

    iget-object p0, p0, Lyads/z90;->b:Lyads/ff6;

    const-string v0, "creativeRenderingStart"

    invoke-virtual {p0, v1, v0}, Lyads/ff6;->a(Lyads/ef6;Ljava/lang/String;)V

    return-void
.end method

.method public final k()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyads/z90;->e:Z

    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lyads/z90;->b:Lyads/ff6;

    iget-object p0, p0, Lyads/z90;->a:Lyads/p90;

    const-string v1, "mute"

    invoke-virtual {v0, p0, v1}, Lyads/ff6;->a(Lyads/ef6;Ljava/lang/String;)V

    return-void
.end method

.method public final m()V
    .locals 3

    iget-boolean v0, p0, Lyads/z90;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/z90;->e:Z

    iget-object v0, p0, Lyads/z90;->b:Lyads/ff6;

    iget-object v1, p0, Lyads/z90;->a:Lyads/p90;

    const-string v2, "start"

    invoke-virtual {v0, v1, v2}, Lyads/ff6;->a(Lyads/ef6;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lyads/z90;->b:Lyads/ff6;

    iget-object p0, p0, Lyads/z90;->a:Lyads/p90;

    const-string v1, "clickTracking"

    invoke-virtual {v0, p0, v1}, Lyads/ff6;->a(Lyads/ef6;Ljava/lang/String;)V

    return-void
.end method
