.class public final Lyads/bh4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final a:Lyads/oz;

.field public final b:Lyads/uf4;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/kf4;)V
    .locals 1

    new-instance v0, Lyads/oz;

    invoke-direct {v0, p1, p2}, Lyads/oz;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    sget-object p1, Lyads/uf4;->e:Lyads/uf4;

    if-nez p1, :cond_1

    sget-object p1, Lyads/uf4;->d:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lyads/uf4;->e:Lyads/uf4;

    if-nez p2, :cond_0

    new-instance p2, Lyads/uf4;

    invoke-direct {p2}, Lyads/uf4;-><init>()V

    sput-object p2, Lyads/uf4;->e:Lyads/uf4;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p2, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1

    throw p0

    :cond_1
    :goto_2
    sget-object p1, Lyads/uf4;->e:Lyads/uf4;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/bh4;->a:Lyads/oz;

    iput-object p1, p0, Lyads/bh4;->b:Lyads/uf4;

    return-void

    :cond_2
    const-string p0, "Required value was null."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lyads/bh4;->a:Lyads/oz;

    iget-object p0, p0, Lyads/oz;->a:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lyads/bh4;->b:Lyads/uf4;

    invoke-virtual {v0, p1, p2}, Lyads/uf4;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    iget-object p0, p0, Lyads/bh4;->a:Lyads/oz;

    invoke-virtual {p0, p1, p2}, Lyads/oz;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
