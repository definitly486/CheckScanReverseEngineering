.class public final Lyads/y30;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lyads/y30;


# instance fields
.field public final a:[I

.field public final b:[F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lyads/y30;

    const/4 v1, 0x0

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/y30;-><init>([I[F)V

    sput-object v0, Lyads/y30;->c:Lyads/y30;

    return-void
.end method

.method public constructor <init>([I[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/y30;->a:[I

    iput-object p2, p0, Lyads/y30;->b:[F

    array-length p0, p1

    if-eqz p2, :cond_0

    array-length p1, p2

    goto :goto_0

    :cond_0
    array-length p1, p1

    :goto_0
    if-ne p0, p1, :cond_1

    return-void

    :cond_1
    const-string p0, "Failed requirement."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Lyads/y30;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lyads/y30;

    iget-object v1, p0, Lyads/y30;->a:[I

    iget-object v3, p1, Lyads/y30;->a:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lyads/y30;->b:[F

    iget-object p1, p1, Lyads/y30;->b:[F

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lyads/y30;->a:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lyads/y30;->b:[F

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method
