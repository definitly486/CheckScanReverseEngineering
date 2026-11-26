.class public final Lyads/hc3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/bc3;

.field public final b:Lyads/b05;

.field public final c:Lyads/vl5;

.field public final d:Lyads/hl2;

.field public final e:Landroid/content/res/Resources;

.field public final f:Z

.field public final g:Lcl4;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/bc3;Lyads/b05;)V
    .locals 9

    .line 52
    sget-object v0, Lyads/un4;->d:Lyads/rn4;

    invoke-virtual {v0, p1}, Lyads/rn4;->a(Landroid/content/Context;)Lyads/un4;

    move-result-object v1

    .line 53
    iget-object v6, v1, Lyads/un4;->a:Lyads/vl5;

    .line 54
    invoke-virtual {v0, p1}, Lyads/rn4;->a(Landroid/content/Context;)Lyads/un4;

    move-result-object v0

    .line 55
    iget-object v7, v0, Lyads/un4;->b:Lyads/hl2;

    .line 56
    sget-object v0, Lyads/zg5;->l:Lyads/zg5;

    if-nez v0, :cond_1

    .line 57
    sget-object v1, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v0, Lyads/zg5;->l:Lyads/zg5;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lyads/zg5;

    invoke-direct {v0}, Lyads/zg5;-><init>()V

    .line 60
    sput-object v0, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 61
    :cond_0
    :goto_0
    monitor-exit v1

    :cond_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v8, v0

    goto :goto_2

    :goto_1
    monitor-exit v1

    throw p0

    .line 62
    :goto_2
    invoke-direct/range {v2 .. v8}, Lyads/hc3;-><init>(Landroid/content/Context;Lyads/bc3;Lyads/b05;Lyads/vl5;Lyads/hl2;Lyads/zg5;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lyads/bc3;Lyads/b05;Lyads/vl5;Lyads/hl2;Lyads/zg5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/hc3;->a:Lyads/bc3;

    iput-object p3, p0, Lyads/hc3;->b:Lyads/b05;

    iput-object p4, p0, Lyads/hc3;->c:Lyads/vl5;

    iput-object p5, p0, Lyads/hc3;->d:Lyads/hl2;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iput-object p3, p0, Lyads/hc3;->e:Landroid/content/res/Resources;

    invoke-interface {p2}, Lyads/bc3;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p6, p1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lyads/fe5;->M0:Z

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lyads/hc3;->f:Z

    new-instance p1, Lcb7;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lcb7;-><init>(I)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lyads/hc3;->g:Lcl4;

    return-void
.end method

.method public static final a()Lj59;
    .locals 1

    .line 100
    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method public static final a(Lmb4;)Lj59;
    .locals 1

    const/4 v0, 0x0

    .line 107
    invoke-interface {p0, v0}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 108
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Ln07;Lyads/xc3;)Lj59;
    .locals 1

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Ln07;->b:Z

    .line 102
    invoke-virtual {p1}, Lyads/xc3;->a()V

    .line 103
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Ly22;)Ly22;
    .locals 1

    if-nez p0, :cond_0

    .line 97
    new-instance p0, Lyads/i90;

    invoke-direct {p0}, Lyads/i90;-><init>()V

    .line 98
    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object v0

    .line 99
    invoke-static {v0, p0}, Lyads/xn;->a(Lhq1;Lyads/i90;)Ly22;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final a(Lyads/dc3;Lyads/hc3;Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 104
    iget-object p1, p1, Lyads/hc3;->e:Landroid/content/res/Resources;

    .line 105
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 106
    :goto_0
    check-cast p0, Lz3;

    invoke-virtual {p0, v0}, Lz3;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static final b()Lj59;
    .locals 1

    .line 10
    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method


# virtual methods
.method public final a(Lyads/rd3;Lyads/cc3;)Lll3;
    .locals 5

    iget-object v0, p0, Lyads/hc3;->b:Lyads/b05;

    invoke-virtual {v0, p1}, Lyads/b05;->a(Lyads/rd3;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast p2, Llq9;

    invoke-virtual {p2, v0}, Llq9;->a(Landroid/graphics/Bitmap;)V

    new-instance p0, Lfw9;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lfw9;-><init>(I)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lyads/hc3;->b:Lyads/b05;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lyads/b05;->b(Lyads/rd3;)Lyads/a05;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lyads/b05;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast p2, Llq9;

    invoke-virtual {p2, v0}, Llq9;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lyads/hc3;->a:Lyads/bc3;

    invoke-interface {v0}, Lyads/bc3;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lyads/rd3;->c:Ljava/lang/String;

    iget v1, p1, Lyads/rd3;->b:I

    iget p1, p1, Lyads/rd3;->a:I

    new-instance v2, Ln07;

    invoke-direct {v2}, Ln07;-><init>()V

    iget-object v3, p0, Lyads/hc3;->c:Lyads/vl5;

    new-instance v4, Lyads/ec3;

    invoke-direct {v4, v2, p0, v0, p2}, Lyads/ec3;-><init>(Ln07;Lyads/hc3;Ljava/lang/String;Lyads/cc3;)V

    invoke-virtual {v3, v0, v4, p1, v1}, Lyads/zc3;->a(Ljava/lang/String;Lyads/yc3;II)Lyads/xc3;

    move-result-object p0

    new-instance p1, Lax9;

    invoke-direct {p1, v2, p0}, Lax9;-><init>(Ln07;Lyads/xc3;)V

    return-object p1

    :cond_2
    new-instance p0, Leb7;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Leb7;-><init>(I)V

    return-object p0
.end method

.method public final a(Lyads/rd3;Lyads/dc3;)Lll3;
    .locals 3

    .line 89
    iget-object v0, p0, Lyads/hc3;->b:Lyads/b05;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    invoke-static {p1}, Lyads/b05;->b(Lyads/rd3;)Lyads/a05;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v0, v0, Lyads/b05;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 91
    iget-object v1, p0, Lyads/hc3;->e:Landroid/content/res/Resources;

    .line 92
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 93
    :cond_1
    check-cast p2, Lz3;

    invoke-virtual {p2, v2}, Lz3;->a(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-boolean v0, p0, Lyads/hc3;->f:Z

    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {p0, p1, p2}, Lyads/hc3;->c(Lyads/rd3;Lyads/dc3;)Lll3;

    move-result-object p0

    return-object p0

    .line 96
    :cond_2
    invoke-virtual {p0, p1, p2}, Lyads/hc3;->b(Lyads/rd3;Lyads/dc3;)Lll3;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lyads/rd3;Lyads/dc3;)Lll3;
    .locals 1

    new-instance v0, Llq9;

    invoke-direct {v0, p2, p0}, Llq9;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lyads/hc3;->a(Lyads/rd3;Lyads/cc3;)Lll3;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lyads/rd3;Lyads/dc3;)Lll3;
    .locals 3

    iget-object v0, p0, Lyads/hc3;->g:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly22;

    new-instance v1, Lyads/gc3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lyads/gc3;-><init>(Lyads/hc3;Lyads/rd3;Lyads/dc3;Le02;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p1

    new-instance p2, Lr54;

    invoke-direct {p2, p1, p0}, Lr54;-><init>(Ljava/lang/Object;I)V

    return-object p2
.end method
