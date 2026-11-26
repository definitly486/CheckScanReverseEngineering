.class public final synthetic Landroidx/compose/foundation/text/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Ln07;

.field public final synthetic c:Landroidx/compose/ui/text/AnnotatedString$Range;

.field public final synthetic d:Landroidx/compose/ui/text/SpanStyle;


# direct methods
.method public synthetic constructor <init>(Ln07;Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/text/SpanStyle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/l;->b:Ln07;

    iput-object p2, p0, Landroidx/compose/foundation/text/l;->c:Landroidx/compose/ui/text/AnnotatedString$Range;

    iput-object p3, p0, Landroidx/compose/foundation/text/l;->d:Landroidx/compose/ui/text/SpanStyle;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/text/l;->d:Landroidx/compose/ui/text/SpanStyle;

    check-cast p1, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v1, p0, Landroidx/compose/foundation/text/l;->b:Ln07;

    iget-object p0, p0, Landroidx/compose/foundation/text/l;->c:Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/foundation/text/TextAnnotatorScope;->a(Ln07;Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/AnnotatedString$Range;)Landroidx/compose/ui/text/AnnotatedString$Range;

    move-result-object p0

    return-object p0
.end method
