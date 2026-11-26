.class public final Lyads/g06;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/kv;


# static fields
.field public static final e:Lyads/g06;

.field public static final f:Lyads/jv;


# instance fields
.field public final b:I

.field public final c:Lyads/k55;

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lyads/g06;

    const/4 v1, 0x0

    new-array v1, v1, [Lyads/f06;

    invoke-direct {v0, v1}, Lyads/g06;-><init>([Lyads/f06;)V

    sput-object v0, Lyads/g06;->e:Lyads/g06;

    new-instance v0, Lcc;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcc;-><init>(I)V

    sput-object v0, Lyads/g06;->f:Lyads/jv;

    return-void
.end method

.method public varargs constructor <init>([Lyads/f06;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lyads/oe3;->b([Ljava/lang/Object;)Lyads/k55;

    move-result-object v0

    iput-object v0, p0, Lyads/g06;->c:Lyads/k55;

    array-length p1, p1

    iput p1, p0, Lyads/g06;->b:I

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lyads/g06;->c:Lyads/k55;

    invoke-virtual {v0}, Lyads/k55;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    add-int/lit8 v0, p1, 0x1

    move v1, v0

    :goto_1
    iget-object v2, p0, Lyads/g06;->c:Lyads/k55;

    invoke-virtual {v2}, Lyads/k55;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lyads/g06;->c:Lyads/k55;

    invoke-virtual {v2, p1}, Lyads/k55;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/f06;

    iget-object v3, p0, Lyads/g06;->c:Lyads/k55;

    invoke-virtual {v3, v1}, Lyads/k55;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lyads/f06;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Multiple identical TrackGroups added to one TrackGroupArray."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string v3, ""

    invoke-static {v3, v2}, Lyads/sv3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TrackGroupArray"

    invoke-static {v3, v2}, Lyads/sv3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move p1, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lyads/g06;
    .locals 3

    const/16 v0, 0x24

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lyads/g06;

    new-array v0, v1, [Lyads/f06;

    invoke-direct {p0, v0}, Lyads/g06;-><init>([Lyads/f06;)V

    return-object p0

    :cond_0
    new-instance v0, Lyads/g06;

    sget-object v2, Lyads/f06;->g:Lyads/jv;

    invoke-static {v2, p0}, Lyads/lv;->a(Lyads/jv;Ljava/util/ArrayList;)Lyads/k55;

    move-result-object p0

    new-array v1, v1, [Lyads/f06;

    invoke-virtual {p0, v1}, Lyads/ie3;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lyads/f06;

    invoke-direct {v0, p0}, Lyads/g06;-><init>([Lyads/f06;)V

    return-object v0
.end method


# virtual methods
.method public final a(I)Lyads/f06;
    .locals 0

    .line 41
    iget-object p0, p0, Lyads/g06;->c:Lyads/k55;

    invoke-virtual {p0, p1}, Lyads/k55;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/f06;

    return-object p0
.end method

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

    const-class v3, Lyads/g06;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lyads/g06;

    iget v2, p0, Lyads/g06;->b:I

    iget v3, p1, Lyads/g06;->b:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lyads/g06;->c:Lyads/k55;

    iget-object p1, p1, Lyads/g06;->c:Lyads/k55;

    invoke-virtual {p0, p1}, Lyads/oe3;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lyads/g06;->d:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lyads/g06;->c:Lyads/k55;

    invoke-virtual {v0}, Lyads/oe3;->hashCode()I

    move-result v0

    iput v0, p0, Lyads/g06;->d:I

    :cond_0
    return v0
.end method
