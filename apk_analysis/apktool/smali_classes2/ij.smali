.class public final synthetic Lij;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lij;->b:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/text/font/FontFamily;

    check-cast p2, Landroidx/compose/ui/text/font/FontWeight;

    check-cast p3, Landroidx/compose/ui/text/font/FontStyle;

    check-cast p4, Landroidx/compose/ui/text/font/FontSynthesis;

    iget-object p0, p0, Lij;->b:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->a(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method
