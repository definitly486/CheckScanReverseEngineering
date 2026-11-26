.class public final Lb64;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lru6;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/CiceroneActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lxm9$h;

    invoke-direct {v0}, Lxm9$h;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lxm9$h;->a(Landroid/content/Context;)Lxm9;

    move-result-object p1

    iget-object p1, p1, Lxm9;->b:Lfh8;

    invoke-virtual {p1}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru6;

    iput-object p1, p0, Lb64;->a:Lru6;

    return-void
.end method


# virtual methods
.method public final a()Lkl8;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkl8<",
            "La64;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkl8;

    invoke-direct {v0}, Lkl8;-><init>()V

    new-instance v1, Lkl8$a;

    invoke-direct {v1, v0}, Lkl8$a;-><init>(Lkl8;)V

    iget-object p0, p0, Lb64;->a:Lru6;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ll90;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Ll90;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Lpz7;

    invoke-direct {v3, v2}, Lpz7;-><init>(Ll90;)V

    new-instance v2, Ln72;

    invoke-direct {v2, p0}, Ln72;-><init>(Lru6;)V

    new-instance p0, Lzz7;

    invoke-direct {p0, v3, v2}, Lzz7;-><init>(Llz7;Lnl3;)V

    invoke-static {}, Lpo2;->a()Ljo2;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lf18;

    invoke-direct {v3, p0, v2}, Lf18;-><init>(Llz7;Ljo2;)V

    new-instance p0, Lb64$a;

    invoke-direct {p0, v1}, Lb64$a;-><init>(Lkl8$a;)V

    new-instance v2, Lb64$b;

    invoke-direct {v2, v1}, Lb64$b;-><init>(Lkl8$a;)V

    invoke-static {v3, p0, v2}, Ld31;->r(Llz7;Lnl3;Lnl3;)Ld18;

    move-result-object p0

    new-instance v1, La4;

    invoke-direct {v1, p0}, La4;-><init>(Ljava/lang/Object;)V

    monitor-enter v0

    :try_start_0
    iget-object p0, v0, Lkl8;->c:Lk57;

    if-nez p0, :cond_0

    iget-object p0, v0, Lkl8;->b:Ljava/util/ArrayList;

    new-instance v2, Lfr1;

    invoke-direct {v2, v1}, Lfr1;-><init>(La4;)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lk57;->b:Ljava/lang/Object;

    invoke-static {p0}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    new-instance v2, Lal8;

    invoke-direct {v2, v1, p0}, Lal8;-><init>(La4;Ljava/lang/Throwable;)V

    invoke-static {v2}, Lkl8;->b(Lll3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v0

    :goto_1
    monitor-exit v0

    throw p0
.end method
