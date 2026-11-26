.class public final synthetic Lho7;
.super Lqm3;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqm3;",
        "Lbm3<",
        "Ljava/lang/Long;",
        "Lko7;",
        "Lko7;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lho7;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lho7;

    const-string v4, "createSegment(JLkotlinx/coroutines/sync/SemaphoreSegment;)Lkotlinx/coroutines/sync/SemaphoreSegment;"

    const/4 v5, 0x1

    const/4 v1, 0x2

    const-class v2, Ljo7;

    const-string v3, "createSegment"

    invoke-direct/range {v0 .. v5}, Lqm3;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lho7;->c:Lho7;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    check-cast p2, Lko7;

    sget v0, Ljo7;->a:I

    new-instance v0, Lko7;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lko7;-><init>(JLko7;I)V

    return-object v0
.end method
