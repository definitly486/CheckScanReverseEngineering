.class public interface abstract Landroidx/compose/ui/platform/AccessibilityManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/AccessibilityManager$DefaultImpls;
    }
.end annotation


# direct methods
.method public static synthetic calculateRecommendedTimeoutMillis$default(Landroidx/compose/ui/platform/AccessibilityManager;JZZZILjava/lang/Object;)J
    .locals 1

    if-nez p7, :cond_3

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move p3, v0

    :cond_0
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_1

    move p4, v0

    :cond_1
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_2

    move p5, v0

    :cond_2
    invoke-interface/range {p0 .. p5}, Landroidx/compose/ui/platform/AccessibilityManager;->calculateRecommendedTimeoutMillis(JZZZ)J

    move-result-wide p0

    return-wide p0

    :cond_3
    const-string p0, "Super calls with default arguments not supported in this target, function: calculateRecommendedTimeoutMillis"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method


# virtual methods
.method public abstract calculateRecommendedTimeoutMillis(JZZZ)J
.end method
