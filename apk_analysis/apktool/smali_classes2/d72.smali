.class public final synthetic Ld72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/text/platform/style/CustomBulletSpan;

.field public final synthetic c:J

.field public final synthetic d:I

.field public final synthetic e:Landroid/graphics/Canvas;

.field public final synthetic f:Landroid/graphics/Paint;

.field public final synthetic g:I

.field public final synthetic h:F


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/text/platform/style/CustomBulletSpan;JILandroid/graphics/Canvas;Landroid/graphics/Paint;IF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld72;->b:Landroidx/compose/ui/text/platform/style/CustomBulletSpan;

    iput-wide p2, p0, Ld72;->c:J

    iput p4, p0, Ld72;->d:I

    iput-object p5, p0, Ld72;->e:Landroid/graphics/Canvas;

    iput-object p6, p0, Ld72;->f:Landroid/graphics/Paint;

    iput p7, p0, Ld72;->g:I

    iput p8, p0, Ld72;->h:F

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    iget v6, p0, Ld72;->g:I

    iget v7, p0, Ld72;->h:F

    iget-object v0, p0, Ld72;->b:Landroidx/compose/ui/text/platform/style/CustomBulletSpan;

    iget-wide v1, p0, Ld72;->c:J

    iget v3, p0, Ld72;->d:I

    iget-object v4, p0, Ld72;->e:Landroid/graphics/Canvas;

    iget-object v5, p0, Ld72;->f:Landroid/graphics/Paint;

    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;->a(Landroidx/compose/ui/text/platform/style/CustomBulletSpan;JILandroid/graphics/Canvas;Landroid/graphics/Paint;IF)Lj59;

    move-result-object p0

    return-object p0
.end method
