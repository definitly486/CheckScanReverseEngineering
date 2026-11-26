.class public final Lyz5;
.super Lu0;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyz5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu0<",
        "Lgx0;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field public final c:[Lgx0;

.field public final d:[I


# direct methods
.method public constructor <init>([Lgx0;[I)V
    .locals 0

    invoke-direct {p0}, Lu0;-><init>()V

    iput-object p1, p0, Lyz5;->c:[Lgx0;

    iput-object p2, p0, Lyz5;->d:[I

    return-void
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lgx0;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lgx0;

    invoke-super {p0, p1}, Lv;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lyz5;->c:[Lgx0;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final getSize()I
    .locals 0

    iget-object p0, p0, Lyz5;->c:[Lgx0;

    array-length p0, p0

    return p0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Lgx0;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p1, Lgx0;

    invoke-super {p0, p1}, Lu0;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Lgx0;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    check-cast p1, Lgx0;

    invoke-super {p0, p1}, Lu0;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
