.class public final Ldt2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzo7;
.implements Lit2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lzo7<",
        "TT;>;",
        "Lit2<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lzo7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzo7<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:I


# direct methods
.method public constructor <init>(Lzo7;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzo7<",
            "+TT;>;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldt2;->a:Lzo7;

    iput p2, p0, Ldt2;->b:I

    if-ltz p2, :cond_0

    return-void

    :cond_0
    const-string p0, "count must be non-negative, but was "

    const/16 p1, 0x2e

    invoke-static {p0, p2, p1}, Lqz0;->d(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a(I)Lzo7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lzo7<",
            "TT;>;"
        }
    .end annotation

    iget v0, p0, Ldt2;->b:I

    add-int/2addr v0, p1

    if-gez v0, :cond_0

    new-instance v0, Ldt2;

    invoke-direct {v0, p0, p1}, Ldt2;-><init>(Lzo7;I)V

    return-object v0

    :cond_0
    new-instance p1, Ldt2;

    iget-object p0, p0, Ldt2;->a:Lzo7;

    invoke-direct {p1, p0, v0}, Ldt2;-><init>(Lzo7;I)V

    return-object p1
.end method

.method public final b(I)Lzo7;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lzo7<",
            "TT;>;"
        }
    .end annotation

    iget v0, p0, Ldt2;->b:I

    add-int v1, v0, p1

    if-gez v1, :cond_0

    new-instance v0, Lhk8;

    invoke-direct {v0, p0, p1}, Lhk8;-><init>(Lzo7;I)V

    return-object v0

    :cond_0
    new-instance p1, Lqb8;

    iget-object p0, p0, Ldt2;->a:Lzo7;

    invoke-direct {p1, p0, v0, v1}, Lqb8;-><init>(Lzo7;II)V

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ldt2$a;

    invoke-direct {v0, p0}, Ldt2$a;-><init>(Ldt2;)V

    return-object v0
.end method
