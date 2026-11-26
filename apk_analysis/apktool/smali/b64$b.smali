.class public final Lb64$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb64;->a()Lkl8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "La64;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lkl8$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkl8<",
            "La64;",
            ">.a;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkl8$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkl8<",
            "La64;",
            ">.a;)V"
        }
    .end annotation

    iput-object p1, p0, Lb64$b;->f:Lkl8$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, La64;

    iget-object p0, p0, Lb64$b;->f:Lkl8$a;

    iget-object p0, p0, Lkl8$a;->a:Lkl8;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkl8;->c:Lk57;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Lk57;

    invoke-direct {v0, p1}, Lk57;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lkl8;->c:Lk57;

    iget-object v0, p0, Lkl8;->a:Ljava/util/ArrayList;

    new-instance v1, Lgl8;

    invoke-direct {v1, p0, p1}, Lgl8;-><init>(Lkl8;La64;)V

    invoke-static {v0, v1}, Lqc4;->b(Ljava/util/ArrayList;Lnl3;)V

    iget-object p1, p0, Lkl8;->b:Ljava/util/ArrayList;

    new-instance v0, Lel8;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lel8;-><init>(Lkl8;Ljava/lang/Throwable;)V

    invoke-static {p1, v0}, Lqc4;->b(Ljava/util/ArrayList;Lnl3;)V

    sget-object p1, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
