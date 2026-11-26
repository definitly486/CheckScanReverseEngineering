.class public final Lmp1$a;
.super Lmp1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmp1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public static g(I)Lmp1;
    .locals 0

    if-gez p0, :cond_0

    sget-object p0, Lmp1;->b:Lmp1$b;

    return-object p0

    :cond_0
    if-lez p0, :cond_1

    sget-object p0, Lmp1;->c:Lmp1$b;

    return-object p0

    :cond_1
    sget-object p0, Lmp1;->a:Lmp1$a;

    return-object p0
.end method


# virtual methods
.method public final a(II)Lmp1;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    invoke-static {p0}, Lmp1$a;->g(I)Lmp1;

    move-result-object p0

    return-object p0
.end method

.method public final b(JJ)Lmp1;
    .locals 0

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    invoke-static {p0}, Lmp1$a;->g(I)Lmp1;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lmp1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lmp1;"
        }
    .end annotation

    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Lmp1$a;->g(I)Lmp1;

    move-result-object p0

    return-object p0
.end method

.method public final d(ZZ)Lmp1;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    invoke-static {p0}, Lmp1$a;->g(I)Lmp1;

    move-result-object p0

    return-object p0
.end method

.method public final e(ZZ)Lmp1;
    .locals 0

    invoke-static {p2, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    invoke-static {p0}, Lmp1$a;->g(I)Lmp1;

    move-result-object p0

    return-object p0
.end method

.method public final f()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
