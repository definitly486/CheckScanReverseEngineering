.class public final Lqy6$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqn2$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqy6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:Lvn2$c;


# direct methods
.method public constructor <init>(Lvn2$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqy6$b;->b:Lvn2$c;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Lqy6$b;->b:Lvn2$c;

    invoke-virtual {p0}, Lvn2$c;->close()V

    return-void
.end method

.method public final getData()Lj46;
    .locals 1

    iget-object p0, p0, Lqy6$b;->b:Lvn2$c;

    iget-boolean v0, p0, Lvn2$c;->c:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lvn2$c;->b:Lvn2$b;

    iget-object p0, p0, Lvn2$b;->c:Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj46;

    return-object p0

    :cond_0
    const-string p0, "snapshot is closed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMetadata()Lj46;
    .locals 1

    iget-object p0, p0, Lqy6$b;->b:Lvn2$c;

    iget-boolean v0, p0, Lvn2$c;->c:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lvn2$c;->b:Lvn2$b;

    iget-object p0, p0, Lvn2$b;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj46;

    return-object p0

    :cond_0
    const-string p0, "snapshot is closed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final l0()Lqy6$a;
    .locals 2

    iget-object p0, p0, Lqy6$b;->b:Lvn2$c;

    iget-object v0, p0, Lvn2$c;->d:Lvn2;

    iget-object v1, v0, Lvn2;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lvn2$c;->close()V

    iget-object p0, p0, Lvn2$c;->b:Lvn2$b;

    iget-object p0, p0, Lvn2$b;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lvn2;->b(Ljava/lang/String;)Lvn2$a;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    if-eqz p0, :cond_0

    new-instance v0, Lqy6$a;

    invoke-direct {v0, p0}, Lqy6$a;-><init>(Lvn2$a;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method
