.class public final synthetic Lvk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/graphics/Brush;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/Brush;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvk;->b:Landroidx/compose/ui/graphics/Brush;

    iput-wide p2, p0, Lvk;->c:J

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lvk;->b:Landroidx/compose/ui/graphics/Brush;

    iget-wide v1, p0, Lvk;->c:J

    invoke-static {v0, v1, v2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->a(Landroidx/compose/ui/graphics/Brush;J)Landroid/graphics/Shader;

    move-result-object p0

    return-object p0
.end method
