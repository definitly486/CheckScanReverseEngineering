.class public final Lyads/b26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/du4;


# instance fields
.field public final synthetic a:Lyads/vq0;

.field public final synthetic b:Lyads/c26;


# direct methods
.method public constructor <init>(Lyads/vq0;Lyads/c26;)V
    .locals 0

    iput-object p1, p0, Lyads/b26;->a:Lyads/vq0;

    iput-object p2, p0, Lyads/b26;->b:Lyads/c26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lyads/b26;->a:Lyads/vq0;

    iget-object v1, v0, Lyads/vq0;->E:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lyads/vq0;->v:Lyads/gp4;

    invoke-virtual {v0, p0}, Lyads/gp4;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object p0, p0, Lyads/b26;->b:Lyads/c26;

    invoke-virtual {p0}, Lyads/c26;->c()V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method
