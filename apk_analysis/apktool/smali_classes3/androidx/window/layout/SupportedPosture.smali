.class public final Landroidx/window/layout/SupportedPosture;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/layout/SupportedPosture$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/window/layout/SupportedPosture$Companion;

.field public static final TABLETOP:Landroidx/window/layout/SupportedPosture;


# instance fields
.field private final rawValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/layout/SupportedPosture$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/layout/SupportedPosture$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/window/layout/SupportedPosture;->Companion:Landroidx/window/layout/SupportedPosture$Companion;

    new-instance v0, Landroidx/window/layout/SupportedPosture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/layout/SupportedPosture;-><init>(I)V

    sput-object v0, Landroidx/window/layout/SupportedPosture;->TABLETOP:Landroidx/window/layout/SupportedPosture;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/window/layout/SupportedPosture;->rawValue:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/window/layout/SupportedPosture;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Landroidx/window/layout/SupportedPosture;

    iget p0, p0, Landroidx/window/layout/SupportedPosture;->rawValue:I

    iget p1, p1, Landroidx/window/layout/SupportedPosture;->rawValue:I

    if-ne p0, p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Landroidx/window/layout/SupportedPosture;->rawValue:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/window/layout/SupportedPosture;->TABLETOP:Landroidx/window/layout/SupportedPosture;

    invoke-virtual {p0, v0}, Landroidx/window/layout/SupportedPosture;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "TABLETOP"

    return-object p0

    :cond_0
    const-string p0, "UNKNOWN"

    return-object p0
.end method
