.class public final Lyads/k55;
.super Lyads/oe3;
.source "SourceFile"


# static fields
.field public static final f:Lyads/k55;


# instance fields
.field public final transient d:[Ljava/lang/Object;

.field public final transient e:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lyads/k55;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lyads/k55;-><init>(I[Ljava/lang/Object;)V

    sput-object v0, Lyads/k55;->f:Lyads/k55;

    return-void
.end method

.method public constructor <init>(I[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lyads/oe3;-><init>()V

    iput-object p2, p0, Lyads/k55;->d:[Ljava/lang/Object;

    iput p1, p0, Lyads/k55;->e:I

    return-void
.end method


# virtual methods
.method public final a(I[Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Lyads/k55;->d:[Ljava/lang/Object;

    iget v1, p0, Lyads/k55;->e:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p0, p0, Lyads/k55;->e:I

    add-int/2addr p1, p0

    return p1
.end method

.method public final b()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lyads/k55;->d:[Ljava/lang/Object;

    return-object p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lyads/k55;->e:I

    return p0
.end method

.method public final d()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lyads/k55;->e:I

    invoke-static {p1, v0}, Lyads/wx4;->a(II)V

    iget-object p0, p0, Lyads/k55;->d:[Ljava/lang/Object;

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lyads/k55;->e:I

    return p0
.end method
