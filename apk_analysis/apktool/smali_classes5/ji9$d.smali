.class public final Lji9$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lji9;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnl3<",
        "Landroid/view/MotionEvent;",
        "Leo2;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lji9;

.field public final synthetic c:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lji9;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lji9$d;->b:Lji9;

    iput-object p2, p0, Lji9$d;->c:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lji9$d;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liy8;

    invoke-interface {v0, p1, p0}, Liy8;->a(Landroid/view/MotionEvent;Lji9$d;)Leo2;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Leo2;->a:Leo2$b;

    iget-object p0, p0, Lji9$d;->b:Lji9;

    iget-object p0, p0, Lji9;->d:Landroid/view/Window$Callback;

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Leo2$a;->b:Leo2$a;

    return-object p0

    :cond_1
    sget-object p0, Leo2;->a:Leo2$b;

    return-object p0
.end method
