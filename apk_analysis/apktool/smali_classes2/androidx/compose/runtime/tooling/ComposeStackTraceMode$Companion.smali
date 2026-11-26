.class public final Landroidx/compose/runtime/tooling/ComposeStackTraceMode$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/tooling/ComposeStackTraceMode;
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

    invoke-direct {p0}, Landroidx/compose/runtime/tooling/ComposeStackTraceMode$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAuto-MD5MrJc()I
    .locals 1

    invoke-static {}, Landroidx/compose/runtime/tooling/ComposeStackTraceMode;->access$isMinified$cp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/tooling/ComposeStackTraceMode$Companion;->getGroupKeys-MD5MrJc()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/tooling/ComposeStackTraceMode$Companion;->getNone-MD5MrJc()I

    move-result p0

    return p0
.end method

.method public final getGroupKeys-MD5MrJc()I
    .locals 0

    invoke-static {}, Landroidx/compose/runtime/tooling/ComposeStackTraceMode;->access$getGroupKeys$cp()I

    move-result p0

    return p0
.end method

.method public final getNone-MD5MrJc()I
    .locals 0

    invoke-static {}, Landroidx/compose/runtime/tooling/ComposeStackTraceMode;->access$getNone$cp()I

    move-result p0

    return p0
.end method

.method public final getSourceInformation-MD5MrJc()I
    .locals 0

    invoke-static {}, Landroidx/compose/runtime/tooling/ComposeStackTraceMode;->access$getSourceInformation$cp()I

    move-result p0

    return p0
.end method
