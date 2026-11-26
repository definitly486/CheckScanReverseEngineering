.class public final Lyads/z74;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/er2;


# instance fields
.field public final a:Lyads/er2;

.field public final b:Lyads/f06;


# direct methods
.method public constructor <init>(Lyads/er2;Lyads/f06;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/z74;->a:Lyads/er2;

    iput-object p2, p0, Lyads/z74;->b:Lyads/f06;

    return-void
.end method


# virtual methods
.method public final a(JLjava/util/List;)I
    .locals 0

    .line 12
    iget-object p0, p0, Lyads/z74;->a:Lyads/er2;

    invoke-interface {p0, p1, p2, p3}, Lyads/er2;->a(JLjava/util/List;)I

    move-result p0

    return p0
.end method

.method public final a(Lyads/vz2;)I
    .locals 0

    .line 7
    iget-object p0, p0, Lyads/z74;->a:Lyads/er2;

    invoke-interface {p0, p1}, Lyads/er2;->a(Lyads/vz2;)I

    move-result p0

    return p0
.end method

.method public final a(I)Lyads/vz2;
    .locals 0

    iget-object p0, p0, Lyads/z74;->a:Lyads/er2;

    invoke-interface {p0, p1}, Lyads/er2;->a(I)Lyads/vz2;

    move-result-object p0

    return-object p0
.end method

.method public final a()V
    .locals 0

    .line 8
    iget-object p0, p0, Lyads/z74;->a:Lyads/er2;

    invoke-interface {p0}, Lyads/er2;->a()V

    return-void
.end method

.method public final a(F)V
    .locals 0

    .line 9
    iget-object p0, p0, Lyads/z74;->a:Lyads/er2;

    invoke-interface {p0, p1}, Lyads/er2;->a(F)V

    return-void
.end method

.method public final a(JJJLjava/util/List;[Lyads/ly3;)V
    .locals 0

    .line 11
    iget-object p0, p0, Lyads/z74;->a:Lyads/er2;

    invoke-interface/range {p0 .. p8}, Lyads/er2;->a(JJJLjava/util/List;[Lyads/ly3;)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 10
    iget-object p0, p0, Lyads/z74;->a:Lyads/er2;

    invoke-interface {p0, p1}, Lyads/er2;->a(Z)V

    return-void
.end method

.method public final a(IJ)Z
    .locals 0

    .line 14
    iget-object p0, p0, Lyads/z74;->a:Lyads/er2;

    invoke-interface {p0, p1, p2, p3}, Lyads/er2;->a(IJ)Z

    move-result p0

    return p0
.end method

.method public final a(JLyads/cz;Ljava/util/List;)Z
    .locals 0

    .line 13
    iget-object p0, p0, Lyads/z74;->a:Lyads/er2;

    invoke-interface {p0, p1, p2, p3, p4}, Lyads/er2;->a(JLyads/cz;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public final b(I)I
    .locals 0

    iget-object p0, p0, Lyads/z74;->a:Lyads/er2;

    invoke-interface {p0, p1}, Lyads/er2;->b(I)I

    move-result p0

    return p0
.end method

.method public final b()V
    .locals 0

    .line 7
    iget-object p0, p0, Lyads/z74;->a:Lyads/er2;

    invoke-interface {p0}, Lyads/er2;->b()V

    return-void
.end method

.method public final b(IJ)Z
    .locals 0

    .line 8
    iget-object p0, p0, Lyads/z74;->a:Lyads/er2;

    invoke-interface {p0, p1, p2, p3}, Lyads/er2;->b(IJ)Z

    move-result p0

    return p0
.end method

.method public final c(I)I
    .locals 0

    iget-object p0, p0, Lyads/z74;->a:Lyads/er2;

    invoke-interface {p0, p1}, Lyads/er2;->c(I)I

    move-result p0

    return p0
.end method

.method public final c()Lyads/f06;
    .locals 0

    .line 7
    iget-object p0, p0, Lyads/z74;->b:Lyads/f06;

    return-object p0
.end method

.method public final d()Lyads/vz2;
    .locals 0

    iget-object p0, p0, Lyads/z74;->a:Lyads/er2;

    invoke-interface {p0}, Lyads/er2;->d()Lyads/vz2;

    move-result-object p0

    return-object p0
.end method

.method public final e()I
    .locals 0

    iget-object p0, p0, Lyads/z74;->a:Lyads/er2;

    invoke-interface {p0}, Lyads/er2;->e()I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/z74;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/z74;

    iget-object v1, p0, Lyads/z74;->a:Lyads/er2;

    iget-object v3, p1, Lyads/z74;->a:Lyads/er2;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lyads/z74;->b:Lyads/f06;

    iget-object p1, p1, Lyads/z74;->b:Lyads/f06;

    invoke-virtual {p0, p1}, Lyads/f06;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final f()I
    .locals 0

    iget-object p0, p0, Lyads/z74;->a:Lyads/er2;

    invoke-interface {p0}, Lyads/er2;->f()I

    move-result p0

    return p0
.end method

.method public final g()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lyads/z74;->a:Lyads/er2;

    invoke-interface {p0}, Lyads/er2;->g()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final h()V
    .locals 0

    iget-object p0, p0, Lyads/z74;->a:Lyads/er2;

    invoke-interface {p0}, Lyads/er2;->h()V

    return-void
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lyads/z74;->b:Lyads/f06;

    invoke-virtual {v0}, Lyads/f06;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lyads/z74;->a:Lyads/er2;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final i()V
    .locals 0

    iget-object p0, p0, Lyads/z74;->a:Lyads/er2;

    invoke-interface {p0}, Lyads/er2;->i()V

    return-void
.end method

.method public final length()I
    .locals 0

    iget-object p0, p0, Lyads/z74;->a:Lyads/er2;

    invoke-interface {p0}, Lyads/er2;->length()I

    move-result p0

    return p0
.end method
