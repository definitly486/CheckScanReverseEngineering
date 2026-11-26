.class public final Lji9;
.super Ljc3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lji9$c;
    }
.end annotation


# static fields
.field public static final e:Lcl4;

.field public static final f:Lcl4;

.field public static final g:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/Window;",
            "Ljava/lang/ref/WeakReference<",
            "Lji9;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final h:Ljava/lang/Object;


# instance fields
.field public final c:Lwl7;

.field public final d:Landroid/view/Window$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lpo4;->NONE:Lpo4;

    sget-object v1, Lji9$b;->f:Lji9$b;

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v1

    sput-object v1, Lji9;->e:Lcl4;

    sget-object v1, Lji9$a;->f:Lji9$a;

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v0

    sput-object v0, Lji9;->f:Lcl4;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lji9;->g:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lji9;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/Window$Callback;)V
    .locals 0

    invoke-direct {p0, p1}, Ljc3;-><init>(Landroid/view/Window$Callback;)V

    iput-object p1, p0, Lji9;->d:Landroid/view/Window$Callback;

    new-instance p1, Lwl7;

    invoke-direct {p1}, Lwl7;-><init>()V

    iput-object p1, p0, Lji9;->c:Lwl7;

    return-void
.end method


# virtual methods
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lji9;->d:Landroid/view/Window$Callback;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lji9;->c:Lwl7;

    iget-object p0, p0, Lwl7;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Llf4;

    invoke-interface {p0}, Llf4;->a()Leo2;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Leo2;->a:Leo2$b;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Leo2$a;->b:Leo2$a;

    goto :goto_0

    :cond_1
    sget-object p0, Leo2;->a:Leo2$b;

    :goto_0
    instance-of p0, p0, Leo2$a;

    return p0

    :cond_2
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lji9;->d:Landroid/view/Window$Callback;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lji9;->c:Lwl7;

    iget-object v1, v1, Lwl7;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lji9$d;

    invoke-direct {v2, p0, v1}, Lji9$d;-><init>(Lji9;Ljava/util/Iterator;)V

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Liy8;

    invoke-interface {p0, p1, v2}, Liy8;->a(Landroid/view/MotionEvent;Lji9$d;)Leo2;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Leo2;->a:Leo2$b;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Leo2$a;->b:Leo2$a;

    goto :goto_0

    :cond_1
    sget-object p0, Leo2;->a:Leo2$b;

    :goto_0
    instance-of p0, p0, Leo2$a;

    return p0

    :cond_2
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onContentChanged()V
    .locals 2

    iget-object v0, p0, Lji9;->c:Lwl7;

    iget-object v0, v0, Lwl7;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyv5;

    invoke-interface {v1}, Lyv5;->onContentChanged()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lji9;->d:Landroid/view/Window$Callback;

    invoke-interface {p0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    iget-object v0, p0, Lji9;->c:Lwl7;

    iget-object v0, v0, Lwl7;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llw5;

    invoke-interface {v1}, Llw5;->a()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lji9;->d:Landroid/view/Window$Callback;

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    return-void
.end method
