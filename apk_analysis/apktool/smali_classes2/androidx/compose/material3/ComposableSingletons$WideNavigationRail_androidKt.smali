.class public final Landroidx/compose/material3/ComposableSingletons$WideNavigationRail_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/ComposableSingletons$WideNavigationRail_androidKt;

.field private static lambda$2011757776:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/material3/ComposableSingletons$WideNavigationRail_androidKt;

    invoke-direct {v0}, Landroidx/compose/material3/ComposableSingletons$WideNavigationRail_androidKt;-><init>()V

    sput-object v0, Landroidx/compose/material3/ComposableSingletons$WideNavigationRail_androidKt;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$WideNavigationRail_androidKt;

    const/4 v0, 0x0

    sget-object v1, Landroidx/compose/material3/ComposableSingletons$WideNavigationRail_androidKt$lambda$2011757776$1;->INSTANCE:Landroidx/compose/material3/ComposableSingletons$WideNavigationRail_androidKt$lambda$2011757776$1;

    const v2, 0x77e8fcd0

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/ComposableSingletons$WideNavigationRail_androidKt;->lambda$2011757776:Lbm3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLambda$2011757776$material3()Lbm3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbm3<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/compose/material3/ComposableSingletons$WideNavigationRail_androidKt;->lambda$2011757776:Lbm3;

    return-object p0
.end method
