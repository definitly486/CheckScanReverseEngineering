.class public final Lyads/wb4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/rb4;


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lyads/ha3;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/wb4;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 16
    iget-object p0, p0, Lyads/wb4;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ha3;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lyads/ha3;->a()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 14
    iget-object p0, p0, Lyads/wb4;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ha3;

    if-eqz p0, :cond_0

    .line 15
    invoke-interface {p0, p1}, Lyads/ha3;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Lyads/vb4;Ljava/util/Map;)V
    .locals 0

    iget-object p0, p0, Lyads/wb4;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ha3;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lyads/ha3;->a(Lyads/vb4;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
