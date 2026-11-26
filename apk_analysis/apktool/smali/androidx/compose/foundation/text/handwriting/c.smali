.class public final synthetic Landroidx/compose/foundation/text/handwriting/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/handwriting/HandwritingHandlerNode;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/handwriting/HandwritingHandlerNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/handwriting/c;->b:Landroidx/compose/foundation/text/handwriting/HandwritingHandlerNode;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/handwriting/c;->b:Landroidx/compose/foundation/text/handwriting/HandwritingHandlerNode;

    invoke-static {p0}, Landroidx/compose/foundation/text/handwriting/HandwritingHandlerNode;->a(Landroidx/compose/foundation/text/handwriting/HandwritingHandlerNode;)Landroidx/compose/foundation/text/input/internal/ComposeInputMethodManager;

    move-result-object p0

    return-object p0
.end method
