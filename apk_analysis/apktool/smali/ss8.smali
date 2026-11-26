.class public final synthetic Lss8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/text/TextLinkScope;

.field public final synthetic c:Landroidx/compose/ui/text/AnnotatedString$Range;

.field public final synthetic d:Landroidx/compose/ui/platform/UriHandler;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/text/TextLinkScope;Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/platform/UriHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lss8;->b:Landroidx/compose/foundation/text/TextLinkScope;

    iput-object p2, p0, Lss8;->c:Landroidx/compose/ui/text/AnnotatedString$Range;

    iput-object p3, p0, Lss8;->d:Landroidx/compose/ui/platform/UriHandler;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lss8;->c:Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v1, p0, Lss8;->d:Landroidx/compose/ui/platform/UriHandler;

    iget-object p0, p0, Lss8;->b:Landroidx/compose/foundation/text/TextLinkScope;

    invoke-static {p0, v0, v1}, Landroidx/compose/foundation/text/TextLinkScope;->e(Landroidx/compose/foundation/text/TextLinkScope;Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/platform/UriHandler;)Lj59;

    move-result-object p0

    return-object p0
.end method
