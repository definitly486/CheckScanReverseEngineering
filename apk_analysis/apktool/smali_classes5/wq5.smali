.class public final Lwq5;
.super Ltq5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwq5$a;,
        Lwq5$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ltq5<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:[Lwr5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lwr5<",
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

.field public final d:I


# direct methods
.method public constructor <init>([Lwr5;Lxl3;I)V
    .locals 0

    invoke-direct {p0}, Ltq5;-><init>()V

    iput-object p1, p0, Lwq5;->b:[Lwr5;

    iput-object p2, p0, Lwq5;->c:Lxl3;

    iput p3, p0, Lwq5;->d:I

    return-void
.end method


# virtual methods
.method public final f(Lls5;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls5<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lwq5;->b:[Lwr5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v1, v0

    if-nez v1, :cond_0

    sget-object p0, Lhx2;->INSTANCE:Lhx2;

    invoke-interface {p1, p0}, Lls5;->onSubscribe(Lcp2;)V

    invoke-interface {p1}, Lls5;->onComplete()V

    return-void

    :cond_0
    new-instance v2, Lwq5$b;

    iget-object v3, p0, Lwq5;->c:Lxl3;

    iget p0, p0, Lwq5;->d:I

    invoke-direct {v2, p1, v3, v1, p0}, Lwq5$b;-><init>(Lls5;Lxl3;II)V

    iget-object p0, v2, Lwq5$b;->d:[Lwq5$a;

    array-length p1, p0

    iget-object v1, v2, Lwq5$b;->b:Lls5;

    invoke-interface {v1, v2}, Lls5;->onSubscribe(Lcp2;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    iget-boolean v3, v2, Lwq5$b;->h:Z

    if-nez v3, :cond_2

    iget-boolean v3, v2, Lwq5$b;->g:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    aget-object v3, v0, v1

    aget-object v4, p0, v1

    invoke-interface {v3, v4}, Lwr5;->a(Lls5;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
