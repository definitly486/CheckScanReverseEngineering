.class public final Lqb8;
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

.field public final c:I


# direct methods
.method public constructor <init>(Lzo7;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzo7<",
            "+TT;>;II)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqb8;->a:Lzo7;

    iput p2, p0, Lqb8;->b:I

    iput p3, p0, Lqb8;->c:I

    const/4 p0, 0x0

    if-ltz p2, :cond_2

    if-ltz p3, :cond_1

    if-lt p3, p2, :cond_0

    return-void

    :cond_0
    const-string p1, "endIndex should be not less than startIndex, but was "

    const-string v0, " < "

    invoke-static {p3, p2, p1, v0}, Lrz0;->c(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc9;->f(Ljava/lang/Object;)V

    throw p0

    :cond_1
    const-string p1, "endIndex should be non-negative, but is "

    invoke-static {p3, p1}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc9;->f(Ljava/lang/Object;)V

    throw p0

    :cond_2
    const-string p1, "startIndex should be non-negative, but is "

    invoke-static {p2, p1}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc9;->f(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public final a(I)Lzo7;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lzo7<",
            "TT;>;"
        }
    .end annotation

    iget v0, p0, Lqb8;->c:I

    iget v1, p0, Lqb8;->b:I

    sub-int v2, v0, v1

    if-lt p1, v2, :cond_0

    sget-object p0, Lnx2;->a:Lnx2;

    return-object p0

    :cond_0
    new-instance v2, Lqb8;

    iget-object p0, p0, Lqb8;->a:Lzo7;

    add-int/2addr v1, p1

    invoke-direct {v2, p0, v1, v0}, Lqb8;-><init>(Lzo7;II)V

    return-object v2
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

    iget v0, p0, Lqb8;->c:I

    iget v1, p0, Lqb8;->b:I

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lqb8;

    iget-object p0, p0, Lqb8;->a:Lzo7;

    add-int/2addr p1, v1

    invoke-direct {v0, p0, v1, p1}, Lqb8;-><init>(Lzo7;II)V

    return-object v0
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

    new-instance v0, Lqb8$a;

    invoke-direct {v0, p0}, Lqb8$a;-><init>(Lqb8;)V

    return-object v0
.end method
