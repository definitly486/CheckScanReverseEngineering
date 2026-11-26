.class public final Lyads/l16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/kv;


# static fields
.field public static final g:Lyads/jv;


# instance fields
.field public final b:I

.field public final c:Lyads/f06;

.field public final d:Z

.field public final e:[I

.field public final f:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg7;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lg7;-><init>(I)V

    sput-object v0, Lyads/l16;->g:Lyads/jv;

    return-void
.end method

.method public constructor <init>(Lyads/f06;Z[I[Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lyads/f06;->b:I

    iput v0, p0, Lyads/l16;->b:I

    array-length v1, p3

    if-ne v0, v1, :cond_1

    array-length v1, p4

    if-ne v0, v1, :cond_1

    iput-object p1, p0, Lyads/l16;->c:Lyads/f06;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    if-le v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lyads/l16;->d:Z

    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lyads/l16;->e:[I

    invoke-virtual {p4}, [Z->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Z

    iput-object p1, p0, Lyads/l16;->f:[Z

    return-void

    :cond_1
    invoke-static {}, Lmi2;->b()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static a(Landroid/os/Bundle;)Lyads/l16;
    .locals 6

    sget-object v0, Lyads/f06;->g:Lyads/jv;

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v3}, Lyads/jv;->a(Landroid/os/Bundle;)Lyads/kv;

    move-result-object v0

    check-cast v0, Lyads/f06;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    iget v4, v0, Lyads/f06;->b:I

    new-array v4, v4, [I

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    const/4 v4, 0x3

    invoke-static {v4, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v4

    iget v5, v0, Lyads/f06;->b:I

    new-array v5, v5, [Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v4, v5

    :goto_1
    const/4 v5, 0x4

    invoke-static {v5, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    new-instance v1, Lyads/l16;

    invoke-direct {v1, v0, p0, v3, v4}, Lyads/l16;-><init>(Lyads/f06;Z[I[Z)V

    return-object v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lyads/l16;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lyads/l16;

    iget-boolean v2, p0, Lyads/l16;->d:Z

    iget-boolean v3, p1, Lyads/l16;->d:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lyads/l16;->c:Lyads/f06;

    iget-object v3, p1, Lyads/l16;->c:Lyads/f06;

    invoke-virtual {v2, v3}, Lyads/f06;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lyads/l16;->e:[I

    iget-object v3, p1, Lyads/l16;->e:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lyads/l16;->f:[Z

    iget-object p1, p1, Lyads/l16;->f:[Z

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lyads/l16;->c:Lyads/f06;

    invoke-virtual {v0}, Lyads/f06;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lyads/l16;->d:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lyads/l16;->e:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lyads/l16;->f:[Z

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Z)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method
