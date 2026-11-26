.class public final Landroidx/compose/ui/graphics/Interpolatable$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/Interpolatable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/compose/ui/graphics/Interpolatable$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/graphics/Interpolatable$Companion;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/Interpolatable$Companion;-><init>()V

    sput-object v0, Landroidx/compose/ui/graphics/Interpolatable$Companion;->$$INSTANCE:Landroidx/compose/ui/graphics/Interpolatable$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final lerp(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 2

    invoke-static {p1, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/high16 v0, 0x3f000000    # 0.5f

    if-eqz p0, :cond_0

    cmpg-float p0, p3, v0

    if-gez p0, :cond_3

    goto :goto_1

    :cond_0
    instance-of p0, p1, Landroidx/compose/ui/graphics/Interpolatable;

    if-eqz p0, :cond_1

    move-object p0, p1

    check-cast p0, Landroidx/compose/ui/graphics/Interpolatable;

    invoke-interface {p0, p2, p3}, Landroidx/compose/ui/graphics/Interpolatable;->lerp(Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    instance-of v1, p2, Landroidx/compose/ui/graphics/Interpolatable;

    if-eqz v1, :cond_2

    move-object p0, p2

    check-cast p0, Landroidx/compose/ui/graphics/Interpolatable;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p3

    invoke-interface {p0, p1, v1}, Landroidx/compose/ui/graphics/Interpolatable;->lerp(Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object p0

    :cond_2
    if-nez p0, :cond_4

    cmpg-float p0, p3, v0

    if-gez p0, :cond_3

    :goto_1
    return-object p1

    :cond_3
    return-object p2

    :cond_4
    return-object p0
.end method
