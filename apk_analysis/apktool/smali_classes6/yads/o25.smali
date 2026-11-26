.class public final Lyads/o25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/v03;


# instance fields
.field public final a:Lyads/u03;

.field public final b:Lyads/aw3;


# direct methods
.method public constructor <init>(Lyads/u03;)V
    .locals 1

    sget-object v0, Lyads/ee5;->a:Lyads/ng3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lyads/ng3;->a()Lyads/aw3;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/o25;->a:Lyads/u03;

    iput-object v0, p0, Lyads/o25;->b:Lyads/aw3;

    return-void
.end method

.method public static final a(Lyads/o25;)V
    .locals 0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static final a(Lyads/o25;Lyads/j5;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static final b(Lyads/o25;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static final c(Lyads/o25;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lyads/o25;->a:Lyads/u03;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lyads/u03;->onAdShown()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 3

    iget-object v0, p0, Lyads/o25;->b:Lyads/aw3;

    new-instance v1, Llh;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Llh;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lyads/aw3;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onAdDismissed()V
    .locals 3

    iget-object v0, p0, Lyads/o25;->b:Lyads/aw3;

    new-instance v1, Loh5;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Loh5;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lyads/aw3;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onAdShown()V
    .locals 3

    iget-object v0, p0, Lyads/o25;->b:Lyads/aw3;

    new-instance v1, Led0;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Led0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lyads/aw3;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onImpression(Lyads/j5;)V
    .locals 3

    iget-object v0, p0, Lyads/o25;->b:Lyads/aw3;

    new-instance v1, Lqh5;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, p1}, Lqh5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lyads/aw3;->a(Ljava/lang/Runnable;)V

    return-void
.end method
