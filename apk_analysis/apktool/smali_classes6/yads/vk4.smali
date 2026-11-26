.class public final Lyads/vk4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/eb6;


# instance fields
.field public final a:Lyads/gr2;


# direct methods
.method public constructor <init>(Lyads/gr2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/vk4;->a:Lyads/gr2;

    return-void
.end method


# virtual methods
.method public final a(Lyads/hb6;)V
    .locals 0

    .line 10
    iget-object p0, p0, Lyads/vk4;->a:Lyads/gr2;

    invoke-virtual {p0, p1}, Lyads/gr2;->a(Lyads/hb6;)V

    return-void
.end method

.method public final a(Lyads/ja6;)V
    .locals 0

    iget-object p0, p0, Lyads/vk4;->a:Lyads/gr2;

    iget-object p1, p1, Lyads/ja6;->d:Lyads/aw4;

    check-cast p1, Lyads/ol4;

    invoke-virtual {p0, p1}, Lyads/gr2;->a(Lyads/ol4;)V

    return-void
.end method

.method public final c()J
    .locals 2

    iget-object p0, p0, Lyads/vk4;->a:Lyads/gr2;

    iget-object p0, p0, Lyads/gr2;->a:Lyads/eq2;

    invoke-virtual {p0}, Lyads/eq2;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()V
    .locals 0

    iget-object p0, p0, Lyads/vk4;->a:Lyads/gr2;

    invoke-virtual {p0}, Lyads/gr2;->e()V

    return-void
.end method

.method public final getAdPosition()J
    .locals 2

    iget-object p0, p0, Lyads/vk4;->a:Lyads/gr2;

    iget-object p0, p0, Lyads/gr2;->a:Lyads/eq2;

    invoke-virtual {p0}, Lyads/eq2;->q()V

    iget-object v0, p0, Lyads/eq2;->b0:Lyads/bw4;

    invoke-virtual {p0, v0}, Lyads/eq2;->a(Lyads/bw4;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lyads/u56;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getVolume()F
    .locals 0

    iget-object p0, p0, Lyads/vk4;->a:Lyads/gr2;

    iget-object p0, p0, Lyads/gr2;->a:Lyads/eq2;

    invoke-virtual {p0}, Lyads/eq2;->q()V

    iget p0, p0, Lyads/eq2;->V:F

    return p0
.end method

.method public final pauseAd()V
    .locals 0

    iget-object p0, p0, Lyads/vk4;->a:Lyads/gr2;

    invoke-virtual {p0}, Lyads/gr2;->d()V

    return-void
.end method
