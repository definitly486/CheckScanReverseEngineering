.class public final Landroidx/paging/PlaceholderPaddedDiffResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final diff:Landroidx/recyclerview/widget/DiffUtil$DiffResult;

.field private final hasOverlap:Z


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/DiffUtil$DiffResult;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/paging/PlaceholderPaddedDiffResult;->diff:Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    iput-boolean p2, p0, Landroidx/paging/PlaceholderPaddedDiffResult;->hasOverlap:Z

    return-void
.end method


# virtual methods
.method public final getDiff()Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .locals 0

    iget-object p0, p0, Landroidx/paging/PlaceholderPaddedDiffResult;->diff:Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    return-object p0
.end method

.method public final getHasOverlap()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/paging/PlaceholderPaddedDiffResult;->hasOverlap:Z

    return p0
.end method
