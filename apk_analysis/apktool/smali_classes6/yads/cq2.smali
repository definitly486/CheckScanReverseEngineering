.class public final Lyads/cq2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/id6;
.implements Lyads/wx;
.implements Lyads/tw4;


# instance fields
.field public b:Lyads/id6;

.field public c:Lyads/wx;

.field public d:Lyads/xc5;

.field public e:Lyads/xc5;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 47
    iget-object v0, p0, Lyads/cq2;->e:Lyads/xc5;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Lyads/xc5;->a()V

    .line 49
    :cond_0
    iget-object p0, p0, Lyads/cq2;->c:Lyads/wx;

    if-eqz p0, :cond_1

    .line 50
    invoke-interface {p0}, Lyads/wx;->a()V

    :cond_1
    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2710

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    check-cast p2, Lyads/bp5;

    if-nez p2, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lyads/cq2;->d:Lyads/xc5;

    iput-object p1, p0, Lyads/cq2;->e:Lyads/xc5;

    return-void

    :cond_1
    iget-object p1, p2, Lyads/bp5;->f:Lyads/xc5;

    iput-object p1, p0, Lyads/cq2;->d:Lyads/xc5;

    iput-object p1, p0, Lyads/cq2;->e:Lyads/xc5;

    return-void

    :cond_2
    check-cast p2, Lyads/wx;

    iput-object p2, p0, Lyads/cq2;->c:Lyads/wx;

    return-void

    :cond_3
    check-cast p2, Lyads/id6;

    iput-object p2, p0, Lyads/cq2;->b:Lyads/id6;

    return-void
.end method

.method public final a(JJLyads/vz2;Landroid/media/MediaFormat;)V
    .locals 7

    .line 39
    iget-object v0, p0, Lyads/cq2;->d:Lyads/xc5;

    if-eqz v0, :cond_0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    .line 40
    invoke-virtual/range {v0 .. v6}, Lyads/xc5;->a(JJLyads/vz2;Landroid/media/MediaFormat;)V

    .line 41
    :cond_0
    iget-object p0, p0, Lyads/cq2;->b:Lyads/id6;

    if-eqz p0, :cond_1

    .line 42
    invoke-interface/range {p0 .. p6}, Lyads/id6;->a(JJLyads/vz2;Landroid/media/MediaFormat;)V

    :cond_1
    return-void
.end method

.method public final a(J[F)V
    .locals 1

    .line 43
    iget-object v0, p0, Lyads/cq2;->e:Lyads/xc5;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0, p1, p2, p3}, Lyads/xc5;->a(J[F)V

    .line 45
    :cond_0
    iget-object p0, p0, Lyads/cq2;->c:Lyads/wx;

    if-eqz p0, :cond_1

    .line 46
    invoke-interface {p0, p1, p2, p3}, Lyads/wx;->a(J[F)V

    :cond_1
    return-void
.end method
