.class public final Lyads/df2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/cf2;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Lcl4;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lyads/df2;->b:Landroid/content/Context;

    new-instance p1, Lal5;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, Lal5;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lfh8;

    invoke-direct {v0, p1}, Lfh8;-><init>(Lll3;)V

    iput-object v0, p0, Lyads/df2;->c:Lcl4;

    return-void
.end method

.method public static final a(Lyads/df2;)Lyads/iz2;
    .locals 6

    iget-object p0, p0, Lyads/df2;->b:Landroid/content/Context;

    sget-object v0, Lyads/zg5;->l:Lyads/zg5;

    if-nez v0, :cond_1

    sget-object v0, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyads/zg5;->l:Lyads/zg5;

    if-nez v1, :cond_0

    new-instance v1, Lyads/zg5;

    invoke-direct {v1}, Lyads/zg5;-><init>()V

    sput-object v1, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    move-object v0, v1

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    :goto_2
    invoke-virtual {v0, p0}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lyads/fe5;->Z:Ljava/lang/String;

    goto :goto_3

    :cond_2
    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_4

    :try_start_1
    invoke-static {v0}, Lyads/jz2;->valueOf(Ljava/lang/String;)Lyads/jz2;

    move-result-object v0

    sget-object v2, Lyads/kz2;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    new-instance v2, Lyads/iz2;

    iget v3, v0, Lyads/jz2;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    invoke-static {p0, v3}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-object v3, v1

    :goto_4
    :try_start_3
    iget v4, v0, Lyads/jz2;->c:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :try_start_4
    invoke-static {p0, v4}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    :catchall_2
    move-object v4, v1

    :goto_5
    :try_start_5
    iget v5, v0, Lyads/jz2;->d:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    invoke-static {p0, v5}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_6

    :catchall_3
    move-object v5, v1

    :goto_6
    :try_start_7
    iget v0, v0, Lyads/jz2;->e:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :try_start_8
    invoke-static {p0, v0}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_7

    :catchall_4
    move-object p0, v1

    :goto_7
    :try_start_9
    invoke-direct {v2, v3, v4, v5, p0}, Lyads/iz2;-><init>(Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    move-object v1, v2

    goto :goto_8

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    :cond_4
    :goto_8
    return-object v1
.end method


# virtual methods
.method public final a()Landroid/graphics/Typeface;
    .locals 0

    .line 102
    iget-object p0, p0, Lyads/df2;->c:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/iz2;

    if-eqz p0, :cond_0

    .line 103
    iget-object p0, p0, Lyads/iz2;->a:Landroid/graphics/Typeface;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b()Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Lyads/df2;->c:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/iz2;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lyads/iz2;->d:Landroid/graphics/Typeface;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public final c()Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Lyads/df2;->c:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/iz2;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lyads/iz2;->c:Landroid/graphics/Typeface;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final d()Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Lyads/df2;->c:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/iz2;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lyads/iz2;->b:Landroid/graphics/Typeface;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
