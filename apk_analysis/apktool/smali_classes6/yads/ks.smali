.class public final Lyads/ks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ga5;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lyads/fw3;

.field public final c:Lyads/aw3;

.field public final d:Lyads/fa5;

.field public final e:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/do6;)V
    .locals 3

    new-instance v0, Lyads/fw3;

    invoke-direct {v0, p1}, Lyads/fw3;-><init>(Landroid/content/Context;)V

    sget-object v1, Lyads/ee5;->a:Lyads/ng3;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lyads/ng3;->a()Lyads/aw3;

    move-result-object v1

    new-instance v2, Lyads/fa5;

    invoke-direct {v2, p2}, Lyads/fa5;-><init>(Lyads/do6;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ks;->a:Landroid/content/Context;

    iput-object v0, p0, Lyads/ks;->b:Lyads/fw3;

    iput-object v1, p0, Lyads/ks;->c:Lyads/aw3;

    iput-object v2, p0, Lyads/ks;->d:Lyads/fa5;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lyads/ks;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lyads/n8;Le02;)Ljava/lang/Object;
    .locals 3

    .line 42
    sget-object v0, Lqo2;->a:Loi2;

    .line 43
    sget-object v0, Luy4;->a:Lhu3;

    .line 44
    invoke-virtual {v0}, Lhu3;->k0()Lgu3;

    move-result-object v0

    new-instance v1, Lyads/js;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lyads/js;-><init>(Lyads/ks;Lyads/n8;Le02;)V

    .line 45
    invoke-static {v0, v1, p2}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a()V
    .locals 3

    iget-object v0, p0, Lyads/ks;->b:Lyads/fw3;

    invoke-virtual {v0}, Lyads/fw3;->a()V

    iget-object v0, p0, Lyads/ks;->c:Lyads/aw3;

    invoke-virtual {v0}, Lyads/aw3;->a()V

    iget-object v0, p0, Lyads/ks;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/ea5;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lyads/ea5;->a(Lyads/w80;)V

    invoke-virtual {v1}, Lyads/s03;->c()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lyads/ks;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 46
    check-cast p1, Lyads/ea5;

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, v0}, Lyads/ea5;->a(Lyads/w80;)V

    .line 48
    iget-object p0, p0, Lyads/ks;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
