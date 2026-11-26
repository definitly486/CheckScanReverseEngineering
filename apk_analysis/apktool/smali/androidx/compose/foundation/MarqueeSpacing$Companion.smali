.class public final Landroidx/compose/foundation/MarqueeSpacing$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/MarqueeSpacing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/compose/foundation/MarqueeSpacing$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/MarqueeSpacing$Companion;

    invoke-direct {v0}, Landroidx/compose/foundation/MarqueeSpacing$Companion;-><init>()V

    sput-object v0, Landroidx/compose/foundation/MarqueeSpacing$Companion;->$$INSTANCE:Landroidx/compose/foundation/MarqueeSpacing$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(FLandroidx/compose/ui/unit/Density;II)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/MarqueeSpacing$Companion;->fractionOfContainer$lambda$0(FLandroidx/compose/ui/unit/Density;II)I

    move-result p0

    return p0
.end method

.method private static final fractionOfContainer$lambda$0(FLandroidx/compose/ui/unit/Density;II)I
    .locals 0

    int-to-float p1, p3

    mul-float/2addr p0, p1

    invoke-static {p0}, Lw65;->b(F)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final fractionOfContainer(F)Landroidx/compose/foundation/MarqueeSpacing;
    .locals 0

    new-instance p0, Lh15;

    invoke-direct {p0, p1}, Lh15;-><init>(F)V

    return-object p0
.end method
