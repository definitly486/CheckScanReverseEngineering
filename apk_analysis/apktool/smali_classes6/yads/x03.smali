.class public final Lyads/x03;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/q84;

.field public final b:Lyads/w03;


# direct methods
.method public constructor <init>(Lyads/bf5;)V
    .locals 2

    check-cast p1, Lyads/do6;

    iget-object v0, p1, Lyads/do6;->a:Landroid/content/Context;

    invoke-static {v0, v0}, Lyads/mw;->a(Landroid/content/Context;Landroid/content/Context;)Lyads/q84;

    move-result-object v0

    new-instance v1, Lyads/w03;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lyads/eo6;

    invoke-direct {p1}, Lyads/eo6;-><init>()V

    invoke-direct {v1, p1}, Lyads/w03;-><init>(Lyads/eo6;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/x03;->a:Lyads/q84;

    iput-object v1, p0, Lyads/x03;->b:Lyads/w03;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lyads/f2;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lyads/qb3;->a()J

    move-result-wide v0

    iget-object v2, p0, Lyads/x03;->b:Lyads/w03;

    invoke-virtual {v2, p1, v0, v1}, Lyads/w03;->a(Landroid/app/Activity;J)Landroid/content/Intent;

    move-result-object v2

    invoke-static {}, Lyads/g2;->a()Lyads/h2;

    move-result-object v3

    invoke-virtual {v3, v0, v1, p2}, Lyads/h2;->a(JLyads/f2;)V

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, Lk57$a;

    invoke-direct {p2, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p1, p2

    :goto_0
    invoke-static {p1}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {v3, v0, v1}, Lyads/h2;->a(J)Lyads/f2;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to show Fullscreen Ad. Exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lyads/jn3;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lyads/x03;->a:Lyads/q84;

    const-string v0, "Failed to show Fullscreen Ad"

    invoke-virtual {p0, v0, p2}, Lyads/q84;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object p1
.end method
