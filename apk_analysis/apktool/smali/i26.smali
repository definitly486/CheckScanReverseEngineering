.class public final synthetic Li26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:F

.field public final synthetic d:Lll3;


# direct methods
.method public synthetic constructor <init>(IFLll3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Li26;->b:I

    iput p2, p0, Li26;->c:F

    iput-object p3, p0, Li26;->d:Lll3;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Li26;->c:F

    iget-object v1, p0, Li26;->d:Lll3;

    iget p0, p0, Li26;->b:I

    invoke-static {p0, v0, v1}, Landroidx/compose/foundation/pager/PagerStateKt;->a(IFLll3;)Landroidx/compose/foundation/pager/DefaultPagerState;

    move-result-object p0

    return-object p0
.end method
