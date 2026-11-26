.class public final Lyads/a83;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final b:Lyads/a83;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/a83;

    invoke-direct {v0}, Lyads/a83;-><init>()V

    sput-object v0, Lyads/a83;->b:Lyads/a83;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lyads/w73;

    check-cast p2, Lyads/w73;

    invoke-virtual {p1}, Lyads/w73;->a()I

    move-result p0

    iget v0, p1, Lyads/w73;->e:I

    div-int/2addr p0, v0

    invoke-virtual {p2}, Lyads/w73;->a()I

    move-result v0

    iget v1, p2, Lyads/w73;->e:I

    div-int/2addr v0, v1

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p1}, Lyads/w73;->a()I

    move-result p0

    iget p1, p1, Lyads/w73;->e:I

    div-int/2addr p0, p1

    invoke-virtual {p2}, Lyads/w73;->a()I

    move-result p1

    iget p2, p2, Lyads/w73;->e:I

    div-int/2addr p1, p2

    if-le p0, p1, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
