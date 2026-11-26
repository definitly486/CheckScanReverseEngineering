.class public final Landroidx/compose/foundation/content/TransferableContent$Source;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/content/TransferableContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/content/TransferableContent$Source$Companion;
    }
.end annotation


# static fields
.field private static final Clipboard:I

.field public static final Companion:Landroidx/compose/foundation/content/TransferableContent$Source$Companion;

.field private static final DragAndDrop:I

.field private static final Keyboard:I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/content/TransferableContent$Source$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/content/TransferableContent$Source$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/compose/foundation/content/TransferableContent$Source;->Companion:Landroidx/compose/foundation/content/TransferableContent$Source$Companion;

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/foundation/content/TransferableContent$Source;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/foundation/content/TransferableContent$Source;->Keyboard:I

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/compose/foundation/content/TransferableContent$Source;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/foundation/content/TransferableContent$Source;->DragAndDrop:I

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/compose/foundation/content/TransferableContent$Source;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/foundation/content/TransferableContent$Source;->Clipboard:I

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/content/TransferableContent$Source;->value:I

    return-void
.end method

.method public static final synthetic access$getClipboard$cp()I
    .locals 1

    sget v0, Landroidx/compose/foundation/content/TransferableContent$Source;->Clipboard:I

    return v0
.end method

.method public static final synthetic access$getDragAndDrop$cp()I
    .locals 1

    sget v0, Landroidx/compose/foundation/content/TransferableContent$Source;->DragAndDrop:I

    return v0
.end method

.method public static final synthetic access$getKeyboard$cp()I
    .locals 1

    sget v0, Landroidx/compose/foundation/content/TransferableContent$Source;->Keyboard:I

    return v0
.end method

.method public static final synthetic box-impl(I)Landroidx/compose/foundation/content/TransferableContent$Source;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/content/TransferableContent$Source;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/content/TransferableContent$Source;-><init>(I)V

    return-object v0
.end method

.method public static constructor-impl(I)I
    .locals 0

    return p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/foundation/content/TransferableContent$Source;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/foundation/content/TransferableContent$Source;

    invoke-virtual {p1}, Landroidx/compose/foundation/content/TransferableContent$Source;->unbox-impl()I

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(II)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static hashCode-impl(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public static toString-impl(I)Ljava/lang/String;
    .locals 2

    sget v0, Landroidx/compose/foundation/content/TransferableContent$Source;->Keyboard:I

    invoke-static {p0, v0}, Landroidx/compose/foundation/content/TransferableContent$Source;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Source.Keyboard"

    return-object p0

    :cond_0
    sget v0, Landroidx/compose/foundation/content/TransferableContent$Source;->DragAndDrop:I

    invoke-static {p0, v0}, Landroidx/compose/foundation/content/TransferableContent$Source;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Source.DragAndDrop"

    return-object p0

    :cond_1
    sget v0, Landroidx/compose/foundation/content/TransferableContent$Source;->Clipboard:I

    invoke-static {p0, v0}, Landroidx/compose/foundation/content/TransferableContent$Source;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Source.Clipboard"

    return-object p0

    :cond_2
    const-string v0, "Invalid ("

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lqz0;->d(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/content/TransferableContent$Source;->value:I

    invoke-static {p0, p1}, Landroidx/compose/foundation/content/TransferableContent$Source;->equals-impl(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/content/TransferableContent$Source;->value:I

    invoke-static {p0}, Landroidx/compose/foundation/content/TransferableContent$Source;->hashCode-impl(I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/content/TransferableContent$Source;->value:I

    invoke-static {p0}, Landroidx/compose/foundation/content/TransferableContent$Source;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/content/TransferableContent$Source;->value:I

    return p0
.end method
