.class public final synthetic Lw16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic c:Ly22;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/pager/PagerState;Ly22;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw16;->b:Landroidx/compose/foundation/pager/PagerState;

    iput-object p2, p0, Lw16;->c:Ly22;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lw16;->b:Landroidx/compose/foundation/pager/PagerState;

    iget-object p0, p0, Lw16;->c:Ly22;

    invoke-static {v0, p0}, Landroidx/compose/foundation/pager/PagerKt;->e(Landroidx/compose/foundation/pager/PagerState;Ly22;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
