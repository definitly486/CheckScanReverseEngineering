.class public final Lne9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public b:Z

.field public final synthetic c:Loe9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Loe9<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic d:Landroid/view/ViewTreeObserver;

.field public final synthetic e:Lc31;


# direct methods
.method public constructor <init>(Loe9;Landroid/view/ViewTreeObserver;Lc31;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lne9;->c:Loe9;

    iput-object p2, p0, Lne9;->d:Landroid/view/ViewTreeObserver;

    iput-object p3, p0, Lne9;->e:Lc31;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 4

    iget-object v0, p0, Lne9;->c:Loe9;

    invoke-interface {v0}, Loe9;->getSize()Lt18;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lne9;->d:Landroid/view/ViewTreeObserver;

    invoke-interface {v0, v3, p0}, Loe9;->c(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-boolean v0, p0, Lne9;->b:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lne9;->b:Z

    iget-object p0, p0, Lne9;->e:Lc31;

    invoke-virtual {p0, v1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return v2
.end method
