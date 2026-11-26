.class public final Landroidx/core/backported/fixes/SystemPropertyResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/backported/fixes/StatusResolver;


# instance fields
.field private final aliases$delegate:Lcl4;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb11;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lb11;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    iput-object v1, p0, Landroidx/core/backported/fixes/SystemPropertyResolver;->aliases$delegate:Lcl4;

    return-void
.end method

.method public static synthetic a(Landroidx/core/backported/fixes/SystemPropertyResolver;)Ljava/util/Set;
    .locals 0

    invoke-static {p0}, Landroidx/core/backported/fixes/SystemPropertyResolver;->aliases_delegate$lambda$0(Landroidx/core/backported/fixes/SystemPropertyResolver;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private static final aliases_delegate$lambda$0(Landroidx/core/backported/fixes/SystemPropertyResolver;)Ljava/util/Set;
    .locals 0

    invoke-direct {p0}, Landroidx/core/backported/fixes/SystemPropertyResolver;->initAliases()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private final getAliasBitsetString()Ljava/lang/String;
    .locals 3

    const-string p0, ""

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const-class v2, Ljava/lang/String;

    filled-new-array {v2, v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v2, "ro.build.backported_fixes.alias_bitset.long_list"

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object p0
.end method

.method private final initAliases()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/core/backported/fixes/SystemPropertyResolver;->getAliasBitsetString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/core/backported/fixes/SystemPropertyResolver;->parseLongListString(Ljava/lang/String;)[J

    move-result-object p0

    invoke-static {p0}, Ljava/util/BitSet;->valueOf([J)Ljava/util/BitSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/BitSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lox2;->b:Lox2;

    return-object p0

    :cond_0
    new-instance v1, Lir7;

    invoke-direct {v1, v0}, Lir7;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ltz v0, :cond_3

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lir7;->add(Ljava/lang/Object;)Z

    :cond_1
    const v2, 0x7fffffff

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {v1}, Ll1;->d(Lir7;)Lir7;

    move-result-object p0

    return-object p0
.end method

.method private final parseLongListString(Ljava/lang/String;)[J
    .locals 3

    invoke-static {}, Lu96;->e()Lar4;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/16 v1, 0x2c

    const/4 v2, 0x0

    aput-char v1, v0, v2

    invoke-static {p1, v0}, Lta8;->X(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lar4;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    invoke-static {p0}, Lu96;->d(Lar4;)Lar4;

    move-result-object p0

    invoke-static {p0}, Lqn1;->u0(Ljava/util/Collection;)[J

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getAliases()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/core/backported/fixes/SystemPropertyResolver;->aliases$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public getStatus(Landroidx/core/backported/fixes/KnownIssue;)Landroidx/core/backported/fixes/Status;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/core/backported/fixes/KnownIssue;->getAlias$core_backported_fixes()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Landroidx/core/backported/fixes/Status;->Unknown:Landroidx/core/backported/fixes/Status;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroidx/core/backported/fixes/SystemPropertyResolver;->getAliases()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/core/backported/fixes/KnownIssue;->getAlias$core_backported_fixes()Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Landroidx/core/backported/fixes/Status;->Fixed:Landroidx/core/backported/fixes/Status;

    return-object p0

    :cond_1
    sget-object p0, Landroidx/core/backported/fixes/Status;->NotFixed:Landroidx/core/backported/fixes/Status;

    return-object p0
.end method
