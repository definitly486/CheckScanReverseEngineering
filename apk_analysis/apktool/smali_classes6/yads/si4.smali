.class public final Lyads/si4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/n03;


# instance fields
.field public final a:Lyads/ra5;

.field public final b:Lyads/l10;

.field public final c:J

.field public final d:Lyads/tt4;

.field public final e:Lyads/ri4;


# direct methods
.method public constructor <init>(Lyads/d9;Lyads/ra5;Lyads/bx5;)V
    .locals 3

    iget-object p3, p3, Lyads/bx5;->e:Lyads/l10;

    iget-object v0, p1, Lyads/d9;->a:Lyads/n70;

    iget-object p1, p1, Lyads/d9;->j:Ljava/lang/Long;

    if-nez p1, :cond_1

    sget-object p1, Lyads/n70;->f:Lyads/n70;

    if-ne v0, p1, :cond_0

    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 p1, 0x0

    const/4 v2, 0x3

    invoke-static {p1, v2}, Lyads/qt4;->a(Ly22;I)Lyads/tt4;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/si4;->a:Lyads/ra5;

    iput-object p3, p0, Lyads/si4;->b:Lyads/l10;

    iput-wide v0, p0, Lyads/si4;->c:J

    iput-object p1, p0, Lyads/si4;->d:Lyads/tt4;

    new-instance p1, Lyads/ri4;

    invoke-direct {p1, p0}, Lyads/ri4;-><init>(Lyads/si4;)V

    iput-object p1, p0, Lyads/si4;->e:Lyads/ri4;

    return-void
.end method


# virtual methods
.method public final invalidate()V
    .locals 0

    iget-object p0, p0, Lyads/si4;->d:Lyads/tt4;

    invoke-virtual {p0}, Lyads/tt4;->a()V

    return-void
.end method

.method public final pause()V
    .locals 0

    iget-object p0, p0, Lyads/si4;->d:Lyads/tt4;

    invoke-virtual {p0}, Lyads/tt4;->b()V

    return-void
.end method

.method public final resume()V
    .locals 0

    iget-object p0, p0, Lyads/si4;->d:Lyads/tt4;

    invoke-virtual {p0}, Lyads/tt4;->c()V

    return-void
.end method

.method public final start()V
    .locals 4

    iget-wide v0, p0, Lyads/si4;->c:J

    iget-object v2, p0, Lyads/si4;->b:Lyads/l10;

    iget-wide v2, v2, Lyads/l10;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lyads/si4;->d:Lyads/tt4;

    iget-object v3, p0, Lyads/si4;->b:Lyads/l10;

    iput-object v3, v2, Lyads/tt4;->e:Lyads/tx5;

    iget-object p0, p0, Lyads/si4;->e:Lyads/ri4;

    invoke-virtual {v2, v0, v1, p0}, Lyads/tt4;->a(JLyads/ut4;)V

    return-void
.end method
