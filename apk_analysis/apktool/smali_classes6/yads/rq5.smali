.class public final Lyads/rq5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/wc0;


# instance fields
.field public final a:Lyads/wc0;

.field public b:J

.field public c:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lyads/wc0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lyads/rq5;->a:Lyads/wc0;

    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object p1, p0, Lyads/rq5;->c:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final a(Lyads/bd0;)J
    .locals 2

    iget-object v0, p1, Lyads/bd0;->a:Landroid/net/Uri;

    iput-object v0, p0, Lyads/rq5;->c:Landroid/net/Uri;

    iget-object v0, p0, Lyads/rq5;->a:Lyads/wc0;

    invoke-interface {v0, p1}, Lyads/wc0;->a(Lyads/bd0;)J

    move-result-wide v0

    iget-object p1, p0, Lyads/rq5;->a:Lyads/wc0;

    invoke-interface {p1}, Lyads/wc0;->d()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lyads/rq5;->c:Landroid/net/Uri;

    iget-object p0, p0, Lyads/rq5;->a:Lyads/wc0;

    invoke-interface {p0}, Lyads/wc0;->b()Ljava/util/Map;

    return-wide v0
.end method

.method public final a(Lyads/p16;)V
    .locals 0

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    iget-object p0, p0, Lyads/rq5;->a:Lyads/wc0;

    invoke-interface {p0, p1}, Lyads/wc0;->a(Lyads/p16;)V

    return-void
.end method

.method public final b()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lyads/rq5;->a:Lyads/wc0;

    invoke-interface {p0}, Lyads/wc0;->b()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final c([BII)I
    .locals 2

    iget-object v0, p0, Lyads/rq5;->a:Lyads/wc0;

    invoke-interface {v0, p1, p2, p3}, Lyads/tc0;->c([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-wide p2, p0, Lyads/rq5;->b:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lyads/rq5;->b:J

    :cond_0
    return p1
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Lyads/rq5;->a:Lyads/wc0;

    invoke-interface {p0}, Lyads/wc0;->close()V

    return-void
.end method

.method public final d()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lyads/rq5;->a:Lyads/wc0;

    invoke-interface {p0}, Lyads/wc0;->d()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
