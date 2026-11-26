.class public final Landroidx/compose/foundation/CombinedClickableNode$DoubleKeyClickState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/CombinedClickableNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DoubleKeyClickState"
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private doubleTapMinTimeMillisElapsed:Z

.field private final job:Lmb4;


# direct methods
.method public constructor <init>(Lmb4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/CombinedClickableNode$DoubleKeyClickState;->job:Lmb4;

    return-void
.end method


# virtual methods
.method public final getDoubleTapMinTimeMillisElapsed()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/CombinedClickableNode$DoubleKeyClickState;->doubleTapMinTimeMillisElapsed:Z

    return p0
.end method

.method public final getJob()Lmb4;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/CombinedClickableNode$DoubleKeyClickState;->job:Lmb4;

    return-object p0
.end method

.method public final setDoubleTapMinTimeMillisElapsed(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/CombinedClickableNode$DoubleKeyClickState;->doubleTapMinTimeMillisElapsed:Z

    return-void
.end method
