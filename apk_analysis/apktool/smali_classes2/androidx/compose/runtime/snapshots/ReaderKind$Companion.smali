.class public final Landroidx/compose/runtime/snapshots/ReaderKind$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/snapshots/ReaderKind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/ReaderKind$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getComposition-6f8NoZ8()I
    .locals 0

    const/4 p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/ReaderKind;->constructor-impl(I)I

    move-result p0

    return p0
.end method

.method public final getSnapshotStateObserver-6f8NoZ8()I
    .locals 0

    const/4 p0, 0x2

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/ReaderKind;->constructor-impl(I)I

    move-result p0

    return p0
.end method
