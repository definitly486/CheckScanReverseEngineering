.class public final Lbc3$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbc3$a;->onDraw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lbc3$a;

.field public final synthetic c:Lbc3$a;


# direct methods
.method public constructor <init>(Lbc3$a;Lbc3$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbc3$a$a;->c:Lbc3$a;

    iput-object p2, p0, Lbc3$a$a;->b:Lbc3$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lsu3;->a()Lsu3;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Leb9;->a()V

    iget-object v0, v0, Lsu3;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lbc3$a$a;->c:Lbc3$a;

    iget-object v0, v0, Lbc3$a;->c:Lbc3;

    iput-boolean v1, v0, Lbc3;->b:Z

    iget-object v0, p0, Lbc3$a$a;->c:Lbc3$a;

    iget-object v0, v0, Lbc3$a;->b:Landroid/view/View;

    iget-object v1, p0, Lbc3$a$a;->b:Lbc3$a;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    iget-object p0, p0, Lbc3$a$a;->c:Lbc3$a;

    iget-object p0, p0, Lbc3$a;->c:Lbc3;

    iget-object p0, p0, Lbc3;->a:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method
