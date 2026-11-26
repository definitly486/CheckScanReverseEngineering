.class public final Landroidx/compose/material3/internal/PredictiveBack;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/material3/internal/PredictiveBack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/internal/PredictiveBack;

    invoke-direct {v0}, Landroidx/compose/material3/internal/PredictiveBack;-><init>()V

    sput-object v0, Landroidx/compose/material3/internal/PredictiveBack;->INSTANCE:Landroidx/compose/material3/internal/PredictiveBack;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final transform$material3(F)F
    .locals 0

    invoke-static {}, Landroidx/compose/material3/internal/BackHandlerKt;->access$getPredictiveBackEasing$p()Landroidx/compose/animation/core/Easing;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/compose/animation/core/Easing;->transform(F)F

    move-result p0

    return p0
.end method
