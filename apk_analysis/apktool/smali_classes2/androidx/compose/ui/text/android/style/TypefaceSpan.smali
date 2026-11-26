.class public final Landroidx/compose/ui/text/android/style/TypefaceSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/graphics/Typeface;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/android/style/TypefaceSpan;->typeface:Landroid/graphics/Typeface;

    return-void
.end method

.method private final updateTypeface(Landroid/graphics/Paint;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/style/TypefaceSpan;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public final getTypeface()Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/style/TypefaceSpan;->typeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/style/TypefaceSpan;->updateTypeface(Landroid/graphics/Paint;)V

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/style/TypefaceSpan;->updateTypeface(Landroid/graphics/Paint;)V

    return-void
.end method
