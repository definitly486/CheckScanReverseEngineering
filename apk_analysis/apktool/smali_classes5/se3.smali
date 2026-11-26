.class public final synthetic Lse3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-wide/16 v2, 0x1

    const-wide/32 v4, 0x7fffffff

    const-wide/16 v0, 0x10

    const-string v6, "kotlinx.coroutines.flow.defaultConcurrency"

    invoke-static/range {v0 .. v6}, Lr96;->d(JJJLjava/lang/String;)J

    return-void
.end method

.method public static final a(Lhd3;Lbm3;)Lj91;
    .locals 6

    new-instance v1, Lre3;

    const/4 v0, 0x0

    invoke-direct {v1, p1, v0}, Lre3;-><init>(Lbm3;Le02;)V

    new-instance v0, Lj91;

    const/4 v4, -0x2

    sget-object v5, Lcu0;->SUSPEND:Lcu0;

    sget-object v3, Lgx2;->b:Lgx2;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lj91;-><init>(Ldm3;Lhd3;Lo22;ILcu0;)V

    return-object v0
.end method
