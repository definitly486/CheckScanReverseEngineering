.class public final Lyads/ei4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/on0;


# instance fields
.field public final a:Lyads/fi4;


# direct methods
.method public constructor <init>(Lyads/sj4;Lyads/gd6;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lyads/sj4;->a:Lyads/el4;

    if-eqz p1, :cond_0

    new-instance v0, Lyads/fi4;

    invoke-direct {v0, p1, p2}, Lyads/fi4;-><init>(Lyads/el4;Lyads/gd6;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lyads/ei4;->a:Lyads/fi4;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .locals 0

    iget-object p0, p0, Lyads/ei4;->a:Lyads/fi4;

    if-eqz p0, :cond_0

    iget-object p1, p0, Lyads/fi4;->a:Lyads/el4;

    iget-object p1, p1, Lyads/el4;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object p0, p0, Lyads/ei4;->a:Lyads/fi4;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lyads/fi4;->a:Lyads/el4;

    iget-object v0, v0, Lyads/el4;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lyads/fi4;->b:Lyads/gd6;

    :cond_0
    return-void
.end method
