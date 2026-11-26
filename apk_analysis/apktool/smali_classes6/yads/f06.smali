.class public final Lyads/f06;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/kv;


# static fields
.field public static final g:Lyads/jv;


# instance fields
.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:[Lyads/vz2;

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljg;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/f06;->g:Lyads/jv;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lyads/vz2;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    if-lez v0, :cond_8

    iput-object p1, p0, Lyads/f06;->c:Ljava/lang/String;

    iput-object p2, p0, Lyads/f06;->e:[Lyads/vz2;

    array-length p1, p2

    iput p1, p0, Lyads/f06;->b:I

    const/4 p1, 0x0

    aget-object v0, p2, p1

    iget-object v0, v0, Lyads/vz2;->m:Ljava/lang/String;

    invoke-static {v0}, Lyads/z84;->d(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    aget-object v0, p2, p1

    iget-object v0, v0, Lyads/vz2;->l:Ljava/lang/String;

    invoke-static {v0}, Lyads/z84;->d(Ljava/lang/String;)I

    move-result v0

    :cond_0
    iput v0, p0, Lyads/f06;->d:I

    aget-object v0, p2, p1

    iget-object v0, v0, Lyads/vz2;->d:Ljava/lang/String;

    const-string v1, "und"

    const-string v2, ""

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move-object v0, v2

    :cond_2
    aget-object p2, p2, p1

    iget p2, p2, Lyads/vz2;->f:I

    or-int/lit16 p2, p2, 0x4000

    const/4 v3, 0x1

    :goto_0
    iget-object v4, p0, Lyads/f06;->e:[Lyads/vz2;

    array-length v5, v4

    if-ge v3, v5, :cond_7

    aget-object v4, v4, v3

    iget-object v4, v4, Lyads/vz2;->d:Ljava/lang/String;

    if-eqz v4, :cond_3

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move-object v4, v2

    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iget-object v5, p0, Lyads/f06;->e:[Lyads/vz2;

    const-string v6, ")"

    const-string v7, "\' (track "

    const-string v8, "\' (track 0) and \'"

    const-string v9, "TrackGroup"

    if-nez v4, :cond_5

    aget-object p0, v5, p1

    iget-object p0, p0, Lyads/vz2;->d:Ljava/lang/String;

    aget-object p1, v5, v3

    iget-object p1, p1, Lyads/vz2;->d:Ljava/lang/String;

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Different languages combined in one TrackGroup: \'"

    invoke-static {v0, p0, v8, p1, v7}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0, v6, v3}, Ll2;->e(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p2}, Lyads/sv3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Lyads/sv3;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    aget-object v4, v5, v3

    iget v4, v4, Lyads/vz2;->f:I

    or-int/lit16 v4, v4, 0x4000

    if-eq p2, v4, :cond_6

    aget-object p1, v5, p1

    iget p1, p1, Lyads/vz2;->f:I

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lyads/f06;->e:[Lyads/vz2;

    aget-object p0, p0, v3

    iget p0, p0, Lyads/vz2;->f:I

    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Different role flags combined in one TrackGroup: \'"

    invoke-static {v0, p1, v8, p0, v7}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0, v6, v3}, Ll2;->e(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p2}, Lyads/sv3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Lyads/sv3;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return-void

    :cond_8
    invoke-static {}, Lmi2;->b()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static a(Landroid/os/Bundle;)Lyads/f06;
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Lyads/oe3;->c:Lyads/le3;

    sget-object v2, Lyads/k55;->f:Lyads/k55;

    goto :goto_0

    :cond_0
    sget-object v3, Lyads/vz2;->I:Lyads/jv;

    invoke-static {v3, v2}, Lyads/lv;->a(Lyads/jv;Ljava/util/ArrayList;)Lyads/k55;

    move-result-object v2

    :goto_0
    const/4 v3, 0x1

    invoke-static {v3, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {p0, v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lyads/f06;

    new-array v0, v0, [Lyads/vz2;

    invoke-virtual {v2, v0}, Lyads/ie3;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/vz2;

    invoke-direct {v1, p0, v0}, Lyads/f06;-><init>(Ljava/lang/String;[Lyads/vz2;)V

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

    const-class v3, Lyads/f06;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lyads/f06;

    iget-object v2, p0, Lyads/f06;->c:Ljava/lang/String;

    iget-object v3, p1, Lyads/f06;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lyads/f06;->e:[Lyads/vz2;

    iget-object p1, p1, Lyads/f06;->e:[Lyads/vz2;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lyads/f06;->f:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lyads/f06;->c:Ljava/lang/String;

    const/16 v1, 0x20f

    const/16 v2, 0x1f

    invoke-static {v1, v2, v0}, Lyads/l4;->a(IILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lyads/f06;->e:[Lyads/vz2;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lyads/f06;->f:I

    :cond_0
    return v0
.end method
