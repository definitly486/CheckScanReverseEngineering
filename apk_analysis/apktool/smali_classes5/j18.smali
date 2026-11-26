.class public final Lj18;
.super Lmz7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj18$a;,
        Lj18$c;,
        Lj18$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lmz7<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:[Lc18;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lc18<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final c:Lxl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxl3<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lc18;Lxl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lc18<",
            "+TT;>;",
            "Lxl3<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lmz7;-><init>()V

    iput-object p1, p0, Lj18;->b:[Lc18;

    iput-object p2, p0, Lj18;->c:Lxl3;

    return-void
.end method


# virtual methods
.method public final h(Lt08;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt08<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lj18;->b:[Lc18;

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    aget-object v0, v0, v3

    new-instance v1, Lp08$a;

    new-instance v2, Lj18$a;

    invoke-direct {v2, p0}, Lj18$a;-><init>(Lj18;)V

    invoke-direct {v1, p1, v2}, Lp08$a;-><init>(Lt08;Lxl3;)V

    invoke-interface {v0, v1}, Lc18;->d(Lt08;)V

    return-void

    :cond_0
    new-instance v2, Lj18$b;

    iget-object p0, p0, Lj18;->c:Lxl3;

    invoke-direct {v2, p1, v1, p0}, Lj18$b;-><init>(Lt08;ILxl3;)V

    invoke-interface {p1, v2}, Lt08;->onSubscribe(Lcp2;)V

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {v2}, Lj18$b;->isDisposed()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    aget-object p0, v0, v3

    if-nez p0, :cond_2

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "One of the sources is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, v3}, Lj18$b;->a(Ljava/lang/Throwable;I)V

    return-void

    :cond_2
    iget-object p1, v2, Lj18$b;->d:[Lj18$c;

    aget-object p1, p1, v3

    invoke-interface {p0, p1}, Lc18;->d(Lt08;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
