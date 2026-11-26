.class public abstract Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration$Companion;
    }
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;->Companion:Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getReceiveContentListener()Landroidx/compose/foundation/content/ReceiveContentListener;
.end method

.method public final onCommitContent(Landroidx/compose/foundation/content/TransferableContent;)Z
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;->getReceiveContentListener()Landroidx/compose/foundation/content/ReceiveContentListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/compose/foundation/content/ReceiveContentListener;->onReceive(Landroidx/compose/foundation/content/TransferableContent;)Landroidx/compose/foundation/content/TransferableContent;

    move-result-object p0

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
