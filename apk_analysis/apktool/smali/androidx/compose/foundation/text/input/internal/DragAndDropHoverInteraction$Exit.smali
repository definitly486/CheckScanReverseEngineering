.class public final Landroidx/compose/foundation/text/input/internal/DragAndDropHoverInteraction$Exit;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/text/input/internal/DragAndDropHoverInteraction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/text/input/internal/DragAndDropHoverInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Exit"
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final enter:Landroidx/compose/foundation/text/input/internal/DragAndDropHoverInteraction$Enter;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/input/internal/DragAndDropHoverInteraction$Enter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/DragAndDropHoverInteraction$Exit;->enter:Landroidx/compose/foundation/text/input/internal/DragAndDropHoverInteraction$Enter;

    return-void
.end method


# virtual methods
.method public final getEnter()Landroidx/compose/foundation/text/input/internal/DragAndDropHoverInteraction$Enter;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/DragAndDropHoverInteraction$Exit;->enter:Landroidx/compose/foundation/text/input/internal/DragAndDropHoverInteraction$Enter;

    return-object p0
.end method
