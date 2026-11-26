.class public final Lyads/m16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/kv;


# static fields
.field public static final c:Lyads/m16;


# instance fields
.field public final b:Lyads/oe3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lyads/m16;

    sget-object v1, Lyads/oe3;->c:Lyads/le3;

    sget-object v1, Lyads/k55;->f:Lyads/k55;

    invoke-direct {v0, v1}, Lyads/m16;-><init>(Lyads/oe3;)V

    sput-object v0, Lyads/m16;->c:Lyads/m16;

    return-void
.end method

.method public constructor <init>(Lyads/oe3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lyads/oe3;->a(Ljava/util/Collection;)Lyads/oe3;

    move-result-object p1

    iput-object p1, p0, Lyads/m16;->b:Lyads/oe3;

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lyads/m16;->b:Lyads/oe3;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lyads/m16;->b:Lyads/oe3;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/l16;

    iget-object v3, v2, Lyads/l16;->f:[Z

    array-length v4, v3

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-boolean v6, v3, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    iget-object v2, v2, Lyads/l16;->c:Lyads/f06;

    iget v2, v2, Lyads/f06;->d:I

    if-ne v2, p1, :cond_1

    return v7

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lyads/m16;

    if-eq v1, v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lyads/m16;

    iget-object p0, p0, Lyads/m16;->b:Lyads/oe3;

    iget-object p1, p1, Lyads/m16;->b:Lyads/oe3;

    invoke-virtual {p0, p1}, Lyads/oe3;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lyads/m16;->b:Lyads/oe3;

    invoke-virtual {p0}, Lyads/oe3;->hashCode()I

    move-result p0

    return p0
.end method
