.class public final Lyads/s25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/v03;


# instance fields
.field public final a:Lyads/u03;

.field public final b:Lyads/aw3;

.field public c:Lyads/bo6;


# direct methods
.method public constructor <init>(Lyads/u03;)V
    .locals 1

    sget-object v0, Lyads/ee5;->a:Lyads/ng3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lyads/ng3;->a()Lyads/aw3;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/s25;->a:Lyads/u03;

    iput-object v0, p0, Lyads/s25;->b:Lyads/aw3;

    return-void
.end method

.method public static final a(Lyads/s25;)V
    .locals 0

    .line 17
    iget-object p0, p0, Lyads/s25;->c:Lyads/bo6;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lyads/bo6;->a()V

    :cond_0
    return-void
.end method

.method public static final a(Lyads/s25;Lyads/j5;)V
    .locals 0

    .line 16
    iget-object p0, p0, Lyads/s25;->c:Lyads/bo6;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lyads/bo6;->a(Lyads/j5;)V

    :cond_0
    return-void
.end method

.method public static final a(Lyads/s25;Lyads/s95;)V
    .locals 0

    .line 19
    iget-object p0, p0, Lyads/s25;->c:Lyads/bo6;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lyads/bo6;->a(Lyads/s95;)V

    :cond_0
    return-void
.end method

.method public static final a(Lyads/y6;Lyads/s25;)V
    .locals 1

    new-instance v0, Lyads/mk5;

    iget-object p0, p0, Lyads/y6;->b:Ljava/lang/String;

    invoke-direct {v0, p0}, Lyads/mk5;-><init>(Ljava/lang/String;)V

    iget-object p0, p1, Lyads/s25;->c:Lyads/bo6;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lyads/bo6;->a(Lyads/mk5;)V

    :cond_0
    return-void
.end method

.method public static final b(Lyads/s25;)V
    .locals 0

    iget-object p0, p0, Lyads/s25;->c:Lyads/bo6;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lyads/bo6;->b()V

    :cond_0
    return-void
.end method

.method public static final c(Lyads/s25;)V
    .locals 1

    iget-object v0, p0, Lyads/s25;->c:Lyads/bo6;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lyads/bo6;->c()V

    :cond_0
    iget-object p0, p0, Lyads/s25;->a:Lyads/u03;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lyads/u03;->onAdShown()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lyads/s95;)V
    .locals 2

    .line 18
    iget-object v0, p0, Lyads/s25;->b:Lyads/aw3;

    new-instance v1, Ld8a;

    invoke-direct {v1, p0, p1}, Ld8a;-><init>(Lyads/s25;Lyads/s95;)V

    invoke-virtual {v0, v1}, Lyads/aw3;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lyads/y6;)V
    .locals 2

    .line 15
    iget-object v0, p0, Lyads/s25;->b:Lyads/aw3;

    new-instance v1, Lc8a;

    invoke-direct {v1, p1, p0}, Lc8a;-><init>(Lyads/y6;Lyads/s25;)V

    invoke-virtual {v0, v1}, Lyads/aw3;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onAdClicked()V
    .locals 3

    iget-object v0, p0, Lyads/s25;->b:Lyads/aw3;

    new-instance v1, Ls41;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Ls41;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lyads/aw3;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onAdDismissed()V
    .locals 3

    iget-object v0, p0, Lyads/s25;->b:Lyads/aw3;

    new-instance v1, Liu0;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Liu0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lyads/aw3;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onAdShown()V
    .locals 3

    iget-object v0, p0, Lyads/s25;->b:Lyads/aw3;

    new-instance v1, Lmr1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lmr1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lyads/aw3;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onImpression(Lyads/j5;)V
    .locals 2

    iget-object v0, p0, Lyads/s25;->b:Lyads/aw3;

    new-instance v1, Le8a;

    invoke-direct {v1, p0, p1}, Le8a;-><init>(Lyads/s25;Lyads/j5;)V

    invoke-virtual {v0, v1}, Lyads/aw3;->a(Ljava/lang/Runnable;)V

    return-void
.end method
