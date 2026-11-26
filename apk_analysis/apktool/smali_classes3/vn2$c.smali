.class public final Lvn2$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvn2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final b:Lvn2$b;

.field public c:Z

.field public final synthetic d:Lvn2;


# direct methods
.method public constructor <init>(Lvn2;Lvn2$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvn2$b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvn2$c;->d:Lvn2;

    iput-object p2, p0, Lvn2$c;->b:Lvn2$b;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    iget-boolean v0, p0, Lvn2$c;->c:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lvn2$c;->c:Z

    iget-object v0, p0, Lvn2$c;->d:Lvn2;

    iget-object v1, v0, Lvn2;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lvn2$c;->b:Lvn2$b;

    iget v2, p0, Lvn2$b;->h:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lvn2$b;->h:I

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lvn2$b;->f:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0, p0}, Lvn2;->E(Lvn2$b;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1

    throw p0

    :cond_1
    return-void
.end method
