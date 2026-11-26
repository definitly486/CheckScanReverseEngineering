.class public final Landroidx/compose/ui/UiMediaScope$Posture;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/UiMediaScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Posture"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/UiMediaScope$Posture$Companion;
    }
.end annotation


# static fields
.field private static final Book:Ljava/lang/String;

.field public static final Companion:Landroidx/compose/ui/UiMediaScope$Posture$Companion;

.field private static final Flat:Ljava/lang/String;

.field private static final Tabletop:Ljava/lang/String;


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/UiMediaScope$Posture$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/UiMediaScope$Posture$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/compose/ui/UiMediaScope$Posture;->Companion:Landroidx/compose/ui/UiMediaScope$Posture$Companion;

    const-string v0, "Flat"

    invoke-static {v0}, Landroidx/compose/ui/UiMediaScope$Posture;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/UiMediaScope$Posture;->Flat:Ljava/lang/String;

    const-string v0, "Tabletop"

    invoke-static {v0}, Landroidx/compose/ui/UiMediaScope$Posture;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/UiMediaScope$Posture;->Tabletop:Ljava/lang/String;

    const-string v0, "Book"

    invoke-static {v0}, Landroidx/compose/ui/UiMediaScope$Posture;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/UiMediaScope$Posture;->Book:Ljava/lang/String;

    return-void
.end method

.method private synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/UiMediaScope$Posture;->description:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getBook$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/compose/ui/UiMediaScope$Posture;->Book:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getFlat$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/compose/ui/UiMediaScope$Posture;->Flat:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTabletop$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/compose/ui/UiMediaScope$Posture;->Tabletop:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic box-impl(Ljava/lang/String;)Landroidx/compose/ui/UiMediaScope$Posture;
    .locals 1

    new-instance v0, Landroidx/compose/ui/UiMediaScope$Posture;

    invoke-direct {v0, p0}, Landroidx/compose/ui/UiMediaScope$Posture;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static constructor-impl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method public static equals-impl(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/ui/UiMediaScope$Posture;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/ui/UiMediaScope$Posture;

    invoke-virtual {p1}, Landroidx/compose/ui/UiMediaScope$Posture;->unbox-impl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static hashCode-impl(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public static toString-impl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/UiMediaScope$Posture;->description:Ljava/lang/String;

    invoke-static {p0, p1}, Landroidx/compose/ui/UiMediaScope$Posture;->equals-impl(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/UiMediaScope$Posture;->description:Ljava/lang/String;

    invoke-static {p0}, Landroidx/compose/ui/UiMediaScope$Posture;->hashCode-impl(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/UiMediaScope$Posture;->description:Ljava/lang/String;

    invoke-static {p0}, Landroidx/compose/ui/UiMediaScope$Posture;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/UiMediaScope$Posture;->description:Ljava/lang/String;

    return-object p0
.end method
