.class public Lpxa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final b:Ljava/util/Iterator;

.field public final c:Ljava/util/Collection;

.field public final synthetic d:Lwxa;


# direct methods
.method public constructor <init>(Lwxa;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpxa;->d:Lwxa;

    iget-object p1, p1, Lwxa;->c:Ljava/util/Collection;

    iput-object p1, p0, Lpxa;->c:Ljava/util/Collection;

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lpxa;->b:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lwxa;Ljava/util/ListIterator;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpxa;->d:Lwxa;

    iget-object p1, p1, Lwxa;->c:Ljava/util/Collection;

    iput-object p1, p0, Lpxa;->c:Ljava/util/Collection;

    iput-object p2, p0, Lpxa;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lpxa;->d:Lwxa;

    invoke-virtual {v0}, Lwxa;->zzb()V

    iget-object v0, v0, Lwxa;->c:Ljava/util/Collection;

    iget-object p0, p0, Lpxa;->c:Ljava/util/Collection;

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lln;->e()V

    return-void
.end method

.method public final hasNext()Z
    .locals 0

    invoke-virtual {p0}, Lpxa;->a()V

    iget-object p0, p0, Lpxa;->b:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lpxa;->a()V

    iget-object p0, p0, Lpxa;->b:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lpxa;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object p0, p0, Lpxa;->d:Lwxa;

    iget-object v0, p0, Lwxa;->f:Lyxa;

    iget v1, v0, Lyxa;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lyxa;->f:I

    invoke-virtual {p0}, Lwxa;->b()V

    return-void
.end method
