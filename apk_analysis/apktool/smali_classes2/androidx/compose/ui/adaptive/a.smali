.class public final synthetic Landroidx/compose/ui/adaptive/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/adaptive/UiMediaScopeImpl;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/adaptive/UiMediaScopeImpl;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/adaptive/a;->b:Landroidx/compose/ui/adaptive/UiMediaScopeImpl;

    iput-object p2, p0, Landroidx/compose/ui/adaptive/a;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/adaptive/a;->b:Landroidx/compose/ui/adaptive/UiMediaScopeImpl;

    iget-object p0, p0, Landroidx/compose/ui/adaptive/a;->c:Landroid/view/View;

    invoke-static {v0, p0}, Landroidx/compose/ui/adaptive/MediaQuery_androidKt$obtainUiMediaScope$3$1;->a(Landroidx/compose/ui/adaptive/UiMediaScopeImpl;Landroid/view/View;)V

    return-void
.end method
