.class public final Lb85;
.super La75;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb85$a;,
        Lb85$c;,
        Lb85$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "La75<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:[Lx75;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lx75<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final c:Lrm3$a;


# direct methods
.method public constructor <init>([Lx75;Lrm3$a;)V
    .locals 0

    invoke-direct {p0}, La75;-><init>()V

    iput-object p1, p0, Lb85;->b:[Lx75;

    iput-object p2, p0, Lb85;->c:Lrm3$a;

    return-void
.end method


# virtual methods
.method public final d(Lt75;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt75<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lb85;->b:[Lx75;

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    aget-object v0, v0, v3

    new-instance v1, Lr75$a;

    new-instance v2, Lb85$a;

    invoke-direct {v2, p0}, Lb85$a;-><init>(Lb85;)V

    invoke-direct {v1, p1, v2}, Lr75$a;-><init>(Lt75;Lxl3;)V

    invoke-interface {v0, v1}, Lx75;->a(Lt75;)V

    return-void

    :cond_0
    new-instance v2, Lb85$b;

    iget-object p0, p0, Lb85;->c:Lrm3$a;

    invoke-direct {v2, p1, v1, p0}, Lb85$b;-><init>(Lt75;ILrm3$a;)V

    invoke-interface {p1, v2}, Lt75;->onSubscribe(Lcp2;)V

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {v2}, Lb85$b;->isDisposed()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    aget-object p0, v0, v3

    if-nez p0, :cond_2

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "One of the sources is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, v3}, Lb85$b;->b(Ljava/lang/Throwable;I)V

    return-void

    :cond_2
    iget-object p1, v2, Lb85$b;->d:[Lb85$c;

    aget-object p1, p1, v3

    invoke-interface {p0, p1}, Lx75;->a(Lt75;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
