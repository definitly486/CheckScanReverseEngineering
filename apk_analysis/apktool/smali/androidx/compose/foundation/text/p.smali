.class public final synthetic Landroidx/compose/foundation/text/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/TextLinkScope;

.field public final synthetic c:Landroidx/compose/ui/text/AnnotatedString$Range;

.field public final synthetic d:Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/TextLinkScope;Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/p;->b:Landroidx/compose/foundation/text/TextLinkScope;

    iput-object p2, p0, Landroidx/compose/foundation/text/p;->c:Landroidx/compose/ui/text/AnnotatedString$Range;

    iput-object p3, p0, Landroidx/compose/foundation/text/p;->d:Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/text/p;->d:Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;

    check-cast p1, Landroidx/compose/foundation/text/TextAnnotatorScope;

    iget-object v1, p0, Landroidx/compose/foundation/text/p;->b:Landroidx/compose/foundation/text/TextLinkScope;

    iget-object p0, p0, Landroidx/compose/foundation/text/p;->c:Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/foundation/text/TextLinkScope;->b(Landroidx/compose/foundation/text/TextLinkScope;Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;Landroidx/compose/foundation/text/TextAnnotatorScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
