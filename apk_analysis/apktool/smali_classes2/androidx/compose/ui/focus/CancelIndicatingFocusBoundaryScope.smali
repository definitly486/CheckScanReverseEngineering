.class public final Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/focus/FocusEnterExitScope;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private isCanceled:Z

.field private final requestedFocusDirection:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;->requestedFocusDirection:I

    return-void
.end method

.method public synthetic constructor <init>(ILjh2;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;-><init>(I)V

    return-void
.end method


# virtual methods
.method public cancelFocusChange()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;->isCanceled:Z

    return-void
.end method

.method public getRequestedFocusDirection-dhqQ-8s()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;->requestedFocusDirection:I

    return p0
.end method

.method public final isCanceled()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;->isCanceled:Z

    return p0
.end method
