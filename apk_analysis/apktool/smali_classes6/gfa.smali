.class public final synthetic Lgfa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroid/view/animation/Animation;

.field public final synthetic c:Landroid/view/animation/Animation;


# direct methods
.method public synthetic constructor <init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgfa;->b:Landroid/view/animation/Animation;

    iput-object p2, p0, Lgfa;->c:Landroid/view/animation/Animation;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/MotionEvent;

    iget-object v0, p0, Lgfa;->b:Landroid/view/animation/Animation;

    iget-object p0, p0, Lgfa;->c:Landroid/view/animation/Animation;

    invoke-static {v0, p0, p1, p2}, Lyads/v56;->a(Landroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/View;Landroid/view/MotionEvent;)Lj59;

    move-result-object p0

    return-object p0
.end method
