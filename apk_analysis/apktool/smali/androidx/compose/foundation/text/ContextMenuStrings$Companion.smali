.class public final Landroidx/compose/foundation/text/ContextMenuStrings$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/text/ContextMenuStrings;
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

    invoke-direct {p0}, Landroidx/compose/foundation/text/ContextMenuStrings$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAutofill-9Hzcbyc()I
    .locals 1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-gt p0, v0, :cond_0

    sget p0, Landroidx/compose/foundation/R$string;->androidx_compose_foundation_autofill:I

    goto :goto_0

    :cond_0
    const p0, 0x104001a

    :goto_0
    invoke-static {p0}, Landroidx/compose/foundation/text/ContextMenuStrings;->constructor-impl(I)I

    move-result p0

    return p0
.end method

.method public final getCopy-9Hzcbyc()I
    .locals 0

    const p0, 0x1040001

    invoke-static {p0}, Landroidx/compose/foundation/text/ContextMenuStrings;->constructor-impl(I)I

    move-result p0

    return p0
.end method

.method public final getCut-9Hzcbyc()I
    .locals 0

    const p0, 0x1040003

    invoke-static {p0}, Landroidx/compose/foundation/text/ContextMenuStrings;->constructor-impl(I)I

    move-result p0

    return p0
.end method

.method public final getPaste-9Hzcbyc()I
    .locals 0

    const p0, 0x104000b

    invoke-static {p0}, Landroidx/compose/foundation/text/ContextMenuStrings;->constructor-impl(I)I

    move-result p0

    return p0
.end method

.method public final getSelectAll-9Hzcbyc()I
    .locals 0

    const p0, 0x104000d

    invoke-static {p0}, Landroidx/compose/foundation/text/ContextMenuStrings;->constructor-impl(I)I

    move-result p0

    return p0
.end method
