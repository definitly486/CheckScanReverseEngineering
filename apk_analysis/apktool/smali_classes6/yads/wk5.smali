.class public final Lyads/wk5;
.super Lyads/rt5;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lyads/xk5;


# direct methods
.method public constructor <init>(Lyads/xk5;)V
    .locals 0

    iput-object p1, p0, Lyads/wk5;->f:Lyads/xk5;

    invoke-direct {p0}, Lyads/rt5;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    iget-object v0, p0, Lyads/wk5;->f:Lyads/xk5;

    iget-object v1, v0, Lyads/sk5;->b:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    iput v2, p0, Lyads/ev;->b:I

    const/4 v2, 0x0

    iput-object v2, p0, Lyads/rt5;->d:Lyads/mt5;

    iget-object v2, v0, Lyads/sk5;->f:[Lyads/rt5;

    iget v3, v0, Lyads/sk5;->h:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lyads/sk5;->h:I

    aput-object p0, v2, v3

    invoke-virtual {v0}, Lyads/sk5;->d()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
