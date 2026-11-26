.class public final Lyads/wx2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/sl5;


# instance fields
.field public final a:Lyads/rl5;

.field public final b:Lyads/so;

.field public final c:I

.field public final d:I

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILyads/rl5;Lyads/so;I)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lyads/wx2;->a:Lyads/rl5;

    iput-object p4, p0, Lyads/wx2;->b:Lyads/so;

    const/4 p3, 0x0

    if-gez p1, :cond_2

    const/4 p4, -0x1

    if-ne p4, p1, :cond_1

    goto :goto_0

    :cond_1
    move p4, p3

    goto :goto_1

    :cond_2
    :goto_0
    move p4, p1

    :goto_1
    iput p4, p0, Lyads/wx2;->c:I

    if-gez p2, :cond_3

    const/4 p4, -0x2

    if-ne p4, p2, :cond_4

    :cond_3
    move p3, p2

    :cond_4
    iput p3, p0, Lyads/wx2;->d:I

    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%dx%d"

    invoke-static {p3, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lyads/wx2;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)I
    .locals 1

    iget p0, p0, Lyads/wx2;->d:I

    const/4 v0, -0x2

    if-ne v0, p0, :cond_0

    invoke-static {p1}, Lyads/eh6;->b(Landroid/content/Context;)I

    move-result p0

    :cond_0
    return p0
.end method

.method public final a()Lyads/so;
    .locals 0

    .line 10
    iget-object p0, p0, Lyads/wx2;->b:Lyads/so;

    return-object p0
.end method

.method public final b()Lyads/rl5;
    .locals 0

    iget-object p0, p0, Lyads/wx2;->a:Lyads/rl5;

    return-object p0
.end method

.method public final c(Landroid/content/Context;)I
    .locals 1

    iget p0, p0, Lyads/wx2;->c:I

    const/4 v0, -0x1

    if-ne v0, p0, :cond_0

    invoke-static {p1}, Lyads/eh6;->d(Landroid/content/Context;)I

    move-result p0

    :cond_0
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lyads/wx2;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lyads/wx2;

    iget v2, p0, Lyads/wx2;->c:I

    iget v3, p1, Lyads/wx2;->c:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lyads/wx2;->d:I

    iget v3, p1, Lyads/wx2;->d:I

    if-eq v2, v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lyads/wx2;->a:Lyads/rl5;

    iget-object p1, p1, Lyads/wx2;->a:Lyads/rl5;

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public final getHeight()I
    .locals 0

    iget p0, p0, Lyads/wx2;->d:I

    return p0
.end method

.method public final getWidth()I
    .locals 0

    iget p0, p0, Lyads/wx2;->c:I

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lyads/wx2;->c:I

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lyads/wx2;->d:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lyads/wx2;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lyads/l4;->a(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lyads/wx2;->a:Lyads/rl5;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyads/wx2;->e:Ljava/lang/String;

    return-object p0
.end method
