.class public final synthetic Landroidx/compose/foundation/text/handwriting/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/handwriting/HandwritingDetectorNode;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/handwriting/HandwritingDetectorNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/handwriting/a;->b:Landroidx/compose/foundation/text/handwriting/HandwritingDetectorNode;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/handwriting/a;->b:Landroidx/compose/foundation/text/handwriting/HandwritingDetectorNode;

    invoke-static {p0}, Landroidx/compose/foundation/text/handwriting/HandwritingDetectorNode;->a(Landroidx/compose/foundation/text/handwriting/HandwritingDetectorNode;)Landroidx/compose/foundation/text/input/internal/ComposeInputMethodManager;

    move-result-object p0

    return-object p0
.end method
