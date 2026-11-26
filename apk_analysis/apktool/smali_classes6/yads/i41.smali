.class public final Lyads/i41;
.super Landroid/text/style/UnderlineSpan;
.source "SourceFile"


# instance fields
.field public final b:Lyads/o92;

.field public final c:Lyads/h92;


# direct methods
.method public constructor <init>(Lyads/o92;Lyads/h92;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/UnderlineSpan;-><init>()V

    iput-object p1, p0, Lyads/i41;->b:Lyads/o92;

    iput-object p2, p0, Lyads/i41;->c:Lyads/h92;

    return-void
.end method


# virtual methods
.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    return-void
.end method
