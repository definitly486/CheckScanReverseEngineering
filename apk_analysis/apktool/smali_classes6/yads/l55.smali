.class public final Lyads/l55;
.super Lyads/oe3;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lyads/m55;


# direct methods
.method public constructor <init>(Lyads/m55;)V
    .locals 0

    iput-object p1, p0, Lyads/l55;->d:Lyads/m55;

    invoke-direct {p0}, Lyads/oe3;-><init>()V

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

    iget-object v0, p0, Lyads/l55;->d:Lyads/m55;

    iget v0, v0, Lyads/m55;->f:I

    invoke-static {p1, v0}, Lyads/wx4;->a(II)V

    iget-object v0, p0, Lyads/l55;->d:Lyads/m55;

    iget-object v0, v0, Lyads/m55;->e:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    aget-object v0, v0, p1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lyads/l55;->d:Lyads/m55;

    iget-object p0, p0, Lyads/m55;->e:[Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {p1, v0, p0}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lyads/l55;->d:Lyads/m55;

    iget p0, p0, Lyads/m55;->f:I

    return p0
.end method
