.class public final synthetic Lck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lll3;

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/compose/ui/graphics/ImageBitmap;

.field public final synthetic e:Landroidx/compose/ui/graphics/ColorFilter;


# direct methods
.method public synthetic constructor <init>(Lll3;ZLandroidx/compose/ui/graphics/ImageBitmap;Landroidx/compose/ui/graphics/ColorFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lck;->b:Lll3;

    iput-boolean p2, p0, Lck;->c:Z

    iput-object p3, p0, Lck;->d:Landroidx/compose/ui/graphics/ImageBitmap;

    iput-object p4, p0, Lck;->e:Landroidx/compose/ui/graphics/ColorFilter;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lck;->e:Landroidx/compose/ui/graphics/ColorFilter;

    check-cast p1, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    iget-object v1, p0, Lck;->b:Lll3;

    iget-boolean v2, p0, Lck;->c:Z

    iget-object p0, p0, Lck;->d:Landroidx/compose/ui/graphics/ImageBitmap;

    invoke-static {v1, v2, p0, v0, p1}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->e(Lll3;ZLandroidx/compose/ui/graphics/ImageBitmap;Landroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
