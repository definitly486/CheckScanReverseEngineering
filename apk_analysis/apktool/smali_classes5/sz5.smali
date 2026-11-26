.class public final Lsz5;
.super Li02$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsz5$a;
    }
.end annotation


# virtual methods
.method public final b(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ln67;)Li02;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ln67;",
            ")",
            "Li02<",
            "Lb57;",
            "*>;"
        }
    .end annotation

    invoke-static {p1}, Lkb9;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    const-class v0, Ljava/util/Optional;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, p1}, Lkb9;->d(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-virtual {p3, p0, p2}, Ln67;->d(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Li02;

    move-result-object p0

    new-instance p1, Lsz5$a;

    invoke-direct {p1, p0}, Lsz5$a;-><init>(Li02;)V

    return-object p1
.end method
