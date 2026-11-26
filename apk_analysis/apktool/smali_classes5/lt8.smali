.class public final Llt8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lbh8;

.field public static final b:Ljt8;

.field public static final c:Lxl4;

.field public static final d:Lkt8;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbh8;

    const-string v1, "NO_THREAD_ELEMENTS"

    invoke-direct {v0, v1}, Lbh8;-><init>(Ljava/lang/String;)V

    sput-object v0, Llt8;->a:Lbh8;

    new-instance v0, Ljt8;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Llt8;->b:Ljt8;

    new-instance v0, Lxl4;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lxl4;-><init>(I)V

    sput-object v0, Llt8;->c:Lxl4;

    new-instance v0, Lkt8;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkt8;-><init>(I)V

    sput-object v0, Llt8;->d:Lkt8;

    return-void
.end method

.method public static final a(Lo22;Ljava/lang/Object;)V
    .locals 5

    sget-object v0, Llt8;->a:Lbh8;

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Ltt8;

    if-eqz v0, :cond_3

    check-cast p1, Ltt8;

    iget-object v0, p1, Ltt8;->c:[Lit8;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    :goto_0
    add-int/lit8 v2, v1, -0x1

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p1, Ltt8;->b:[Ljava/lang/Object;

    aget-object v1, v4, v1

    invoke-interface {v3, p0, v1}, Lit8;->restoreThreadContext(Lo22;Ljava/lang/Object;)V

    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x0

    sget-object v1, Llt8;->c:Lxl4;

    invoke-interface {p0, v0, v1}, Lo22;->fold(Ljava/lang/Object;Lbm3;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lit8;

    invoke-interface {v0, p0, p1}, Lit8;->restoreThreadContext(Lo22;Ljava/lang/Object;)V

    return-void
.end method

.method public static final b(Lo22;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Llt8;->b:Ljt8;

    invoke-interface {p0, v0, v1}, Lo22;->fold(Ljava/lang/Object;Lbm3;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public static final c(Lo22;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    invoke-static {p0}, Llt8;->b(Lo22;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    sget-object p0, Llt8;->a:Lbh8;

    return-object p0

    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    new-instance v0, Ltt8;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p1, p0}, Ltt8;-><init>(ILo22;)V

    sget-object p1, Llt8;->d:Lkt8;

    invoke-interface {p0, v0, p1}, Lo22;->fold(Ljava/lang/Object;Lbm3;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    check-cast p1, Lit8;

    invoke-interface {p1, p0}, Lit8;->updateThreadContext(Lo22;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
