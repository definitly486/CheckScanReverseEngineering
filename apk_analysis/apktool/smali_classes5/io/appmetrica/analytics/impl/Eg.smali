.class public final Lio/appmetrica/analytics/impl/Eg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/gm;
.implements Lio/appmetrica/analytics/impl/Ua;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/b5;

.field public final c:Lio/appmetrica/analytics/impl/c5;

.field public final d:Lio/appmetrica/analytics/impl/Qm;

.field public final e:Lio/appmetrica/analytics/impl/Za;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/B4;Lio/appmetrica/analytics/impl/j5;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/appmetrica/analytics/impl/b5;",
            "Lio/appmetrica/analytics/impl/B4;",
            "Lio/appmetrica/analytics/impl/j5;",
            ")V"
        }
    .end annotation

    .line 29
    new-instance v5, Lio/appmetrica/analytics/impl/c5;

    invoke-direct {v5}, Lio/appmetrica/analytics/impl/c5;-><init>()V

    .line 30
    invoke-static {}, Lio/appmetrica/analytics/impl/Xl;->a()Lio/appmetrica/analytics/impl/Xl;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 31
    invoke-direct/range {v0 .. v6}, Lio/appmetrica/analytics/impl/Eg;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/B4;Lio/appmetrica/analytics/impl/j5;Lio/appmetrica/analytics/impl/c5;Lio/appmetrica/analytics/impl/Xl;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/B4;Lio/appmetrica/analytics/impl/j5;Lio/appmetrica/analytics/impl/c5;Lio/appmetrica/analytics/impl/Xl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/appmetrica/analytics/impl/b5;",
            "Lio/appmetrica/analytics/impl/B4;",
            "Lio/appmetrica/analytics/impl/j5;",
            "Lio/appmetrica/analytics/impl/c5;",
            "Lio/appmetrica/analytics/impl/Xl;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Eg;->a:Landroid/content/Context;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Eg;->b:Lio/appmetrica/analytics/impl/b5;

    iput-object p5, p0, Lio/appmetrica/analytics/impl/Eg;->c:Lio/appmetrica/analytics/impl/c5;

    iget-object p5, p3, Lio/appmetrica/analytics/impl/B4;->a:Lio/appmetrica/analytics/impl/pm;

    invoke-virtual {p6, p1, p2, p5}, Lio/appmetrica/analytics/impl/Xl;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/pm;)Lio/appmetrica/analytics/impl/Qm;

    move-result-object p5

    iput-object p5, p0, Lio/appmetrica/analytics/impl/Eg;->d:Lio/appmetrica/analytics/impl/Qm;

    iget-object p3, p3, Lio/appmetrica/analytics/impl/B4;->b:Lio/appmetrica/analytics/impl/A4;

    invoke-interface {p4, p1, p2, p3, p5}, Lio/appmetrica/analytics/impl/j5;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/A4;Lio/appmetrica/analytics/impl/Qm;)Lio/appmetrica/analytics/impl/Za;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Eg;->e:Lio/appmetrica/analytics/impl/Za;

    invoke-virtual {p6, p2, p0}, Lio/appmetrica/analytics/impl/Xl;->a(Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/gm;)V

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/b5;
    .locals 0

    .line 38
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Eg;->b:Lio/appmetrica/analytics/impl/b5;

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/B4;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Eg;->d:Lio/appmetrica/analytics/impl/Qm;

    iget-object v1, p1, Lio/appmetrica/analytics/impl/B4;->a:Lio/appmetrica/analytics/impl/pm;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Qm;->a(Lio/appmetrica/analytics/impl/pm;)V

    .line 36
    iget-object p1, p1, Lio/appmetrica/analytics/impl/B4;->b:Lio/appmetrica/analytics/impl/A4;

    .line 37
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Eg;->e:Lio/appmetrica/analytics/impl/Za;

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/impl/Za;->a(Lio/appmetrica/analytics/impl/A4;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/Zl;Lio/appmetrica/analytics/impl/vm;)V
    .locals 0

    .line 33
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Eg;->e:Lio/appmetrica/analytics/impl/Za;

    check-cast p0, Lio/appmetrica/analytics/impl/i5;

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/B4;)V
    .locals 2

    iget v0, p1, Lio/appmetrica/analytics/impl/a6;->d:I

    sget-object v1, Lio/appmetrica/analytics/impl/I9;->c:Ljava/util/EnumSet;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/pb;->a(I)Lio/appmetrica/analytics/impl/pb;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p2, p2, Lio/appmetrica/analytics/impl/B4;->b:Lio/appmetrica/analytics/impl/A4;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Eg;->e:Lio/appmetrica/analytics/impl/Za;

    invoke-interface {v0, p2}, Lio/appmetrica/analytics/impl/Za;->a(Lio/appmetrica/analytics/impl/A4;)V

    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Eg;->e:Lio/appmetrica/analytics/impl/Za;

    check-cast p0, Lio/appmetrica/analytics/impl/i5;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/i5;->a(Lio/appmetrica/analytics/impl/a6;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/t4;)V
    .locals 0

    .line 29
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Eg;->c:Lio/appmetrica/analytics/impl/c5;

    .line 30
    iget-object p0, p0, Lio/appmetrica/analytics/impl/c5;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/vm;)V
    .locals 0

    .line 32
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Eg;->e:Lio/appmetrica/analytics/impl/Za;

    check-cast p0, Lio/appmetrica/analytics/impl/i5;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/i5;->a(Lio/appmetrica/analytics/impl/vm;)V

    return-void
.end method

.method public final b()Landroid/content/Context;
    .locals 0

    .line 25
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Eg;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final b(Lio/appmetrica/analytics/impl/t4;)V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Eg;->c:Lio/appmetrica/analytics/impl/c5;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/c5;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lio/appmetrica/analytics/impl/Eg;->c:Lio/appmetrica/analytics/impl/c5;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/c5;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Eg;->e:Lio/appmetrica/analytics/impl/Za;

    check-cast p0, Lio/appmetrica/analytics/impl/Sa;

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Sa;->c()V

    :cond_0
    return-void
.end method
