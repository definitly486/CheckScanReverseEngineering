.class public final Lqy6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqn2$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqy6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lvn2$a;


# direct methods
.method public constructor <init>(Lvn2$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqy6$a;->a:Lvn2$a;

    return-void
.end method


# virtual methods
.method public final a()Lqy6$b;
    .locals 3

    iget-object p0, p0, Lqy6$a;->a:Lvn2$a;

    iget-object v0, p0, Lvn2$a;->d:Lvn2;

    iget-object v1, v0, Lvn2;->i:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Lvn2$a;->a(Z)V

    iget-object p0, p0, Lvn2$a;->a:Lvn2$b;

    iget-object p0, p0, Lvn2$b;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lvn2;->e(Ljava/lang/String;)Lvn2$c;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    if-eqz p0, :cond_0

    new-instance v0, Lqy6$b;

    invoke-direct {v0, p0}, Lqy6$b;-><init>(Lvn2$c;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public final abort()V
    .locals 1

    iget-object p0, p0, Lqy6$a;->a:Lvn2$a;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lvn2$a;->a(Z)V

    return-void
.end method
