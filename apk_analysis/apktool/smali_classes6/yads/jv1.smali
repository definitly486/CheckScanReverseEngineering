.class public final Lyads/jv1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/qq0;

.field public final b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lyads/qq0;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/jv1;->a:Lyads/qq0;

    iput-object p2, p0, Lyads/jv1;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static final a(Lnl3;Lyads/fu3;Lyads/hd3;)Lj59;
    .locals 0

    .line 53
    invoke-interface {p0, p2}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    check-cast p1, Lyads/iu3;

    invoke-virtual {p1}, Lyads/iu3;->h()V

    .line 55
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/ao2;Lnl3;Lyads/jv1;ILnl3;Lyads/hd3;)Lj59;
    .locals 0

    if-nez p5, :cond_0

    .line 40
    new-instance p4, Ljava/lang/Throwable;

    const-string p5, "Preview doesn\'t contain base64 image"

    invoke-direct {p4, p5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 41
    iget-object p5, p0, Lyads/ao2;->d:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {p0}, Lyads/ao2;->a()V

    .line 44
    iget-object p0, p2, Lyads/jv1;->a:Lyads/qq0;

    check-cast p0, Lbg;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-interface {p1, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 45
    :cond_0
    invoke-interface {p4, p5}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lyads/iu3;ZLnl3;)V
    .locals 2

    .line 47
    invoke-virtual {p2}, Lyads/iu3;->j()Ljava/util/concurrent/Future;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 48
    :cond_0
    new-instance v0, Lbu6;

    invoke-direct {v0, v1, p4, p2}, Lbu6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 49
    new-instance p4, Lyads/hi0;

    invoke-direct {p4, p1, p3, v0}, Lyads/hi0;-><init>(Ljava/lang/String;ZLnl3;)V

    if-eqz p3, :cond_1

    .line 50
    invoke-virtual {p4}, Lyads/hi0;->run()V

    const/4 p0, 0x0

    goto :goto_0

    .line 51
    :cond_1
    iget-object p0, p0, Lyads/jv1;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 52
    invoke-virtual {p2, p0}, Lyads/iu3;->a(Ljava/util/concurrent/Future;)V

    :cond_2
    return-void
.end method

.method public final a(Lyads/iu3;Lyads/ao2;Ljava/lang/String;IZLnl3;Lnl3;)V
    .locals 6

    if-eqz p3, :cond_0

    new-instance v0, Lb0a;

    move-object v3, p0

    move-object v1, p2

    move v4, p4

    move-object v2, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lb0a;-><init>(Lyads/ao2;Lnl3;Lyads/jv1;ILnl3;)V

    invoke-virtual {v3, p3, p1, p5, v0}, Lyads/jv1;->a(Ljava/lang/String;Lyads/iu3;ZLnl3;)V

    sget-object p0, Lj59;->a:Lj59;

    goto :goto_0

    :cond_0
    move-object v3, p0

    move v4, p4

    move-object v2, p6

    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    iget-object p0, v3, Lyads/jv1;->a:Lyads/qq0;

    check-cast p0, Lbg;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-interface {v2, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
