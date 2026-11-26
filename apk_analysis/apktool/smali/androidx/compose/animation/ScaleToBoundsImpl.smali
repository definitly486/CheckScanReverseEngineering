.class public final Landroidx/compose/animation/ScaleToBoundsImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/animation/SharedTransitionScope$ResizeMode;


# static fields
.field public static final $stable:I


# instance fields
.field private final alignment:Landroidx/compose/ui/Alignment;

.field private final contentScale:Landroidx/compose/ui/layout/ContentScale;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/ui/Alignment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/ScaleToBoundsImpl;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    iput-object p2, p0, Landroidx/compose/animation/ScaleToBoundsImpl;->alignment:Landroidx/compose/ui/Alignment;

    return-void
.end method


# virtual methods
.method public final getAlignment()Landroidx/compose/ui/Alignment;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/ScaleToBoundsImpl;->alignment:Landroidx/compose/ui/Alignment;

    return-object p0
.end method

.method public final getContentScale()Landroidx/compose/ui/layout/ContentScale;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/ScaleToBoundsImpl;->contentScale:Landroidx/compose/ui/layout/ContentScale;

    return-object p0
.end method
