.class public final synthetic Lyh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:F

.field public final synthetic c:Landroidx/compose/ui/graphics/ImageBitmap;

.field public final synthetic d:Landroidx/compose/ui/graphics/ColorFilter;


# direct methods
.method public synthetic constructor <init>(FLandroidx/compose/ui/graphics/ImageBitmap;Landroidx/compose/ui/graphics/ColorFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lyh;->b:F

    iput-object p2, p0, Lyh;->c:Landroidx/compose/ui/graphics/ImageBitmap;

    iput-object p3, p0, Lyh;->d:Landroidx/compose/ui/graphics/ColorFilter;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lyh;->d:Landroidx/compose/ui/graphics/ColorFilter;

    check-cast p1, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    iget v1, p0, Lyh;->b:F

    iget-object p0, p0, Lyh;->c:Landroidx/compose/ui/graphics/ImageBitmap;

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt;->a(FLandroidx/compose/ui/graphics/ImageBitmap;Landroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
