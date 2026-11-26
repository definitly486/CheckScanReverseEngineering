.class public final synthetic Landroidx/compose/foundation/pager/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;

.field public final synthetic c:Landroidx/compose/foundation/gestures/ScrollScope;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;Landroidx/compose/foundation/gestures/ScrollScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/pager/g;->b:Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;

    iput-object p2, p0, Landroidx/compose/foundation/pager/g;->c:Landroidx/compose/foundation/gestures/ScrollScope;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Landroidx/compose/foundation/pager/g;->b:Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;

    iget-object p0, p0, Landroidx/compose/foundation/pager/g;->c:Landroidx/compose/foundation/gestures/ScrollScope;

    invoke-static {v0, p0, p1}, Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;->a(Landroidx/compose/foundation/pager/PagerWrapperFlingBehavior;Landroidx/compose/foundation/gestures/ScrollScope;F)Lj59;

    move-result-object p0

    return-object p0
.end method
