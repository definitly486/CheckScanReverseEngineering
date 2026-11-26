.class public final Lme9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnl3<",
        "Ljava/lang/Throwable;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Loe9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Loe9<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Landroid/view/ViewTreeObserver;

.field public final synthetic d:Lne9;


# direct methods
.method public constructor <init>(Loe9;Landroid/view/ViewTreeObserver;Lne9;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Loe9<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewTreeObserver;",
            "Lne9;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme9;->b:Loe9;

    iput-object p2, p0, Lme9;->c:Landroid/view/ViewTreeObserver;

    iput-object p3, p0, Lme9;->d:Lne9;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Lme9;->c:Landroid/view/ViewTreeObserver;

    iget-object v0, p0, Lme9;->d:Lne9;

    iget-object p0, p0, Lme9;->b:Loe9;

    invoke-interface {p0, p1, v0}, Loe9;->c(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
