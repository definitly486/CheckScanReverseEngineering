.class public final Lyads/b75;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/wa6;


# instance fields
.field public final a:Lyads/gr2;

.field public final b:Lyads/ja6;

.field public final c:Lyads/rb6;

.field public final d:Lyads/a75;

.field public e:Lyads/bb6;


# direct methods
.method public constructor <init>(Lyads/gr2;Lyads/ja6;Lyads/ob6;)V
    .locals 2

    new-instance v0, Lyads/vk4;

    invoke-direct {v0, p1}, Lyads/vk4;-><init>(Lyads/gr2;)V

    new-instance v1, Lyads/rb6;

    invoke-direct {v1, v0, p3}, Lyads/rb6;-><init>(Lyads/eb6;Lyads/ob6;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/b75;->a:Lyads/gr2;

    iput-object p2, p0, Lyads/b75;->b:Lyads/ja6;

    iput-object v1, p0, Lyads/b75;->c:Lyads/rb6;

    new-instance p1, Lyads/a75;

    invoke-direct {p1, p0}, Lyads/a75;-><init>(Lyads/b75;)V

    iput-object p1, p0, Lyads/b75;->d:Lyads/a75;

    return-void
.end method


# virtual methods
.method public final a(Lyads/bb6;)V
    .locals 0

    iput-object p1, p0, Lyads/b75;->e:Lyads/bb6;

    return-void
.end method

.method public final play()V
    .locals 2

    iget-object v0, p0, Lyads/b75;->a:Lyads/gr2;

    iget-object v1, p0, Lyads/b75;->d:Lyads/a75;

    invoke-virtual {v0, v1}, Lyads/gr2;->a(Lyads/hb6;)V

    iget-object v0, p0, Lyads/b75;->a:Lyads/gr2;

    iget-object p0, p0, Lyads/b75;->b:Lyads/ja6;

    iget-object p0, p0, Lyads/ja6;->d:Lyads/aw4;

    check-cast p0, Lyads/ol4;

    invoke-virtual {v0, p0}, Lyads/gr2;->a(Lyads/ol4;)V

    return-void
.end method

.method public final stop()V
    .locals 1

    iget-object v0, p0, Lyads/b75;->c:Lyads/rb6;

    invoke-virtual {v0}, Lyads/rb6;->b()V

    iget-object v0, p0, Lyads/b75;->a:Lyads/gr2;

    invoke-virtual {v0}, Lyads/gr2;->d()V

    iget-object p0, p0, Lyads/b75;->a:Lyads/gr2;

    invoke-virtual {p0}, Lyads/gr2;->g()V

    return-void
.end method
