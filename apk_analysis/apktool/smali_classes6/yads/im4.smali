.class public final Lyads/im4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/n03;
.implements Lyads/mm4;


# instance fields
.field public final a:Lyads/lm4;

.field public final b:Lyads/ra5;


# direct methods
.method public constructor <init>(Lyads/lm4;Lyads/ra5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/im4;->a:Lyads/lm4;

    iput-object p2, p0, Lyads/im4;->b:Lyads/ra5;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 15
    return-void
.end method

.method public final a(Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lyads/im4;->b:Lyads/ra5;

    invoke-virtual {p1}, Lyads/ra5;->a()V

    iget-object p1, p0, Lyads/im4;->a:Lyads/lm4;

    iget-object p1, p1, Lyads/lm4;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final invalidate()V
    .locals 1

    iget-object v0, p0, Lyads/im4;->a:Lyads/lm4;

    iget-object v0, v0, Lyads/lm4;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final pause()V
    .locals 0

    return-void
.end method

.method public final resume()V
    .locals 0

    return-void
.end method

.method public final start()V
    .locals 1

    iget-object v0, p0, Lyads/im4;->a:Lyads/lm4;

    iget-object v0, v0, Lyads/lm4;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
