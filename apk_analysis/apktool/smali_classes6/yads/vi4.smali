.class public final Lyads/vi4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/n03;


# instance fields
.field public a:Lyads/b4;

.field public b:Lyads/m15;

.field public final c:Lyads/tt4;

.field public final d:Lyads/ek0;


# direct methods
.method public constructor <init>(Lyads/b4;Lyads/bx5;Lyads/m15;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lyads/qt4;->a(Ly22;I)Lyads/tt4;

    move-result-object v0

    iget-object p2, p2, Lyads/bx5;->c:Lyads/ek0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/vi4;->a:Lyads/b4;

    iput-object p3, p0, Lyads/vi4;->b:Lyads/m15;

    iput-object v0, p0, Lyads/vi4;->c:Lyads/tt4;

    iput-object p2, p0, Lyads/vi4;->d:Lyads/ek0;

    return-void
.end method


# virtual methods
.method public final invalidate()V
    .locals 2

    iget-object v0, p0, Lyads/vi4;->c:Lyads/tt4;

    invoke-virtual {v0}, Lyads/tt4;->a()V

    iget-object v0, p0, Lyads/vi4;->c:Lyads/tt4;

    const/4 v1, 0x0

    iput-object v1, v0, Lyads/tt4;->e:Lyads/tx5;

    iput-object v1, p0, Lyads/vi4;->a:Lyads/b4;

    iput-object v1, p0, Lyads/vi4;->b:Lyads/m15;

    return-void
.end method

.method public final pause()V
    .locals 0

    iget-object p0, p0, Lyads/vi4;->c:Lyads/tt4;

    invoke-virtual {p0}, Lyads/tt4;->b()V

    return-void
.end method

.method public final resume()V
    .locals 0

    iget-object p0, p0, Lyads/vi4;->c:Lyads/tt4;

    invoke-virtual {p0}, Lyads/tt4;->c()V

    return-void
.end method

.method public final start()V
    .locals 4

    new-instance v0, Lyads/ti4;

    invoke-direct {v0, p0}, Lyads/ti4;-><init>(Lyads/vi4;)V

    iget-object v1, p0, Lyads/vi4;->d:Lyads/ek0;

    invoke-interface {v1}, Lyads/ek0;->a()J

    move-result-wide v1

    new-instance v3, Lyads/ui4;

    invoke-direct {v3, p0, v1, v2}, Lyads/ui4;-><init>(Lyads/vi4;J)V

    iget-object p0, p0, Lyads/vi4;->c:Lyads/tt4;

    iput-object v3, p0, Lyads/tt4;->e:Lyads/tx5;

    invoke-virtual {p0, v1, v2, v0}, Lyads/tt4;->a(JLyads/ut4;)V

    return-void
.end method
