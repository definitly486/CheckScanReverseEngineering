.class public final Landroidx/window/embedding/OverlayCreateParams$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/OverlayCreateParams;
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

    invoke-direct {p0}, Landroidx/window/embedding/OverlayCreateParams$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final generateOverlayTag()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ly74;

    const/4 v1, 0x0

    const/16 v2, 0x20

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lw74;-><init>(III)V

    iget v0, v0, Lw74;->c:I

    add-int/2addr v0, v3

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
