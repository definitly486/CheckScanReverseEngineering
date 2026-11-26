.class public final Lyads/zj5;
.super Landroid/text/style/CharacterStyle;
.source "SourceFile"


# instance fields
.field public final a:Lyads/yj5;


# direct methods
.method public constructor <init>(Lyads/yj5;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    iput-object p1, p0, Lyads/zj5;->a:Lyads/yj5;

    return-void
.end method


# virtual methods
.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 3

    iget-object p0, p0, Lyads/zj5;->a:Lyads/yj5;

    if-eqz p1, :cond_0

    iget v0, p0, Lyads/yj5;->c:F

    iget v1, p0, Lyads/yj5;->a:F

    iget v2, p0, Lyads/yj5;->b:F

    iget p0, p0, Lyads/yj5;->d:I

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_0
    return-void
.end method
