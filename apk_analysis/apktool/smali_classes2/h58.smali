.class public final synthetic Lh58;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# instance fields
.field public final synthetic b:Landroid/text/Spannable;

.field public final synthetic c:Lfm3;


# direct methods
.method public synthetic constructor <init>(Landroid/text/Spannable;Lfm3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh58;->b:Landroid/text/Spannable;

    iput-object p2, p0, Lh58;->c:Lfm3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/ui/text/SpanStyle;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget-object v0, p0, Lh58;->b:Landroid/text/Spannable;

    iget-object p0, p0, Lh58;->c:Lfm3;

    invoke-static {v0, p0, p1, p2, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->a(Landroid/text/Spannable;Lfm3;Landroidx/compose/ui/text/SpanStyle;II)Lj59;

    move-result-object p0

    return-object p0
.end method
