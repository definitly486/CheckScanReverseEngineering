.class public final synthetic Lu16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic d:Ly22;


# direct methods
.method public synthetic constructor <init>(ZLandroidx/compose/foundation/pager/PagerState;Ly22;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lu16;->b:Z

    iput-object p2, p0, Lu16;->c:Landroidx/compose/foundation/pager/PagerState;

    iput-object p3, p0, Lu16;->d:Ly22;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lu16;->d:Ly22;

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    iget-boolean v1, p0, Lu16;->b:Z

    iget-object p0, p0, Lu16;->c:Landroidx/compose/foundation/pager/PagerState;

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/foundation/pager/PagerKt;->h(ZLandroidx/compose/foundation/pager/PagerState;Ly22;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;

    move-result-object p0

    return-object p0
.end method
