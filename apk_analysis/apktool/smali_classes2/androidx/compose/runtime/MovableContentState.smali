.class public final Landroidx/compose/runtime/MovableContentState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I


# instance fields
.field private final slotStorage:Landroidx/compose/runtime/SlotStorage;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/SlotStorage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/MovableContentState;->slotStorage:Landroidx/compose/runtime/SlotStorage;

    return-void
.end method


# virtual methods
.method public final dispose$runtime()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/MovableContentState;->slotStorage:Landroidx/compose/runtime/SlotStorage;

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotStorage;->dispose()V

    return-void
.end method

.method public final getSlotStorage$runtime()Landroidx/compose/runtime/SlotStorage;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/MovableContentState;->slotStorage:Landroidx/compose/runtime/SlotStorage;

    return-object p0
.end method
