.class public final Landroidx/compose/ui/text/android/selection/GraphemeClusterSegmentFinderUnderApi29;
.super Landroidx/compose/ui/text/android/selection/GraphemeClusterSegmentFinder;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final breakIterator:Ljava/text/BreakIterator;

.field private final text:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Landroidx/compose/ui/text/android/selection/GraphemeClusterSegmentFinder;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/android/selection/GraphemeClusterSegmentFinderUnderApi29;->text:Ljava/lang/CharSequence;

    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/compose/ui/text/android/selection/GraphemeClusterSegmentFinderUnderApi29;->breakIterator:Ljava/text/BreakIterator;

    return-void
.end method


# virtual methods
.method public next(I)I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/selection/GraphemeClusterSegmentFinderUnderApi29;->breakIterator:Ljava/text/BreakIterator;

    invoke-virtual {p0, p1}, Ljava/text/BreakIterator;->following(I)I

    move-result p0

    return p0
.end method

.method public previous(I)I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/android/selection/GraphemeClusterSegmentFinderUnderApi29;->breakIterator:Ljava/text/BreakIterator;

    invoke-virtual {p0, p1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result p0

    return p0
.end method
