.class public final Lyads/gx5;
.super Lyads/kx5;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/kx5;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 7
    const/4 p0, 0x0

    return p0
.end method

.method public final a(Ljava/lang/Object;)I
    .locals 0

    .line 6
    const/4 p0, -0x1

    return p0
.end method

.method public final a(I)Ljava/lang/Object;
    .locals 0

    .line 9
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public final a(ILyads/hx5;Z)Lyads/hx5;
    .locals 0

    .line 8
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public final a(ILyads/jx5;J)Lyads/jx5;
    .locals 0

    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public final b()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
