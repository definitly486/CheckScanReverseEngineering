.class public final Lyads/fl2;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/hl2;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lc31;


# direct methods
.method public constructor <init>(Lyads/hl2;Ljava/lang/String;Lc31;)V
    .locals 0

    iput-object p1, p0, Lyads/fl2;->b:Lyads/hl2;

    iput-object p2, p0, Lyads/fl2;->c:Ljava/lang/String;

    iput-object p3, p0, Lyads/fl2;->d:Lc31;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lyads/kl2;

    iget-object v0, p0, Lyads/fl2;->b:Lyads/hl2;

    iget-object v0, v0, Lyads/hl2;->b:Lyads/xk2;

    iget-object v1, p0, Lyads/fl2;->c:Ljava/lang/String;

    iget-object v2, p1, Lyads/kl2;->a:Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Lyads/kl2;->b:Lyads/pd3;

    invoke-virtual {v0, v1, v2, v3}, Lyads/xk2;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lyads/pd3;)V

    iget-object v0, p0, Lyads/fl2;->b:Lyads/hl2;

    iget-object p0, p0, Lyads/fl2;->d:Lc31;

    iget-object p1, p1, Lyads/kl2;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lc31;->t()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lno5;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
