.class public final Lcv0;
.super Li02$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcv0$d;,
        Lcv0$a;,
        Lcv0$c;,
        Lcv0$b;,
        Lcv0$e;,
        Lcv0$f;
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/reflect/Type;)Li02;
    .locals 0

    const-class p0, Lg37;

    invoke-static {p1}, Lkb9;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcv0$b;->a:Lcv0$b;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ln67;)Li02;
    .locals 0
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

    const-class p0, Lb57;

    if-ne p1, p0, :cond_1

    const-class p0, Lm98;

    invoke-static {p2, p0}, Lkb9;->h([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcv0$c;->a:Lcv0$c;

    return-object p0

    :cond_0
    sget-object p0, Lcv0$a;->a:Lcv0$a;

    return-object p0

    :cond_1
    const-class p0, Ljava/lang/Void;

    if-ne p1, p0, :cond_2

    sget-object p0, Lcv0$f;->a:Lcv0$f;

    return-object p0

    :cond_2
    sget-boolean p0, Lkb9;->b:Z

    if-eqz p0, :cond_3

    :try_start_0
    const-class p0, Lj59;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, p0, :cond_3

    sget-object p0, Lcv0$e;->a:Lcv0$e;

    return-object p0

    :catch_0
    const/4 p0, 0x0

    sput-boolean p0, Lkb9;->b:Z

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
