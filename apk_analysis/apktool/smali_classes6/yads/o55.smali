.class public final Lyads/o55;
.super Lyads/oe3;
.source "SourceFile"


# instance fields
.field public final transient d:[Ljava/lang/Object;

.field public final transient e:I

.field public final transient f:I


# direct methods
.method public constructor <init>(II[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lyads/oe3;-><init>()V

    iput-object p3, p0, Lyads/o55;->d:[Ljava/lang/Object;

    iput p1, p0, Lyads/o55;->e:I

    iput p2, p0, Lyads/o55;->f:I

    return-void
.end method


# virtual methods
.method public final e()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lyads/o55;->f:I

    invoke-static {p1, v0}, Lyads/wx4;->a(II)V

    iget-object v0, p0, Lyads/o55;->d:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    iget p0, p0, Lyads/o55;->e:I

    add-int/2addr p1, p0

    aget-object p0, v0, p1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lyads/o55;->f:I

    return p0
.end method
